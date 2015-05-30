Template._incoming_challenge.helpers(
  challenger: ->
    Meteor.users.findOne @creator_id

  start: ->
    moment(@start_date).format 'MMMM Do YYYY'
)

Template._incoming_challenge.events(
  'click #accept-button': (event, template) ->
    Challenges.update(@_id,
      $set:
        accepted: true
        player_ids: [@creator_id, @opponent_id]
    )
)
