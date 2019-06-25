class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows, id: :string do |t|
      t.references :user, foreign_key: true
      t.references :followed, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
