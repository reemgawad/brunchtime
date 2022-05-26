class ChangeWaitTimeToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurants, :wait_time, "integer USING wait_time::integer"
  end
end
