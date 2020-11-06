class CreateCheeps < ActiveRecord::Migration[5.0]
  def change
    create_table :cheeps do |t|
      t.string :body
      t.boolean :published, :default => false
      t.datetime :published_on, :required => false
      t.timestamps null: false
    end
  end
end