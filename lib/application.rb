require 'rubygems' # disable this for a deployed application
require 'hotcocoa'
require 'json/pure' # ext version has bugs

# IGNORE previously used [ \t\n\r]+, which doesn't do unicode spaces and so blew up
JSON::Pure::Parser::IGNORE                = %r(
        (?:
         //[^\n\r]*[\n\r]| # line comments
         /\*               # c-style comments
         (?:
          [^*/]|        # normal chars
          /[^*]|        # slashes that do not start a nested comment
          \*[^/]|       # asterisks that do not end this comment
          /(?=\*/)      # single slash before this comment's end
         )*
           \*/               # the End of this comment
           |\s+       # whitespaces: now with unicode support! nh
        )+
      )mx

class JsonInMyCocoa
  include HotCocoa
  def start
    application name: 'JsonInMyCocoa' do |app|
      app.delegate = self
      window frame: [100, 100, 500, 500], title: 'JsonInMyCocoa' do |win|
        text = text_field( layout: {start: false}, frame: [0, 0, 480, 300])
        win << text  
        status_text = text_field(text: 'status: ', layout: {start: false}, enabled: false, frame: [0, 0, 480, 60])
        win << status_text
        win << button(title: 'Prettify') do |b|
          b.on_action do
            begin
              rubyified = JSON.parse("#{text.stringValue}")
              text.text = JSON.pretty_generate rubyified
            rescue JSON::ParserError => e
              status_text.text = "status: #{e.message}"
            else
              status_text.text = "status: success"
            end
            
          end
        end
        win.will_close { exit }
      end
    end
  end

  # file/open
  def on_open(menu)
  end

  # file/new
  def on_new(menu)
  end

  # help menu item
  def on_help(menu)
  end

  # This is commented out, so the minimize menu item is disabled
  #def on_minimize(menu)
  #end

  # window/zoom
  def on_zoom(menu)
  end

  # window/bring_all_to_front
  def on_bring_all_to_front(menu)
  end
end

JsonInMyCocoa.new.start
