class AddAttachmentToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :attachment, :string
  end
end
