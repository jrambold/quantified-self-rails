class Api::V1::MealsController < ApiController
  def index
    meals = Meal.all
    render json: meals
  end

  def show
    meal = Meal.find(params[:meal_id])
    render json: meal
  rescue
    render status: 404, json: {}
  end
end
