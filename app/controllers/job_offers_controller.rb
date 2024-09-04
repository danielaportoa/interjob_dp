class JobOffersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_job_offer, only: %i[show edit update destroy]
  before_action :authorize_admin!, except: %i[index show]

  def index
    @job_offers = JobOffer.where(activo: true)
  end

  def show
  end

  def new
    @job_offer = JobOffer.new
  end

  def create
    @job_offer = JobOffer.new(job_offer_params)
    if @job_offer.save
      redirect_to @job_offer, notice: 'Oferta laboral creada con éxito.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @job_offer.update(job_offer_params)
      redirect_to @job_offer, notice: 'Oferta laboral actualizada con éxito.'
    else
      render :edit
    end
  end

  def destroy
     @job_offer.destroy
    redirect_to job_offers_url, notice: 'Oferta laboral eliminada con éxito.'
  end

  private

  def set_job_offer
    @job_offer = JobOffer.find(params[:id])
  end

  def job_offer_params
    params.require(:job_offer).permit(:titulo, :descripcion, :empresa, :ubicacion, :salario, :activo)
  end

  def authorize_admin!
    redirect_to root_path, alert: 'No autorizado.' unless current_user.admin?
  end
end
