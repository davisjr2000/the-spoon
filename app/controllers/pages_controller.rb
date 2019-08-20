class PagesController < ApplicationController
  def home
    @user = ["Davis", "Neto"].sample
  end
end
