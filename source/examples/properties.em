class Person

  +computed firstName, lastName
  initials: -> "#{@firstName.split('')[0]}, #{@lastName.split('')[0]}"

  +observer name
  nameChanged: -> console.log("new name: #{@name}")

  +volatile
  favoriteNumber: -> Math.round(Math.random() * 10)