class CreateApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :applications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :job_offer, null: false, foreign_key: true
      t.text :mensaje

      t.timestamps
    end
  end
end
