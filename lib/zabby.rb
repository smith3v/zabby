# -*- encoding: utf-8 -*-
# Author:: Farzad FARID (<ffarid@pragmatic-source.com>)
# Copyright:: Copyright (c) 2011-2012 Farzad FARID
# License:: Simplified BSD License

require 'rubygems'
require 'json'
require 'net/http'
require 'net/https'
require 'openssl'
require 'uri'
require 'pp'

require 'zabby/version'
require 'zabby/exceptions'
require 'zabby/config'
require 'zabby/zclass'
require 'zabby/connection'
require 'zabby/shell_helpers'
require 'zabby/runner'

module Zabby
  def self.init &block
    z = Zabby::Runner.instance
    z.run(&block) if block_given?
    z
  end
end
