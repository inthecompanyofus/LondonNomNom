class HomeController < ApplicationController
  def index
    @users = User.all
    @meals = Meal.all
  end
end
