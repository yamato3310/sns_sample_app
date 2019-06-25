class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets, id: :string do |t|
      t.references :user, foreign_key: true
      t.text :tweet

      t.timestamps
    end
  end
end
