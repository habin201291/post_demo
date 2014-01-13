class Post < ActiveRecord::Base
	include Bootsy::Container
	validates :title, :presence => {:message => "can't be blank"}
	validates :content,  
				:length => {:minimum => 5, :message => "has invalid length"}, 
				:presence => {:message => "can't be blank"}
end
