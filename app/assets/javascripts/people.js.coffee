$ ->
  $('#person_search').typeahead
    name: "person"
    remote: "/people/autocomplete?query=%QUERY"