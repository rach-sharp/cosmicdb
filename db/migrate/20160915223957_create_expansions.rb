class CreateExpansions < ActiveRecord::Migration[5.0]
  def change
    create_table :expansions do |t|
      t.string :name
      t.integer :published
      t.text :contents

      t.timestamps
    end
  end
end
