class Api::V1::ClientsController < Api::V1::BaseController
  before_action :set_client, only: [ :show ]

  def index
    @clients = policy_scope(Client)
  end

  def show
  end

  private

  def set_client
    @client = Client.find(params[:id])
    authorize @client  # For Pundit
  end
end
