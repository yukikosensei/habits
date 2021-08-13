class RecordsController < ApplicationController
  def create
    Habit.find_each do |habit|
      Record.create(habit: habit, done: false)
    end
    redirect_to root_path
  end

  def update
    record = Record.find(params[:id])
    if record.done
      record.update(done: false)
    else
      record.update(done: true)
    end
    redirect_to root_path
  end

  private

  def record_params
    params.require(:record).permit(
      :done
    )
  end
end