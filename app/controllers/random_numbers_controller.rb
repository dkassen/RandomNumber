class RandomNumbersController < ApplicationController
  def show
    render json: { random_number: SecureRandom.rand(seed) }, status: :ok
  end

  private

  def seed
    params[:seed]
  end
end
