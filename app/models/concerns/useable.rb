module Useable
  extend ActiveSupport::Concern

  included do
    belongs_to :user

    validates :user, presence: { on: :create }
  end
end
