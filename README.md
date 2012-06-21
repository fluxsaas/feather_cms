# About this fork
 Convert this awsome gem to an mountable engine

# Motivation
 We have felt the pain of integrating static pages into a Rails application. There are plenty of gems available for this (Radiant, Locomotiv, etc.) but they are very heavy for what we need.

So, we built FeatherCMS. As the name suggests, its a Do-It-Yourself, lightweight CMS - just pages, caching and nothing more!

# Usage
Add the gem to your Gemfile

    gem 'feather_cms', git: https://github.com/fluxsaas/feather_cms.git

Add the routes:
  mount FeatherCms::Engine => "/feather_cms"

Install the migrations && migrate
  rake feather_cms:install:migrations
  rake db:migrate

Restart the server && go to
  open http://0.0.0.0:3000/feather_cms/pages

Now, generate the pages 

    # this fork only uses pages from DB

# TODO

* lot of stuff
    
# Contribute
Fork away and send me pull requests!

# License 
The MIT license
