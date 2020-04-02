# Command Pattern
Command design pattern example in Ruby

Script:

- How to run on irb:
`irb -r ./invoker.rb`

```ruby
invoker = Invoker.new
invoker.on_start = SimpleCommand.new('Bedroom')

receiver = Receiver.new
invoker.on_finish = ComplexCommand.new(receiver, 'Blink lights', 'change leds colors')

invoker.begin_lights_test
```
