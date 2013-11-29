# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# jQuery ->
#   $('#place_select').hide() # hide the select menu
#   places = $('#place_select').html() # get all the places in groups (the option and optgroup tags)

#   $('#country_select').change -> # when selecting/deselecting a category, should we update the places select menu
#     categories = $('#sel9UX :selected').map -> # find the selected categories
#       $(this).text() 

#     options = {} 
#     $.each categories, (index, value) -> # find all the optgroups that should be shown
#       options[value] = $(places).filter("optgroup[label='#{value}']")

#     $('#place_select').html("") # empty the select menu
#     $.each options, (key, value) -> # add each category group we have selected
#       $('#place_select').append(value)

#     $('#place_select').show() # show the select menu again