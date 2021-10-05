class PlatformsController < ApplicationController
    def index
        @platforms = Platform.all
        render json: @platforms
    end

    def show
        @platform = Platform.find(params[:id])
        render json: @platform
    end

    def create
        @platform = Platform.new(platform_params)

        if @platform.save
            render json: @platform
        else
            render json: @platform.errors, status: :unprocessable_entity
        end
    end

    def update
        @platform = Platform.find(params[:id])

        if @platform.update(platform_params)
            render json: @platform
        else
            render json: @platform.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @platform = Platform.find(params[:id])
        @platform.destroy
        render json: @platform
    end
    
    private
        def platform_params
            params.require(:platform).permit(:name)
        end
end
