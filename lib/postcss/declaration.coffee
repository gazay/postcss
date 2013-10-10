Node = require('./node')

# CSS declaration like “color: black” in rules
class Declaration extends Node
  constructor: ->
    @type = 'decl'

  @raw 'value'

  # Stringify declaration
  toString: ->
    (@before || '') + @prop + (@between || '') + ':' + @_value.stringify()

module.exports = Declaration