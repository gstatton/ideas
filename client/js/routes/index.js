define(["app/api", "templates/indexdesktop", "templates/indexmobile", "templates/navbar"], function(api, desktopTempl, mobileTempl, navTempl) {
  return {
    init: function() {
      this.emit('ready');
    },
    show: function(args) {
      var ideas = api.query({
        // url: "https://api.mypsn.com/svc1/v2/contacts/Search?q=" + q,
        url: "https://api.mypsn.com/v1/poma/pomasity/_search?size=10000",        
        mode: "production"
      });
 

      ideas.when(function(res) {

        enquire.register("screen and (max-width: 480px)", { match : function() {
          var v = $("#usersearch").val() || args.search;
          $("#navbar").html("");
          $("#main").html(mobileTempl({
            ideaes: res.hits.hits
          }))
        },unmatch : function() {}
        
        }).listen().fire();

        enquire.register("screen and (min-width: 768px)", { match : function() {
          var v = $("#usersearch").val() || args.search;
          $("#navbar").html(navTempl({
            emailaddress: $.cookie('EMailAddress'),
            search: v
          }));
          console.log(res.hits.hits);
          $("#main").html(desktopTempl({
            ideas: res.hits.hits
          }))
  
          $('.active').removeClass('active');
          $('#home').addClass('active');

        },unmatch : function() {}

        }).listen().fire();

      });
      



    },
    hide: function() {}
  };
});