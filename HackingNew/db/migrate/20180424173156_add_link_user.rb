class AddLinkUser < ActiveRecord::Migration[5.1]
  def change
  	change_table :links do |t|
  		t.belongs_to :user
  	end
  end
end
