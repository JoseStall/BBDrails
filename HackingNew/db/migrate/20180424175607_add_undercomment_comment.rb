class AddUndercommentComment < ActiveRecord::Migration[5.1]
  def change
  	change_table :under_comments do |t|
  		t.belongs_to :comment
  	end
  end
end
