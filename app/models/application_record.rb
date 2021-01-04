class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def average_age
    actors.average(:age)
  end

  def search(params)
    key = "%#{params}%".downcase
    actors.where("LOWER(name) like :search", search: key)
  end
end
