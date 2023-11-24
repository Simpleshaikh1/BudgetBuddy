class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.find(params[:group_id])
    @expenses = @group.expenses.order(created_at: :desc)
  end

  def new
    @groups = current_user.groups
    @group = Group.find(params[:group_id])
    @expense = @group.expenses.new
  end

  def create
    @group = Group.find(params[:group_id])
    @expense = @group.expenses.new(expense_params.merge(author: current_user))
    @expense.author = current_user

    selected_group_ids = params.dig(:expense, :group_ids) || []
    @expense.groups = Group.where(id: selected_group_ids)

    if @expense.save
      redirect_to group_expenses_path(@group), notice: 'Transaction was successfully created.'
    else
      flash[:alert] = 'Transaction could not be created.'
      render :new
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, group_ids: [])
  end
end
