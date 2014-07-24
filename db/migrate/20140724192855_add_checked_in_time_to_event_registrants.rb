class AddCheckedInTimeToEventRegistrants < ActiveRecord::Migration
  def change
    add_column :event_registrants, :checked_in_time, :timestamp
  end
end
