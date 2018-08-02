class CreateExample < ActiveRecord::Migration[5.2]
  def change
    create_table :examples do |t|
      t.string :title
      t.text :content
      t.text :another
      t.text :extras
      t.timestamps
    end
  end
end