// for phoenix_html support, including form and button helpers
// copy the following scripts into your javascript bundle:
// * https://raw.githubusercontent.com/phoenixframework/phoenix_html/v2.10.0/priv/static/phoenix_html.js
var app = new Vue({
    el: '[role="main"]',
    data: {
      articles: []
    },
    created: function() {
      axios.get('/questions').then(function(response){
        app.articles = response.data.data;
      });
    }
});