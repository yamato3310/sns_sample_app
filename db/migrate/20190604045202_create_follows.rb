class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows, id: :string do |t|
      t.string :user_id
      t.string :followed_id

      t.timestamps
    end
    add_foreign_key :follows, :users, column: :user_id
    add_foreign_key :follows, :users, column: :followed_id
  end
end
