class ActiveSkillSerializer < ActiveModel::Serializer
  attributes :id, :value_base

  has_one :base_skill
end
