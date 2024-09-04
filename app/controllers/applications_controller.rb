class ApplicationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @job_offer = JobOffer.find(params[:job_offer_id])
    @application = Application.new
  end

  def create
    @job_offer = JobOffer.find(params[:job_offer_id])
    @application = @job_offer.applications.build(application_params)
    @application.user = current_user

    if @application.save
      redirect_to job_offers_path, notice: 'Postulación enviada con éxito.'
    else
      render :new
    end
  end

  private

  def application_params
    params.require(:application).permit(:mensaje)
  end
end