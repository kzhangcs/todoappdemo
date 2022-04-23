class TodoListsController < ApplicationController
  before_action :set_todo_list, only: %i[ show edit update destroy ]

  # GET /todo_lists or /todo_lists.json
  def index
    @todo_lists = current_user.account.todo_lists.paginate(page: params[:page], per_page: 5)
  end

  # GET /todo_lists/1 or /todo_lists/1.json
  def show
    @todo_items = @todo_list.todo_items.paginate(page: params[:page], per_page: 5)
  end

  # GET /todo_lists/new
  def new
    @todo_list = current_user.account.todo_lists.new
  end

  # GET /todo_lists/1/edit
  def edit
  end

  # POST /todo_lists or /todo_lists.json
  def create
    @todo_list = current_user.account.todo_lists.new(todo_list_params)

    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to todo_list_url(@todo_list), notice: "Todo list was successfully created." }
        format.json { render :show, status: :created, location: @todo_list }
      else
        format.html { render :new, status: :unprocessable_entity } #todo: status: :unprocessable_entity ?
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_lists/1 or /todo_lists/1.json
  def update
    respond_to do |format|
      if @todo_list.update(todo_list_params)
        format.html { redirect_to todo_list_url(@todo_list), notice: "Todo list was successfully updated." }
        format.json { render :show, status: :ok, location: @todo_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_lists/1 or /todo_lists/1.json
  def destroy
    @todo_list.todo_items.each do |todo_item|
      todo_item.destroy
    end
    @todo_list.destroy

    respond_to do |format|
      format.html { redirect_to todo_lists_url, notice: "Todo list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_list
      @todo_list = current_user.account.todo_lists.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_list_params
      params.require(:todo_list).permit(:list_name, :list_due_date)
    end
end
