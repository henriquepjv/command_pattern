require './command_interface.rb'
require './simple_command.rb'
require './complex_command.rb'
require './receiver.rb'

class Invoker
  def on_start=(command)
    @on_start = command
  end

  def on_finish=(command)
    @on_finish = command
  end

  # The Invoker does not depend on concrete command or receiver classes. The
  # Invoker passes a request to a receiver indirectly, by executing a command.
  def begin_lights_test
    puts 'Invoker: start test'
    @on_start.execute if @on_start.is_a? Command

    puts 'Invoker: ...loading last tests...'

    puts 'Invoker: starting last tests'
    @on_finish.execute if @on_finish.is_a? Command
  end
end
