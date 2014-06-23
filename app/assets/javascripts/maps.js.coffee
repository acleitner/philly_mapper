$(document).ready ->
  $('#open-geographic-entity-modal').click(() ->
    $('#add-map-element-modal').modal('hide')
  )
  $('#create-geographic-entity-button').click(() ->
    $('#geographic-entity-creation-form').submit()
    $('#add-map-element-modal').modal('show')
  )

