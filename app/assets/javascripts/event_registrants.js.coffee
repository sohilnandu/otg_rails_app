# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#jQuery ->
#  $('#registrants').dataTable()

load_datatable = ->
    $('.table').dataTable()
 
  $(document).ready(load_datatable)
  $(document).on('page:load', load_datatable)