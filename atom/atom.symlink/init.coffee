
path = require 'path'


class Maps
  reg: (map, name, method) ->
    atom.commands.add map, name, method

above = ->
  atom.workspace.observeTextEditors (editor) ->
    editor.insertNewlineAbove()

below = ->
  atom.workspace.observeTextEditors (editor) ->
    editor.insertNewlineBelow()

maps = new Maps()




normal = 'atom-text-editor.vim-mode.normal-mode'
maps.reg normal, 'custom:newline-above', above
maps.reg normal, 'custom:newline-below', below
