class AddUserIdToTechwords < ActiveRecord::Migration[5.0]
  def change
    add_column :techwords, :user_id, :integer
  end
end
