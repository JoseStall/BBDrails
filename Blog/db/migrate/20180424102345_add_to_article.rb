class AddToArticle < ActiveRecord::Migration[5.1]
  def change
  	change_table :articles do |t|
  		t.remove :userid
  		t.belongs_to :user, index: true
  	end
  end
end
