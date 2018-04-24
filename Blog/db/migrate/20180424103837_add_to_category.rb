class AddToCategory < ActiveRecord::Migration[5.1]
  def change
  	change_table :categories do |t|
  		t.remove :articleid
  		t.belongs_to :article, index: true
  	end
  end
end
