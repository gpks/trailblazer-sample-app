class Thing::Cell < Cell::Concept
  property :name
  property :created_at

  include Gemgem::Cell::CreatedAt

  def show
    render
  end

  private

  def name_link
    link_to model.name, thing_path(model)
  end
end