ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/rails/capybara'
require 'minitest/pride'

module ActiveSupport
  class TestCase
    fixtures :all
    include Capybara::DSL
  end
end

def sign_in
  visit new_user_session_path
  fill_in 'Email', with: users(:elena).email
  fill_in 'Password', with: 'password'
  click_on 'Log in'
end
