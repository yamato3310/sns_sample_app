class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :string do |t|
      t.string :name
      t.text :password
      t.timestamps
    end
  end
end
