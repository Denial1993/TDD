class SuperbikesController < ApplicationController
  before_action :find_superbike,only: [:edit,:update,:destroy,:vote]
  def index
    @superbikes = Superbike.all
  end

  def create
    @superbike = Superbike.new(superbikes_params)

    if @superbike.save
      redirect_to superbikes_path, notice: "Success_to_add_a_bike_details"
    else
      render :new
    end
  end

  def new
    @superbike = Superbike.new
  end

  def edit
  end

  def show
  end

  def update
    if @superbike.update(superbikes_params)
      # 成功
      redirect_to superbikes_path, notice: "資料更新成功!"
    else
      # 失敗
      render :edit
    end
  end

  def destroy
    @superbike.destroy if @superbike
    redirect_to superbikes_path,notice: "候選人資料已刪除!"
  end

  def vote
    @superbike.vote_logs.create(ip_address: request.remote_ip) if @superbike
    redirect_to superbikes_path, notice: "完成投票!"

  end

  private
  def superbikes_params
    params.require(:superbike).permit(:brand,:product,:exhaust,:specification_of_tyre,:height_of_seat,:price)
  end

  def find_superbike
    @superbike = Superbike.find_by(id: params[:id])
  end
end
