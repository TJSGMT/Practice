class TeamsController < ApplicationController
before_action :find_team, only:[:edit, :show, :update, :delete]
 
  def index
    @team =Team.all
  end

  def create
    @team =Team.create(Team_params)
    if @team.save
      redirect_to teams_path
    end
  else
    redirect_to new_team_path
  end

  def new
    @team = Team.new()
  end

  def edit
  end

  def show
  end

  def update
    @team.update(team_params)
    redirect_to teams_path
  end

  def delete
    redirect_to eeams_path  
  end

  Private
  def team_params
    @team.params.require(:bank).permit(:name)
  end

  def find_team
    @team = Team.find(parmas[:id])
  end
end
