class Application < ApplicationRecord
  belongs_to :user
  belongs_to :job_offer

  after_create :notify_adm

  private

  def notify_adm
    # Aquí puedes implementar la lógica para notificar al adm, por ejemplo, enviar un correo.
  end
end
