require "red_drop/client"
require "red_drop/create"
require "red_drop/status"
require "red_drop/delete"

class RedDrop
  def initialize
    client = Client.new.auth

    @task_menu = {
      "create" => Create.new(client),
      "status" => Status.new(client),
      "delete" => Delete.new(client)
    }
  end

  def begin
    input = nil

    until input.eql? "exit"
      puts "\nEnter from task menu below.\n#{@task_menu.keys << "exit"}\n\n"

      input = gets.chomp 

      @task_menu[input].execute if @task_menu.has_key? input
    end
  end
end
