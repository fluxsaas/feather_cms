// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  window.codemirror_editors = {};
  $('.codemirror_feather_cms').each(function(){
    var $el = $(this);
    codemirror_editors[$el.attr('id')] = CodeMirror.fromTextArea(ele,
      { mode: "text/html", 
        tabMode: "indent",
        textWrapping: false,
        lineNumbers: true });
  });
});