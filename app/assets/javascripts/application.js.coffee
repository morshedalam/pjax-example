# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require jquery.pjax

if $.support.pjax
  $('a:not([data-method]), [data-href]').on 'click', (event) ->
    event.preventDefault()
    $.pjax
      container: $(this).data('pjax-container') || '[data-pjax-container]'
      url: $(this).data('href') || $(this).attr('href')

  $('form').on 'submit', (event) ->
    event.preventDefault()
    $.pjax
      container: $(this).data('pjax-container') || '[data-pjax-container]'
      url: this.action
      data: $(this).serialize()
      type: $(this).attr('method')

else
  $('[data-href]').on 'click', (event) -> # not a native #href, need some help
    event.preventDefault()
    window.location = $(this).data('href')

$(document)
  .on 'pjax:timeout', ->
    false # disable timeout