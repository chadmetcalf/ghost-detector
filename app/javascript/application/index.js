export const RailsUJS = require('@rails/ujs')

import 'bootstrap'
import 'popper.js'
import RangeTouch from 'rangetouch/src/js/rangetouch';

function color(value) {
  return "hsl(" + value + ", 70%, 80%)"
}

function initSlider(elem) {
  var value = document.cookie.replace(/(?:(?:^|.*;\s*)backgroundColor\s*\=\s*([^;]*).*$)|^.*$/, "$1");
  elem.value = value
  document.body.style.backgroundColor = color(value)

}

function changeBackgroundColor(event) {
  var value = event.target.value;
  document.cookie = "backgroundColor=" + value
  document.body.style.backgroundColor = color(value)
}

export function colorSlider (selector) {
  var elem = document.querySelector(selector);
  elem.addEventListener("input", changeBackgroundColor);

  initSlider(elem)

  new RangeTouch(selector)
}

import './styles'
