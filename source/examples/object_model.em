mixin CanFly
  fly: -> console.log('flying')

class Animal

class Bird extends Animal with CanFly

  fly: ->
    super()
    console.log('flap wings')