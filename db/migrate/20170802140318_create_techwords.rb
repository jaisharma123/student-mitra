class CreateTechwords < ActiveRecord::Migration[5.0]
  def change
    create_table :techwords do |t|
      t.string :name
      t.text :definition

      t.timestamps
    end
  end
end
