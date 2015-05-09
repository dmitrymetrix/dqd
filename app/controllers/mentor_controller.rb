class MentorController < ApplicationController
  def index
    @mentor = Mentor.find_by(id: session[:mentor_id])
    @courses = @mentor.courses
  end

  before_action :authorize
end