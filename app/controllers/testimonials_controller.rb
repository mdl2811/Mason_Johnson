class TestimonialsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_testimonial, except: [:index, :new, :create]

  def index
    @testimonials = Testimonial.where(user_id: current_user.id)
    @user = current_user
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonials_params)
    @testimonial.user_id = current_user.id
    @testimonial.name = current_user.name
    if @testimonial.save
      redirect_to testimonials_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @testimonial.update(testimonials_params)
      redirect_to testimonials_path
    else
      render :edit
    end
  end

  def destroy
    @testimonial.destroy
    redirect_to testimonials_path
  end

  private
  def set_testimonial

    @testimonial = Testimonial.find(params[:id])
  end

  def testimonials_params
    params.require(:testimonial).permit(:title, :body, :rating, :location)
  end
end
