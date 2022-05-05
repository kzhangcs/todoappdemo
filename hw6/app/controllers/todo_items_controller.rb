class TodoItemsController < ApplicationController
  before_action :set_todo_list
  before_action :set_todo_item, only: %i[ show edit update destroy ]

  def show
  end

  def edit
  end

  def new
    # @todo_item = @todo_list.todo_items.new
    @todo_item = TodoItem.new
    @todo_item.done = false #todo: initialize todo here?
  end

  def create
    @todo_item = TodoItem.new(create_todo_item_params) #todo: limit :done
    respond_to do |format|
      if @todo_item.save
        format.html { redirect_to todo_list_todo_item_path(:todo_list_id => @todo_list.id, :id => @todo_item.id), notice: 'Todo item was successfully created.' }
        format.json { render :show, status: :created, location: @todo_item }
      else
        format.html { render :new }
        format.json { render json: @todo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @todo_item.update(todo_item_params)
        format.html { redirect_to todo_list_todo_item_path(:todo_list_id => @todo_list.id, :id => @todo_item.id), notice: 'Todo item was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_item }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @todo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @todo_item.destroy
    respond_to do |format|
      format.html { redirect_to todo_list_url(@todo_list), notice: 'Todo item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_item
      @todo_item = TodoItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_item_params
      params.require(:todo_item).permit(:task_title, :due_date, :description, :done)
    end

     # Only allow a list of trusted parameters through.
    def create_todo_item_params
      params.require(:todo_item).permit(:task_title, :due_date, :description)
    end

    def set_todo_list
      @todo_list = TodoList.find(params[:todo_list_id]) #todo: change to current_user?

      # @todo_list = TodoList.find(params[:todo_list_id]) #todo: change to current_user?
    end
end
