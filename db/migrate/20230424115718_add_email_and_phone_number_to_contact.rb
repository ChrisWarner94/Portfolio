# frozen_string_literal: true

class AddEmailAndPhoneNumberToContact < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :email, :string
    add_column :contacts, :phone_number, :string
  end
end
