class CharacterDetailController < BaseController

  def show
    char_detail = CharacterDetail.find(params[:id])
    response = CharacterDetailSerializer.new(char_detail)
    render(json: response)
  end

  def index
    char_details = CharacterDetail.all

    render(
      json: ActiveModel::CharacterDetailSerializer.new(
        char_details,
        each_serializer: CharacterDetailSerializer,
        root: 'users',
      )
    )
  end
end
