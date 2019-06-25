class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.references :sent_user, foreing_key: { to_table: :users }
      t.text :message

      t.timestamps
    end
  end
end
