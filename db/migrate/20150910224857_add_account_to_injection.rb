class AddAccountToInjection < ActiveRecord::Migration
  def change
    add_reference :injections, :account, index: true
  end
end
