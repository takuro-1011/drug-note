class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.string :drug_name
      t.string :hospital
      t.text :effect
      t.date :day_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end