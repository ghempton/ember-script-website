class PostsController extends Ember.ArrayController

  trimmedPosts: ~>
    @content?.slice(0, 3)

  +observer content.@each
  postsChanged: ->
    console.log('changed')