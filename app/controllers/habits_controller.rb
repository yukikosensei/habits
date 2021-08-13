# frozen_string_literal: true

class HabitsController < ApplicationController
  before_action :set_habit, only: [:edit, :update, :destroy]
  has_many :records
  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.create(habit_params)
    redirect_to root_path
  end

  def edit; end

  def update
    @habit.update(habit_params)
    redirect_to root_path
  end

  def destroy
    @habit.destroy
    redirect_to root_path
  end

  def show
  end

  private

  def habit_params
    params.require(:habit).permit(
      :name
    )
  end

  def set_habit
    @habit = Habit.find(params[:id])
  end
end
