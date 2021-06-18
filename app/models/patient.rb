# frozen_string_literal: true

# Patient Class
class Patient < ApplicationRecord
  belongs_to :user
end
