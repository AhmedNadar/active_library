class Author < ActiveRecord::Base
  has_many :books
  
  def full_name
    "#{first_name} #{last_name}"
  end
  scope :author_john, lambda { where("first_name == 'John'") } 
end
