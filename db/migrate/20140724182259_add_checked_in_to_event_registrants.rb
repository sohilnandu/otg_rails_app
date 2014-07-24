class AddCheckedInToEventRegistrants < ActiveRecord::Migration
  def change
    add_column :event_registrants, :checked_in, :boolean
  end
end
