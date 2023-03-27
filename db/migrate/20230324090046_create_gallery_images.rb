class CreateGalleryImages < ActiveRecord::Migration[6.1]
  def change
    create_table :gallery_images do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
