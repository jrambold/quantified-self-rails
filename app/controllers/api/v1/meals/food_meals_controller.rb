class Api::V1::Meals::FoodMealsController < ApiController
  def create
    food = Food.find(params[:id])
    meal = Meal.find(params[:meal_id])
    FoodMeal.create(food: food, meal: meal)
    render json: {"message": "Successfully added #{food.name} to #{meal.name}"}, status: 201
  rescue
    render status: 404, json: {}
  end

  def destroy
    food = Food.find(params[:id])
    meal = Meal.find(params[:id])
    food_meal = meal.food_meals.find_by(food: food.id)
    food_meal.destroy
    render json: {"message": "Successfully removed #{food.name} from #{meal.name}"}
  rescue
    render status: 404, json: {}
  end
end
