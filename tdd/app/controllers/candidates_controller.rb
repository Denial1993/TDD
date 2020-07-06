class CandidatesController < ApplicationController
	def index 
		@candidates = Candidate.all
	end

	def new
		@candidate = Candidate.new
	end

	def create
		@candidate = Candidate.new(candidate_params)

		if @candidate.save
			redirect_to candidates_path,notice: "新增候選人成功!"
		else
			render :new
		end
	end

	def edit
		@candidate = Candidate.find_by(id: params[:id])
	end

	def update
		@candidate = Candidate.find_by(id: params[:id])

		if @candidate.update(candidate_params)
			redirect_to candidates_path, notice:"更新資料成功!"
		else
			render :edit
		end
	end

	def destroy
		@candidate = Candidate.find_by(id: params[:id])

		@candidate.destroy if @candidate
		redirect_to candidates_path,notice: "刪除資料成功!"
	end

	def votes
		@candidate = Candidate.find_by(id: params[:id])
		@candidate.increment(:votes)
		@candidate.save
		redirect_to candidates_path,notice: "完成投票!"
	end














	private
	def candidate_params
		params.require(:candidate).permit(:name,:party,:age,:politics,:votes)
	end
end
