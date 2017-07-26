class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :ticket_types, :name
    add_index :ticket_types, :moss
    add_index :ticket_types, :display
    add_index :ticket_types, :is_display
  end
end
