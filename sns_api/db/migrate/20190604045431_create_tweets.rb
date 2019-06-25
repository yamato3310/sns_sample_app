class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets, id: :string do |t|
      t.string :user_id
      t.text :tweet

      t.timestamps
    end
    add_foreign_key :tweets, :users, column: :user_id
  end
end
