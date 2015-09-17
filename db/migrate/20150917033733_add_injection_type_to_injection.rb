class AddInjectionTypeToInjection < ActiveRecord::Migration
  def change
    add_reference :injections, :injection_type, index: true
  end
end
