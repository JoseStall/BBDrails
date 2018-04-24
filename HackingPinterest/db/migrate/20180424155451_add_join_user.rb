class AddJoinUser < ActiveRecord::Migration[5.1]
  def change
  	change_table :pins do |x|
  		x.belongs_to :user
  	end
  end

  def change
  	change_table :comments do |t|
  		t.belongs_to :pin
  		t.belongs_to :user
  	end
  end

end
