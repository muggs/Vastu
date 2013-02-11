class AddColumnFloorPlanToStructure < ActiveRecord::Migration
  def change
  	add_column :structures, :floor_plan, :string
  end
end
