# app/controllers/searches_controller.rb
class SearchesController < ApplicationController
  protect_from_forgery with: :exception

  def welcome
  end

  def search
    query = params[:query]
    if query.present?
      UserSearch.create(query: query, ip: request.remote_ip)
    end
    redirect_to dashboard_path
  end

  def dashboard
    @searches = UserSearch.order(created_at: :desc).limit(10)
  end

  def trends
    @trends = UserSearch.group(:query).order('count_id DESC').count(:id).first(10)
  end

  def reset
  end

  def perform_reset
    UserSearch.delete_all
    redirect_to root_path
  end
end
