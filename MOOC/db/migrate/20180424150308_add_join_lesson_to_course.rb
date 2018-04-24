class AddJoinLessonToCourse < ActiveRecord::Migration[5.1]
  def change
  	change_table :lessons do |t|
  		t.belongs_to :course  
  	end
  end
end
