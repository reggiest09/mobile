module Api
class BaseController < ApplicationController
  respond_to :json
  before_action :default_json

  def render_json(view_name)
    render view_name, formats: [:json], 
                     handlers: [:jbuilder], 
                       status: 200
  end
  
  # Render a JSON view, or return false (if to_check is not present)
  def render_or_false(to_check, view)
    if to_check.present?
      render_json view
    else
      render json: false, status: 200
    end
  end
  
  protected

  def auth_only!
    render json: {}, status: 401 unless current_user
  end

  def default_json
    request.format = :json if params[:format].nil?
  end

  def admin_auth!
    current_user = AdminUser.find_by_authentication_token(params[:auth_token])
    if current_user.present?
      return current_user
    else
      render json: "Not logged in!", status: 401
    end
  end

end
end