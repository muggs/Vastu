class Structure < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible	:name, :structure_type, :bedroom_count, :bathroom_count, :hall_count, :kitchen_count, :floor_plan, :floor_plan_cache
  belongs_to	:user
  validates :name, :presence => true
  validates :structure_type, :presence => true
  mount_uploader :floor_plan, FloorPlanUploader 
end
