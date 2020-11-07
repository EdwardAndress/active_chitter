class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, :required => true, :uniqueness => true
      t.string :password, :required => true
      t.timestamps null: false
    end
  end
end
