class Activity < ApplicationRecord
    belongs_to :user
    belongs_to :category 

 
    def category_attributes=(category_attributes)
     self.category = Category.where(:name => category_attributes[:name]).first_or_create do |cat|
       #cat.work_type = category_attributes[:work_type]
     end
   end
end
