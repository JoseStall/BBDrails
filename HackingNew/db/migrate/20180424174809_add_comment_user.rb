class AddCommentUser < ActiveRecord::Migration[5.1]
  def change
  	change_table :comments do |t|
  		t.belongs_to :link
  		t.belongs_to :user
  	end
  end
end
