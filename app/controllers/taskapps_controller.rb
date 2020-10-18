class TaskappsController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @q = current_user.taskapps.ransack(params[:q])
    @tasks = @q.result(distinct: true).page(params[:page])

    respond_to do |format|
      format.html
      format.csv { send_data @tasks.generate_csv, filename: "taskapps-#{Time.zone.now.strftime('%Y%m%d%S')}.csv" }
    end
  end

  def import
    current_user.taskapps.import(params[:file])
    redirect_to taskapps_url, notice: "タスクを追加しました。"
  end

  def show
  end

  def new
    @task = Taskapp.new
  end

  def create
    @task = current_user.taskapps.new(task_params)

    if @task.save
      redirect_to taskapps_path, notice: "タスク「#{@task.name}」を登録しました。"
    else
      render :new 
    end
  end

  def edit
  end

  def update
    task.update!(task_params)
    redirect_to taskapps_url, notice: "タスク「#{task.name}」を登録しました。"
  end

  def destroy
    @task.destroy
    #redirect_to taskapps_url, notice: "タスク「#{task.name}」を削除しました。"
    #head :no_content
  end

  private
  def task_params
    params.require(:taskapp).permit(:name, :text, :image)
  end

  def set_task
    @task = current_user.taskapps.find(params[:id])
  end
end
