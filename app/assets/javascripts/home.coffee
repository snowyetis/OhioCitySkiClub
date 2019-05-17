$(document).on 'turbolinks:load', ->
  # $('q.resort-info').hide()
  $('img.trip-card-arrow').on 'click', (event) ->
    $(this).toggle()
    $(this.q).toggle()
    return
