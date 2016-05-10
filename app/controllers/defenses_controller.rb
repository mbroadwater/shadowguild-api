class DefensesController < BaseController

  def show
    defense = Defense.find(params[:id])
    response = DefenseSerializer.new(defense)
    render(json: response)
  end

  def index
    defenses = Defense.all

    render(
      json: ActiveModel::ArraySerializer.new(
        defenses,
        each_serializer: DefenseSerializer,
        root: 'users',
      )
    )
  end
end
