require_relative "create"
require_relative "status"
require_relative "delete"


class DropletWizard
  def initialize(client)
    @client = client
  end

  include Create
  include Status
  include Delete
end
