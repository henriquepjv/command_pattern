class SimpleCommand < Command
  def initialize(payload)
    @payload = payload
  end

  def execute
    puts "SimpleCommand: turn on the lights from (#{@payload})"
  end
end
