define ['backbone','cs!app/models/book','cs!app/collections/books','jquery','cs!app/views/bookview'],(Backbone,Book,Books,$,BookView) ->
  class BooksView extends Backbone.View
    className: 'browse'
    initialize: ->
      _.bindAll @,'render'
      @collection.on 'reset',@render
    render: ->
      @$el.empty()
      @collection.each (book) =>
        console.log book
        view = new BookView
          model:book
          collection:@collection
        @$el.append view.render().el
        $('#content').empty().append(@$el)
      @
