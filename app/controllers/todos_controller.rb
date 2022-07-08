class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_project, only: :create

  def create
    @project = Project.find_or_create_by(title: todo_params[:project_title])
    @todo = @project.todos.create(text: todo_params[:text], is_completed: todo_params[:is_completed])

    if @todo.save
      render status: :created, json: { message: 'The task has been successfully created.' }
    else
      render status: :internal_server_error, json: { message: 'Something went wrong.' }
    end
  end

  def update
    todo = Todo.find_by(id: params[:id])
    if todo.update(todo_params)
      render status: :ok, json: { message: 'The task has been successfully updated.' }
    else
      render status: :not_found, json: { message: 'The task does not exist' }
    end
  end

  private

  def todo_params
    # binding.irb
    params.require(:todo).permit(%i[id text project_title is_completed])
  end

  def find_project
    @project ||= Project.find_by(title: todo_params[:project_title])
  end
end
