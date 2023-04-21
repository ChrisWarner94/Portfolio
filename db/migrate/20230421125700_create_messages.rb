class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :contact_name
      t.string :contact_number
      t.string :contact_email
      t.text :message

      t.timestamps
    end
  end
end
