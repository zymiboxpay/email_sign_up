$(function(){
    $('.es-users-sign-up').on('click', function(e){
        $('.es-users-sign-up-form').removeClass('hidden')
    });
    $('.es-users-sign-up-form').on('ajax:success', function(e, data, status, xhr){
        console.log(data)
    }).on('ajax:error', function(e, data, status, xhr){
        console.error(data)
    })
});