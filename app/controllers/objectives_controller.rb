class ObjectivesController < InheritedResources::Base

  def create
    @objective = current_user.objectives.new(objective_params)

    if @objective.save
      redirect_to(objectives_path, notice: "Your objective was created!")
    else
      flash[:error] = "Please check your entry and try again."
      render :new
    end
  end

  private

  def objective_params
    params.require(:objective).permit(
      :due_quarter,
      :due_year,
      :name,
      :user_id
    )
  end

end
