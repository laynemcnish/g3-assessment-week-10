class Gif < ActiveRecord::Base
  validates :url, :presence => {message: "can't be blank"}
  validates :title, :presence => {message: "can't be blank"}

end