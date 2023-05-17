# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :picture_url
      t.string :short_description
      t.text :long_description
      t.text :demo_url
      t.text :host_link
      t.text :github_link

      t.timestamps
    end
  end
end
