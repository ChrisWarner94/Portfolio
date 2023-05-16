class AddStackToProjects < ActiveRecord::Migration[7.0]
  def change
    
  end
  add_column :projects, :stack, :string, array: true
end
