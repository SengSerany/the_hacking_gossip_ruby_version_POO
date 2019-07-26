require 'bundler'
Bundler.require

require_relative "lib/gossip"
require_relative "lib/view"
require_relative "lib/controller"
require_relative "lib/router"

Router.new.perform