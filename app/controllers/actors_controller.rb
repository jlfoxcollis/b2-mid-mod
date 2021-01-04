class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]
  # GET /actors/1
  # GET /actors/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

end
