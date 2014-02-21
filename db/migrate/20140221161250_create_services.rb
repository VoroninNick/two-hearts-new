class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at

      t.timestamps
    end

    add_column :services, :slug, :string
    add_index :services, :slug

    add_column :services, :category_id, :integer
    add_column :services, :sub_category_id, :integer
  end
end
