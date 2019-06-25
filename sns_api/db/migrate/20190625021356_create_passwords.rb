class CreatePasswords < ActiveRecord::Migration[5.1]
  def change
    create_table :passwords do |t|
      t.string :user_id
      t.timestamps
    end
    add_foreign_key :passwords, :users, column: :user_id
  end
end
