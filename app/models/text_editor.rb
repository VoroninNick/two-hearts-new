class TextEditor < ActiveRecord::Base
  attr_accessible :descr, :name
  validates :name, presence: true

  rails_admin do
    edit do
      field :name
      field :descr
    end
  end
end
