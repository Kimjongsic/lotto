class LottoController < ApplicationController
	def index
		@buynsu = [*1..45]
		@even = @buynsu.select { |number| number.even? }
		@odd = @buynsu.select { |number| number.odd? }
		n = [2,3,4].sample
		@evenlotto = @even.sample(n)
		@oddlotto = @odd.sample(6-n)
		@lotto = [@evenlotto,@oddlotto].flatten.sort
		@evencount = @evenlotto.count
		@oddcount = @oddlotto.count
		@color=[]
		for i in 0..5
			if @lotto[i] < 10
				@color[i] = "ball1"
			elsif @lotto[i] >= 10 &&  @lotto[i] < 20
				@color[i] = "ball2"
			elsif @lotto[i] >= 20 &&  @lotto[i] < 30
				@color[i] = "ball3"
			elsif @lotto[i] >= 30 &&  @lotto[i] < 40
				@color[i] = "ball4"
			elsif @lotto[i] >= 40
				@color[i] = "ball5"
			end
		end
	end
end
