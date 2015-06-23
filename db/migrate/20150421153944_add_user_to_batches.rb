class AddUserToBatches < ActiveRecord::Migration
  def change
    add_reference :batches, :user, null: false, index: true
    add_foreign_key :batches, :users
  end
end
