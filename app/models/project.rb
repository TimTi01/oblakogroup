class Project < ApplicationRecord
    has_many :todos, dependent: :delete_all
end
