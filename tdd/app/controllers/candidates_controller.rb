class CandidatesController < ApplicationController
	 #layout "backend"
	before_action :find_candidate, only: [:edit,:destroy,:update,:votes]
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
	end

	def update
		if @candidate.update(candidate_params)
			redirect_to candidates_path, notice:"更新資料成功!"
		else
			render :edit
		end
	end

	def destroy
		@candidate.destroy if @candidate
		redirect_to candidates_path,notice: "刪除資料成功!"
	end

	def vote
		@candidate.vote_logs.create(ip_address: request.remote_ip) if @candidate
		#@candidate.increment(:votes)
		#@candidate.save
		redirect_to candidates_path,notice: "完成投票!"
	end

	private
	def candidate_params
		params.require(:candidate).permit(:name,:party,:age,:politics,:votes)
	end
	
	def find_candidate
		@candidate = Candidate.find_by(id: params[:id])
	end
end
