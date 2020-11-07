class CreateCheeps < ActiveRecord::Migration[5.0]
  def change
    create_table :cheeps do |t|
      t.string :body
      t.timestamps null: false
    end
  end
end