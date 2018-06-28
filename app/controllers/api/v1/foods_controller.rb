class Api::V1::FoodsController < ApiController
  def index
    foods = Food.all
    render json: foods
  end

  def show
    food = Food.find(params[:id])
    render json: food
  rescue
    render status: 404, json: {}
  end

  def create
    food = Food.new(food_params)
    if food.save
      render json: food
    else
      render status:400, json: {}
    end
  end

  def update
    food = Food.find(params[:id])
    food.update(food_params)
    render json: food
  rescue
    render status: 400, json:{}
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    render json: food, status: 204
  rescue
    render status: 404, json: {}
  end

  private
    def food_params
      params.require(:food).permit(:name, :calories)
    end
end
