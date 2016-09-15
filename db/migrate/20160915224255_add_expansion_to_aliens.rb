class AddExpansionToAliens < ActiveRecord::Migration[5.0]
  def change
    add_reference :aliens, :expansion, foreign_key: true
  end
end
