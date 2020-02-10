window.addEventListener('DOMContentLoaded',function(){
  function buildHTML(comment){
    
    var html = `<div class="comment_content">
                  <div class="comments_user">  
                     <h2 id="skyblue">${comment.user_name}:</h2>
                  </div>    
                  <div class="comments_text">
                       <span class="mgr-10">${comment.text}</span>
                  </div>  
                  <div class="comments_date">
                      <span class="mgr-10"><small>${comment.created_at} 更新</small></span>
                  </div>   
                </div>`
    return html
  }
  $('#comment_text').on('submit', function(e){
    e.preventDefault();
    console.log(this)
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
      .done(function(data){
        var html = buildHTML(data);
        $('.comments').append(html);
        $('.input_comment').val('');
        $('.form_submit').prop('disabled', false);
      })
      .fail(function(){
        alert('error');
    })
  })