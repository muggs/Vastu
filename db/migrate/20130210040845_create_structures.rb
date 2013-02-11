class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
    	t.string	:name,									:null => false									
    	t.string	:type,									:null => false
    	t.integer	:bedroom_count,					:null => false
    	t.integer	:bathroom_count,				:null => false
    	t.integer	:hall_count,						:null => false
    	t.integer	:kitchen_count,					:null => false
    	t.integer	:user_id
      t.timestamps
    end
  end
end
