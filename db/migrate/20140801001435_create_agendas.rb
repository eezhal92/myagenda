class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :title
      t.datetime :when
      t.string :place
      t.text :description

      t.timestamps
    end
  end
end
