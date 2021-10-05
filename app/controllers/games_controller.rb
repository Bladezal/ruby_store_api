class GamesController < ApplicationController
    def index
        @games = Game.all
    end

    def show
        @game = Game.find(params[:id])
    end

    def new
        @game = Game.new
    end

    def create
        @platform = Platform.find(params[:game][:platform_id])
        @game = @platform.games.create(game_params)

        if @game.save
            @game
        else
            render json: @game.errors, status: :unprocessable_entity
        end
    end

    def edit
        @game = Game.find(params[:id])
    end

    def update
        @platform = Platform.find(params[:game][:platform_id])
        @game = @platform.games.create(game_params)

        if @game.update(game_params)
            @game
        else
            render json: @game.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @game = Game.find(params[:id])
        @game.destroy
    end
    
    private
        def game_params
            params.require(:game).permit(:name, :price, :description)
        end
end
