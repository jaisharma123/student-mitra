class AddNicknameToTechwords < ActiveRecord::Migration[5.0]
  def change
    add_column :techwords, :nickname, :string
  end
end
