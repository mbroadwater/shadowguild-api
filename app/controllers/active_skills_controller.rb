class ActiveSkillsController < BaseController

  def show
    active_skill = ActiveSkill.find(params[:id])
    response = ActiveSkillSerializer.new(active_skill)
    render(json: response)
  end

  def index
    active_skills = ActiveSkill.all

    render(
      json: ActiveModel::ArraySerializer.new(
        active_skills,
        each_serializer: ActiveSkillSerializer,
        root: 'users',
      )
    )
  end
end
