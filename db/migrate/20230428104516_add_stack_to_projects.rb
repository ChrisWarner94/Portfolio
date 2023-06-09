# frozen_string_literal: true

class AddStackToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :stack, :string, array: true, default: []
  end
end
