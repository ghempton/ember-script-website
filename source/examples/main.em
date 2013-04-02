class PostsController extends Ember.ArrayController

  headerDisplay: ~>
    if @content.length > 0
      "#{@content.length} Posts"
    else
      "No Posts"

  +observer content.@each
  postsChanged: ->
    console.log('changed')