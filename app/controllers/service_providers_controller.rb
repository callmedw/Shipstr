class ServiceProvidersController < ApplicationController
  before_action :set_service_provider, only: [:show, :update, :destroy]

  # GET /service_providers
  def index
    @service_providers = ServiceProvider.all.sort

    render json: @service_providers
  end

  # GET /service_providers/1
  def show
    render json: @service_provider
  end

  # POST /service_providers
  def create
    @service_provider = ServiceProvider.new(service_provider_params)

    if @service_provider.save
      render status: 201, json: {
        message: "Service Provider has been added!"
      }
    else
      render json: @service_provider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /service_providers/1
  def update
    if @service_provider.update(service_provider_params)
      render status: 200, json: {
        message: "Service Provider has been updated!"
      }

    else
      render json: @service_provider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /service_providers/1
  def destroy
    if @service_provider.destroy
      render status: 200, json: {
        message: "Service Provider removed!"
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_provider
      @service_provider = ServiceProvider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_provider_params
      params.require(:service_provider).permit(:rate_cents, :currency, :name)
    end
end
