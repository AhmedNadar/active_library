ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    section "Recent Books" do
      table_for Book.order('created_at desc').limit(5) do
        column :name do |book|
          link_to book.name, [:admin, book]
        end
        column :created_at
      end
      strong { link_to 'View all Books', admin_books_path }
    end
  end # content
end
