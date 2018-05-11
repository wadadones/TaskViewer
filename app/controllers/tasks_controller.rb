class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def time_calc(t1, t2)
    t1h, t1m = t1.split(':').map(&:to_i)
    t2h, t2m = t2.split(':').map(&:to_i)
    tmph = t2h-t1h
    tmpm = t2m-t1m
    if tmpm < 0 then
      tmph -= 1
      tmpm = 60 + tmpm
    end
    if tmpm < 10 then
      return tmph.to_s+":0"+tmpm.to_s
    else
      return tmph.to_s+":"+tmpm.to_s
    end
  end
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
      @task = Task.new(
      name: params[:task][:name],
      plan1: params[:task][:plan1],
      plan2: params[:task][:plan2],
      results1: params[:task][:results1],
      results2: params[:task][:results2],
      resultsTime: params[:task][:resultsTime]
      )
      if params[:task][:plan1].empty? || params[:task][:plan2].empty? then
        @task.planTime = params[:task][:planTime]
      else
        @task.planTime = time_calc(params[:task][:plan1],params[:task][:plan2])
      end
    #@task = Task.new(task_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :done, :plan, :planTime, :results, :resultsTime)
    end
end
