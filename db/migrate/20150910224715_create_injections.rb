class CreateInjections < ActiveRecord::Migration
  def change
    create_table :injections do |t|
      t.string :name
      t.text :html

      t.timestamps
    end
  end
end
