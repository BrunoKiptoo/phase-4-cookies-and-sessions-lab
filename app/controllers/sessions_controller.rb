class SessionsController < ApplicationController
  def index
    session[:page_views] ||= 0
    session[:page_views] += 1

    if session[:page_views] < 3
      render json: { article: article_data }
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  private

  def article_data
    # logic to retrieve article data based on params[:id]
  end
end
