class AddCountToCat < ActiveRecord::Migration
  def change
  	add_column :categories, :place, :integer
  end
end
