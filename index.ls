$ = require 'jquery'
runes = require 'runes'
window.runes = runes

window.text_update = text_update = ->
  input_text = $('#text_input').val()
  zwj = String.fromCharCode(0x200D)
  split_by_chars = runes(input_text)
  with_zwj = split_by_chars.join(zwj)
  $('#span_display').text with_zwj

window.text_update2 = text_update2 = ->
  input_text = $('#text_input2').val()
  position = 0
  output = []
  while true
    next_char = input_text.codePointAt(position)
    position += 1
    if not next_char?
      break
    if next_char == 0x200D or next_char == 0xdc66 or next_char == 0xdc68 or next_char == 0xdc69
      continue
    as_string = String.fromCodePoint(next_char)
    if as_string == String.fromCodePoint(0xfffd)
      continue
    output.push as_string
  console.log output
  $('#span_display2').text output.join('')

$(document).ready ->
  text_update()
  text_update2()
