class TestimonialsController < ApplicationController

  def index
    @testimonials = Testimonial.all
  end

  def new
    @testimonial = Testimonial.new
  end

  def show
    @testimonial = Testimonial.find(params[:id])
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.save
      redirect_to @testimonial
    else
      render 'new'
    end
  end

  before_action :authorize, only: :destroy

  def destroy
    Testimonial.find(params[:id]).destroy
    redirect_to testimonials_url
  end

  private

  def testimonial_params
    params.require(:testimonial).permit(:user_name, :feedback)
  end

end