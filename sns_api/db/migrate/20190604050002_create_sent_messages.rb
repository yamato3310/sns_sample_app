class CreateSentMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :sent_messages do |t|
      t.references :user
      t.references :sent_user_id, foreing_key: { to_table: :users }
      t.text :message

      t.timestamps
    end
  end
end
