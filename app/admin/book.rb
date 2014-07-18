ActiveAdmin.register Book do

  active_admin_importable
  
  index do
    column "Title", :name
    column :author, sortable: :author
    column :genre, sortable: :genre
    column :price, sortable: :price do |book|
      number_to_currency book.price, unit: "$", separator: ",", delimiter: ",", format: "%u %n"
    end
    column "Created Date", :created_at
    actions
  end
  
  filter :name
  filter :author, :as => :check_boxes
  filter :genre, :as => :check_boxes
  filter :price
  filter :created_at
  filter :updated_at
  
end
