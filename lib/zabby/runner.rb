module Zabby
  class Runner
    attr_reader :config, :connection

    def initialize
      @config = Zabby::Config.new
      yield @config if block_given?

      @connection = Zabby::Connection.new
    end

    def login
      @connection.login(@config)
    end

    def logout
      @connection.logout
    end

    def logged_in?
      @connection.logged_in?
    end
  end
end