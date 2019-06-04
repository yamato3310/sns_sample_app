class CreateSentMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :sent_messages do |t|
      t.integer :user_id
      t.integer :sent_user_id
      t.text :message

      t.timestamps
    end
  end
end
