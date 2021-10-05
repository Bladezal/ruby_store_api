class CompaniesController < ApplicationController
    def index
        @companies = Company.all
    end

    def show
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.new(company_params)

        if @company.save
            @company
        else
            render json: @company.errors, status: :unprocessable_entity
        end
    end

    def edit
        @company = Company.find(params[:id])
    end

    def update
        @company = Company.find(params[:id])

        if @company.update(company_params)
            @company
        else
            render json: @company.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @company = Company.find(params[:id])
        @company.destroy
    end
    
    private
        def company_params
            params.require(:company).permit(:name)
        end
end
