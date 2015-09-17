class CreateInjectionTypes < ActiveRecord::Migration
  def change
    create_table :injection_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
