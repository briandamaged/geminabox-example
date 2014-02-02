
require "geminabox"

Geminabox.data = File.absolute_path(File.join(__FILE__, "..", "data"))

run Geminabox::Server
