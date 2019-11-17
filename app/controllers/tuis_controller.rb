class TuisController < ApplicationController
  before_action :set_tui, only: [:edit, :update, :destroy]
  def index
    @tuis = Tui.all
  end

  def new
    @tui = Tui.new
  end

  def create
    @tui = Tui.new(tui_params)
    if params[:back]
      render :new
    else
    if @tui.save
      redirect_to tuis_path, notice: "you tuied!!"
    else
      render 'new'
    end
  end
end

def edit

end

def update
    if @tui.update(tui_params)
      redirect_to tuis_path, notice: "つぶやきを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @tui.destroy
    redirect_to tuis_path, notice:"つぶやきを削除しました"
  end

  def confirm
    @tui = Tui.new(tui_params)
    render :new if @tui.invalid?
  end

  private

  def tui_params
    params.require(:tui).permit(:content)
  end

  def set_tui
    @tui = Tui.find(params[:id])
  end

end
