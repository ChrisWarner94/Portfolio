class RemoveDescriptionFromTechnologies < ActiveRecord::Migration[7.0]
  def change
    remove_column :technologies, :description
  end
end
