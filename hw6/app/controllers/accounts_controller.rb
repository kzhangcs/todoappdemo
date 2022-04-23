class AccountsController < ApplicationController
	before_action :set_account, only: %i[ show edit update ]

	def show
	end

	def edit
	end

	def update
		respond_to do |format|
	      if @account.update(account_params)
	        format.html { redirect_to account_url(@account), notice: "Account was successfully updated." }
	        format.json { render :show, status: :ok, location: @account }
	      else
	        format.html { render :edit, status: :unprocessable_entity }
	        format.json { render json: @account.errors, status: :unprocessable_entity }
	      end
	    end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_account
	  @account = current_user.account
	end

	# Only allow a list of trusted parameters through.
	def account_params
	  params.require(:account).permit(:gender, :age, :first_name, :last_name)
	end
end
