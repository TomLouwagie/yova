class Api::V1::ClientsController < Api::V1::BaseController
  def index
    @clients = policy_scope(Client)
  end
end
