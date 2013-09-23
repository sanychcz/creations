class WelcomeController < ApplicationController
  def index
    @works = Work.latest
  end
end
