geminabox-example
=============================

This repository demonstrates a minimalistic setup
of a geminabox server.


Setup
-----------------------------

Begin by cloning this repository and running the
"bundle" command to install the dependencies that
are specified in the Gemfile:

    $ git clone git@github.com:briandamaged/geminabox-example.git
    $ cd geminabox-example/
    $ bundle

Congratulations!  You just installed geminabox!
Now launch the server by running the "rackup" command:

    $ bundle exec rackup

Due to a quirk in geminabox, you cannot register this
server to your "gem" command's source list until after
you upload at least one gem.  So, let's configure the
"gem inabox" command to point to our server:

    $ gem inabox -c
    Enter the root url for your personal geminabox instance (e.g. http://gems/).
    Host:  http://localhost:9292

Next, we'll download a gem from https://rubygems.org
and upload it to our server:

    $ wget https://rubygems.org/downloads/logbert-0.6.17.gem
    $ gem inabox logbert-0.6.17.gem

By uploading this gem, we have forced the server to
build its gem indexes.  Now it will be possible to
register this server in our "gem" command's source list.
Let's do that:

    $ gem sources -a http://localhost:9292/

Aaaaaaand we're done!


Now what?
-----------------------------

At this point, the "gem" command knows how to talk to
our server.  Gems can be published to the server using
the "gem inabox" command:

    $ gem inabox holdon-0.1.1.gem

The "gem" command will download gems from our server
automatically.  That is, if the "gem" command is unable
to find a gem on https://rubygems.org, then it will
search for the gem on our server:

    $ gem install holdon
 