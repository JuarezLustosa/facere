jQuery(document).ready(function(){
  $('tr.lists').click(function() {
    var trHide = $(this).next('tr.hide')
        
    trHide.fadeIn("slow");
  });
  
  $('tr.hide').click(function() {
    var that = $(this)
    
    that.fadeOut("slow");
  });
});