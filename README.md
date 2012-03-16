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
  bundle
  rake run
```
# where to look

the meat is in `lib/application.rb`

#maintaining
This is a demo app I've been using to learn more about MacRuby and HotCocoa. It probably will be updated only infrequently.