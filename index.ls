$ = require 'jquery'
runes = require 'runes'

window.text_update = text_update = ->
  console.log 'text_update called'
  input_text = $('#text_input').val()
  zwj = String.fromCharCode(0x200D)
  split_by_chars = runes(input_text)
  with_zwj = split_by_chars.join(zwj)
  $('#span_display').text with_zwj

$(document).ready ->
  text_update()
