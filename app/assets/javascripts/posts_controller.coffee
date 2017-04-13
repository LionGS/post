# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#myModal').on 'show.bs.modal', (event) ->
    button = $(event.relatedTarget)
    recipient = button.data('link')
    modal = $(this)
    modal.find('#post_num_d').val recipient
    return
