class AddAttendedEventIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attended_event_id, :integer
    add_index :users, :attended_event_id
  end
end
