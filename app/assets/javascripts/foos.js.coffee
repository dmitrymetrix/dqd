@Styx.Initializers.Foos =
  initialize: ->
    console.log 'Этот метод будет вызван при попадании в любой action контроллера foos сразу после парсинга тега <head>'

  index: (data) ->
    console.log 'Этот метод будет вызван при попадании в /foos/ сразу после парсинга тега <head>'

  show: (data) -> $ ->
    console.log 'А вот таким образом (при использовании jQuery) можно вызвать метод после загрузки страницы /foos/... (см. jQuery.ready())'
    $('.carousel').carousel({
      interval: 2000
    })