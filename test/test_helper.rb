ENV['RAILS_ENGV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_helper'
require 'support/test_case'

class ActiveSupport::TestCase
  fixtures :all
end