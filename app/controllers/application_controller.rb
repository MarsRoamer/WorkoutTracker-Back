class ApplicationController < ActionController::API
  include Knock::Authenticable
  private
  # Define unauthorized access json response
      def unauthorized_entity(entity_name)
          render json: { error: "Unauthorized request, please provide valid credentials" }, status:     
          :unauthorized
      end
end
