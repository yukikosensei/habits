class HomeController < ApplicationController
  def index
    @habits = Habit.all
    @records = Record.all
  end
end