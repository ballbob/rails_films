class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name
      t.references :film, index: true, foreign_key: true
      t.references :talent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
