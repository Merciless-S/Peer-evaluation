class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @teams = @project.teams
    @team = nil
    #find the team of current user
    @teams.each do |t|
      if t.users.exists?(id: current_user.id)
        @team = t
        break
      end
    end
    if(@team != nil)
      #access all team member
      @team_member = @team.users.all
      #@comments = @team.comments
      #exclude user himself
      @teammates = []
      @team_member.each do |person|
        if person.id != current_user.id and not @team.comments.exists?(to_user: person.id, from_user: current_user.id)
          @teammates.push(person)
        end
      end
    end
  end
end
