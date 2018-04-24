class AddPinUser < ActiveRecord::Migration[5.1]
  def change
  	change_table :pins do |t|
  		t.belongs_to :user
  	end
  end
end
