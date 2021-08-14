# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @habits = Habit.all
    # @records = Record.all
    # @records = Record.all.page(params[:page]).per(10)
    @pagy, @records = pagy(Record.all)
  end
end
