class CrewMembersController < ApplicationController
  def new
    @crew_member = CrewMember.new
    @crew_member.build_starship
  end

  def create
    @crew_member = CrewMember.new(crew_member_params)
    respond_to do |format|
      if @crew_member.save
        @starship = @crew_member.starship
        format.html { redirect_to @starship,
          notice: 'Crew Member was successfully created.' }
        format.json { render :show, status: :created, location: @starship }
      else
        format.html { render :new }
        format.json { render json: @crew_member.errors, status:
          :unprocessable_entity }
      end
    end
  end

  private

  def crew_member_params
    params.require(:crew_member).permit(:name, :division, :starship_id, starship_attributes: [:name, :id])
  end
end
