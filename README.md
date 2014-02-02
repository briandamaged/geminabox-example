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
server to your gem command's source list until after
you upload at least one gem.  So, let's configure the
"gem inabox" command to point to our server:

    $ gem inabox -c
    Enter the root url for your personal geminabox instance (e.g. http://gems/).
    Host:  http://localhost:9292

Next, we'll download a gem from http://rubygems.org
and upload it to our server:

    $ wget http://rubygems.org/downloads/logbert-0.6.17.gem
    $ gem inabox logbert-0.6.17.gem

Now that the geminabox server is hosting at least one
gem, we can add the server to our gem command's source
list:

    $ gem sources -a http://localhost:9292/

Ta daa!