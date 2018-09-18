class CoupleController < ApplicationController
	def form
	end

	def form_submit
		@man = Man.new(name: params[:man_name])
		@woman = Woman.new(name: params[:woman_name])
		@man.save
		@woman.save
		@couple = Couple.new(man_id: @man.id, woman_id: @woman.id)
		@couple.save
	end
end
