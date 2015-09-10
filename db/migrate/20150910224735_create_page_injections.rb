class CreatePageInjections < ActiveRecord::Migration
  def change
    create_table :page_injections do |t|
      t.references :page, index: true
      t.references :injection, index: true

      t.timestamps
    end
  end
end
