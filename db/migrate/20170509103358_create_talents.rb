class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :name
      t.string :job

      t.timestamps null: false
    end
  end
end
