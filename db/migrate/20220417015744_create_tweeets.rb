class CreateTweeets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweeets do |t|
      t.text :tweeet

      t.timestamps
    end
  end
end
