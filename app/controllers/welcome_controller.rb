class WelcomeController < ApplicationController
  require 'promisepay'
  before_filter :authenticate_user!, only: :loggedin
  def index
  end

  def loggedin
    client = Promisepay::Client.new(username: ENV['PROMISEPAY_USERNAME'], token: ENV['PROMISEPAY_TOKEN'])

  end
end
