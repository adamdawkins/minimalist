Template._index_player.helpers(
  is_current_user: ->
    @_id is Meteor.userId()
)
