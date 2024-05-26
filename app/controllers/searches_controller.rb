class SearchesController < ApplicationController
  def welcome
  end

  def search
    query = params[:query].strip
    ip = request.remote_ip

    # Save the search query if it's not empty
    if query.present?
      UserSearch.create(query: query, ip: ip)
    end

    # Fetch the latest searches for display
    @searches = UserSearch.order(created_at: :desc).limit(10)

    render :search
  end

  def dashboard
    @searches = UserSearch.order(created_at: :desc).limit(10)
  end

  def trends
    @trends = UserSearch.group(:query).order('count_id DESC').count(:id).limit(10)
  end

  def reset
  end

  def perform_reset
    UserSearch.delete_all
    redirect_to root_path, notice: 'Search and trends reset successfully.'
  end
end
