class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    add_column :categories, :slug, :string
    add_index :categories, :slug
  end
end
