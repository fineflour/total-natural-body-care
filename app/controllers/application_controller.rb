class ApplicationController < ActionController::Base
#  protect_from_forgery 
#  before_action :authenticate_user!
  helper_method :mobile?
  protect_from_forgery with: :exception
  private

  def mobile? # has to be in here because it has access to "request"
    request.user_agent =~ /\b(Android|iPhone|iPad|Windows Phone|Opera Mobi|Kindle|BackBerry|PlayBook)\b/i
  end
end

def menu_values(id)
  menu_values ||= YAML.load((File.open("#{Rails.root}/config/menues.yml", 'r')))
  if(id)
    if (menu_values[0]['id'] = id)
      menu_values
    end 
  end
end
