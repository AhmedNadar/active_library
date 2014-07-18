ActiveAdmin.register Author do
  
  scope :author_john
  
  active_admin_importable
  
  sidebar "Books by this Author", only: :show do
    table_for Book.joins(:author).where(author_id: author.id) do |table|
      table.column("Title") { |book| book.name }
    end
  end
  
  csv do 
    column :first_name
    column :last_name
  end
  
end

