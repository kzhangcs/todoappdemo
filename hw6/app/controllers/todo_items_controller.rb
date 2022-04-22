class TodoItemsController < ApplicationController
  before_action :set_todo_item, only: %i[ show edit update destroy ]

  def show
	@todo_list = TodoList.find(params[:todo_list_id]) #todo: call set_todo_list instead
  end

  def edit
    @todo_list = TodoList.find(params[:todo_list_id]) #todo: call set_todo_list instead
  end

  def new
    @todo_list = TodoList.find(params[:todo_list_id]) #todo: call set_todo_list instead
    @todo_item = @todo_list.todo_items.new
    @todo_item.done = false #todo: initialize todo here?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_item
      @todo_item = TodoItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_item_params
      params.require(:todo_item).permit(:task_title, :item_due_date, :description, :done)
    end

    def set_todo_list
      @todo_list = TodoList.find(params[:todo_list_id])
    end
end
