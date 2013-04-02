class Person

  name: ~> "#{@firstName} #{@lastName}"

  postsDisplay: ~>
    if @posts.length > 0
      "#{@posts.length} Posts"
    else
      "No Posts"

  something: ~>
    x = @x
    y = x.y
    y.z