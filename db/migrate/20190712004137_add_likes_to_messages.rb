class AddLikesToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :likes, :integer
  end
end
