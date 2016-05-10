class SkillSpecialtiesController < BaseController
  def show
    skill_specialty = SkillSpecialty.find(params[:id])
    response = SkillSpecialtySerializer.new(active_skill)
    render(json: response)
  end
end
