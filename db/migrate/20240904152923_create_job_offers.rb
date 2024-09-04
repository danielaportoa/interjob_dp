class CreateJobOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :job_offers do |t|
      t.string :titulo
      t.text :descripcion
      t.string :empresa
      t.string :ubicacion
      t.integer :salario
      t.boolean :activo

      t.timestamps
    end
  end
end
