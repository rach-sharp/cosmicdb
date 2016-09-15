class CreateAliens < ActiveRecord::Migration[5.0]
  def change
    create_table :aliens do |t|
        
      t.string :name
      t.string :tagline

      t.text :effect
      t.text :flavour

      t.boolean :mandatory

      t.boolean :startturn
      t.boolean :regroup
      t.boolean :destiny
      t.boolean :launch
      t.boolean :alliance
      t.boolean :planning
      t.boolean :reveal
      t.boolean :reveal
      t.boolean :resolution

      t.integer :colour

      t.boolean :offense
      t.boolean :defense
      t.boolean :ally
      t.boolean :bystander

      t.timestamps
    end
  end
end
