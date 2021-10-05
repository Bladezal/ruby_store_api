class PlatformsController < ApplicationController
    def index
        @platforms = Platform.all
    end

    def show
        @platform = Platform.find(params[:id])
    end

    def new
        @platform = Platform.new
    end

    def create
        @platform = Platform.new(platform_params)

        if @platform.save
            @platform
        else
            render json: @platform.errors, status: :unprocessable_entity
        end
    end

    def edit
        @platform = Platform.find(params[:id])
    end

    def update
        @platform = Platform.find(params[:id])

        if @platform.update(platform_params)
            @platform
        else
            render json: @platform.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @platform = Platform.find(params[:id])
        @platform.destroy
    end
    
    private
        def platform_params
            params.require(:platform).permit(:name)
        end
end
