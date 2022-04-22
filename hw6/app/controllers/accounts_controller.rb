class AccountsController < ApplicationController
	before_action :set_account, only: %i[ show edit update ]

	def show
	end

	def edit
	end

	def update
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_account
	  @account = current_user.account
	end

	# Only allow a list of trusted parameters through.
	# def todo_list_params
	#   params.require(:todo_list).permit(:list_name, :list_due_date)
	# end
end
