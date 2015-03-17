class Quote < ActiveRecord::Base
	validates :quip, presence: true, length: { minimum: 3}, uniqueness: true
end
