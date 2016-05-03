// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var on_ready = function() {
  $(".js-option").on("change", function() {
    var $this = $(this)
    var $child_options = $this.parent(".js-option-label").siblings(".js-child-options")
    $child_options.slideToggle()
    if( ! $this.is(":checked") ) $("input[type=checkbox]", $child_options).attr('checked', false)
  })
}

$(document).ready(on_ready);
$(document).on("page:load", on_ready)