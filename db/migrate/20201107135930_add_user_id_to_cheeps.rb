class AddUserIdToCheeps < ActiveRecord::Migration[6.0]
  def change
    add_reference :cheeps, :user, foreign_key: true
  end
end
