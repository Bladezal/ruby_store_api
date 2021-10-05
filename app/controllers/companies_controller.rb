class CompaniesController < ApplicationController
    def index
        @companies = Company.all
        render json: @companies
        
    end

    def show
        @company = Company.find(params[:id])
        render json: @company
    end

    def create
        @company = Company.new(company_params)

        if @company.save
            render json: @company
        else
            render json: @company.errors, status: :unprocessable_entity
        end
    end

    def update
        @company = Company.find(params[:id])

        if @company.update(company_params)
            render json: @company
        else
            render json: @company.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @company = Company.find(params[:id])
        @company.destroy
        render json: @company
    end
    
    private
        def company_params
            params.require(:company).permit(:name)
        end
end
