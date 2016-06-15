$("#loginfb").click(function(){
  FB.getLoginStatus(function(responseStat){
    if(responseStat.status !== 'connected'){
      FB.login(function(responselogin){
        if (responselogin.authResponse) {
            getUser();
            window.location.href = "mood.html";
        }else {
              $("#status").text('Debe autorizar la applicación mediante Facebook');
        }
      });
    } else {
      getUser();
      window.location.href = "mood.html";
    }
  });
});


var fieldsrequired = 'id, name, first_name, last_name, age_range, link, gender, locale, picture, timezone, updated_time, verified';

function getUser() {
  FB.api('/me', 'get', {fields: fieldsrequired}, function(response) {
    console.log(response);
  });
}

window.fbAsyncInit = function() {
  FB.init({
    appId      : '128488277574036',
    xfbml      : true,
    version    : 'v2.6'
  });
};

// Load the SDK asynchronously
(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   js.src = "//connect.facebook.net/en_US/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
