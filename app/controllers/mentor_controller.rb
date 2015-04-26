class MentorController < ApplicationController
  def index
  end

  before_action :authorize
end