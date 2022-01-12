class CreateSliders < ActiveRecord::Migration[5.2]
  def change
    create_table :sliders do |t|
      t.string :images, :string, array: true

      t.timestamps
    end
  end
end
