class Member < ApplicationRecord
    validates_uniqueness_of :account
    validates :account, :password, presence: true
    has_many :comments, dependent: :destroy
    has_many :announcements, dependent: :destroy
    has_many :losts, dependent: :destroy
    has_many :sessions, dependent: :destroy
end