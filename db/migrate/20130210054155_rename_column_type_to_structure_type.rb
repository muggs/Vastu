class RenameColumnTypeToStructureType < ActiveRecord::Migration
  def change
  	rename_column :structures, :type, :structure_type
  end
end
