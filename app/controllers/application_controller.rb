class ApplicationController < ActionController::API
  include Knock::Authenticable

  private

  def unauthorized_entity(entity_name)
    render json: { error: "Unauthorized Access" }, status: :unauthorized
  end
end
