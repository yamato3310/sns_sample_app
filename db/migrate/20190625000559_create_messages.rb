class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages, id: :string do |t|
      t.string :user_id
      t.string :sent_user_id
      t.text :message

      t.timestamps
    end
    add_foreign_key :messages, :users, column: :user_id
    add_foreign_key :messages, :users, column: :sent_user_id
  end
end
