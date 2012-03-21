Json pretty printer in hot cocoa.
====================

#what it does
you can paste/type in json, and this'll pretty print it.

currently doesn't do ⌘V pasting, you'll have to right/control click to paste.

# how to run it

```bash
  rvm install macruby
  rvm use --create macruby@my_json_gemset
  gem install bundler
  gem install hotcocoa # I had a problem installing this w/ bundler
  bundle
  rake run
```
# where to look

the meat is in `lib/application.rb`

#maintaining
This is a demo app I've been using to learn more about MacRuby and HotCocoa. It probably will be updated only infrequently.

#references
* http://www.macruby.org/hotcocoa/getting_started.html
* http://www.macruby.org/trac/wiki/HotCocoaResources
* https://github.com/HotCocoa/hotcocoa/tree/master/lib/hotcocoa/mappings/ -- handy for guessing the DSL names & their args
* NSString != String -- http://www.macruby.org/trac/ticket/726 http://www.macruby.org/trac/ticket/1310

## apple dev references ( I don't know cococa-fu)

* https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/ApplicationKit/Classes/NSTextField_Class/Reference/Reference.html
* https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/ApplicationKit/Classes/nsbutton_Class/Reference/Reference.html
* https://developer.apple.com/library/ios/#DOCUMENTATION/UIKit/Reference/UILabel_Class/Reference/UILabel.html

