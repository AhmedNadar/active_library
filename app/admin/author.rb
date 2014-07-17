ActiveAdmin.register Author do
  sidebar "Books by this Author", only: :show do
    table_for Book.joins(:author).where(author_id: author.id) do |table|
      table.column("Title") { |book| book.name }
      end
    end
  end

