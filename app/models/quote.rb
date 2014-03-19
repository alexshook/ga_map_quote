class Quote < ActiveRecord::Base
  belongs_to :user
    validates :quote, presence: true
end
