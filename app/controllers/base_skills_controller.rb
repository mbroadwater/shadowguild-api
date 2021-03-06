class BaseSkillsController < BaseController

  def show
    base_skill = BaseSkill.find(params[:id])
    response = BaseSkillSerializer.new(base_skill)
    render(json: response)
  end

  def index
    if params[:skill_group]
      skill_group = SkillGroup.find(params[:skill_group])
      if skill_group.nil?
        response = "Skill group does not exist."
      else
        response = SkillGroupSerializer.new(skill_group)
        render(json: response)
      end
    else
      base_skills = BaseSkill.all

      render(
        json: ActiveModel::ArraySerializer.new(
          base_skills,
          each_serializer: BaseSkillSerializer,
          root: 'users',
        )
      )
    end
  end
end
