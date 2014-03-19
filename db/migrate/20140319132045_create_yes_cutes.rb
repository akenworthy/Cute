class CreateYesCutes < ActiveRecord::Migration
  def change
    create_table :yes_cutes do |t|
      t.string :Animal
      t.string :image_url
      t.float :cuteness_level

      t.timestamps
    end
  end
end
