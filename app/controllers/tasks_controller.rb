class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def new
    render('tasks/new.html.erb')
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(:done => params[:done])
      render('tasks/done.html.erb')
    end
  end

  def create
    @task = Task.create(:name => params[:name],
                        :description => params[:description],
                        :start => params[:start],
                        :end => params[:end])
    render('tasks/success.html.erb')
  end
end
