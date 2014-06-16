class Article < ActiveRecord::Base
	attr_accessible :title,:body

	 validates :title, :presence => { :message => "missing" }
	  validates :body, :presence => { :message => "missing" }
end
