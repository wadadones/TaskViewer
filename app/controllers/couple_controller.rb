class CoupleController < ApplicationController
	def form
	end

	def form_submit
		@man = Man.new(name: params[:man_name])
		@woman = Woman.new(name: params[:woman_name])
		if @man.save
			p "男、おっけい"
		else
			p "男、だめ"
		end
		if @woman.save
			p "女、おっけい"
		else
			p "女、だめ"
		end
		@couple = Couple.new(man_id: @man.id, woman_id: @woman.id)
		@couple.save
		render("/couple/form")
	end

	def show
		@couples = Couple.all
	end
end
