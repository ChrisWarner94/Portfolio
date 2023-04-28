class AddStackToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :stack, :string, array: true
  end
end
