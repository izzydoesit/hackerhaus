class AddPaperclipToProperty < ActiveRecord::Migration[5.0]
  def change
    add_attachment :properties, :image
  end
end
