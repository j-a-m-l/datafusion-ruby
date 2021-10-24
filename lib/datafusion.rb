require 'rutie'
require_relative "datafusion/version"

module DataFusion
  class Error < StandardError; end

  Rutie.new(:datafusion_ruby).init 'init_datafusion_ruby', __dir__
end
