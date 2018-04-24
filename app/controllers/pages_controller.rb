class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
    binding.pry

  end
end
