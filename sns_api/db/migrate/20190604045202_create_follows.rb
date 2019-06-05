class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows do |t|
      t.reference :user
      t.reference :followed, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
