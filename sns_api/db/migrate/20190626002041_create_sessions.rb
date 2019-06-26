class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :user_id
      t.string :token
      t.timestamps
    end
    add_foreign_key :sessions, :users
  end
end
