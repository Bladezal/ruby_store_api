class GamesController < ApplicationController
    def index
        @games = Game.all
        render json: @games
    end

    def show
        @game = Game.find(params[:id])
        render json: @game
    end

    def create
        @platform = Platform.find(params[:game][:platform_id])
        @game = @platform.games.create(game_params)

        if @game.save
            render json: @game
        else
            render json: @game.errors, status: :unprocessable_entity
        end
    end

    def update
        @platform = Platform.find(params[:game][:platform_id])
        @game = @platform.games.create(game_params)

        if @game.update(game_params)
            render json: @game
        else
            render json: @game.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @game = Game.find(params[:id])
        @game.destroy
        render json: @game
    end
    
    private
        def game_params
            params.require(:game).permit(:name, :price, :description)
        end
end
