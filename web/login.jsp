<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Trudon Management Tool</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">
    <link href="../css/zebra_dialog.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            
                <h1><img src="../images/activiti_logo.png" width="200"/></h1>
              <div>
                  <input type="text" class="form-control" placeholder="Username" value="" required="" id="userTxt"/><br>
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" value="" required="" id="passwordTxt" />
                <br>
              </div>
              <div>
                
                <button id="loginBtn" >Login</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                

                <div class="clearfix"></div>
                <br />

              </div>
            
          </section>
        </div>

        
      </div>
    </div>
      <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <script src="../js/jquery.cookie.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../js/zebra_dialog.js"></script>
      
      <script type="text/javascript">
    $(function(){
        $('.form-control').keyup(function(){
            if($('#userTxt').val().length>0 && $('#passwordTxt').val().length>0) {
                $('#loginBtn').removeAttr("disabled");
                $('#loginBtn').attr("title", "Click to login");
                
            }else{
                $('#loginBtn').attr("disabled", "disabled");
                $('#loginBtn').attr("title", "Please type in username and password first");
            }
        });
        $('.form-control').keypress(function(e){
            if(e.which === 13) {
                if($('#userTxt').val().length>0 && $('#passwordTxt').val().length>0){
                    $('#loginBtn').trigger("click");
                }
            }
        });
        $('#loginBtn').click(function(event) {
           $.ajax({
                Accept : "application/json",
                contentType: "application/json",    
                method: "POST",
                url: "auth/login",
                dataType:"json",
                data:JSON.stringify({
                    userName : $('#userTxt').val(),
                    password : $('#passwordTxt').val()
                })
            }).done(function(results) {
                if(results){
                  //redirect to 'whatever' page since the session is set on the service page
                  if(!results.success){
                      $.Zebra_Dialog(results.message,{
                        'type':     'error',
                        'title':    'Login Failure',
                        'overlay_opacity':0.5,
                        'overlay_close':false,
                        'max_height':150
                      });
                  }else{
                      if(1==1){
                      //create cookie only if 'remember me' is checked
                      var name = results.user.fullName.trim();
                      var email = results.user.mail.trim();
                      
//                      for(var userIndex = 0;userIndex<results.user.length;userIndex++){
//                          if(results.user[userIndex].indexOf("name:")>-1){
//                              name = results.user.fullName;
//                          }
//                          if(results.user[userIndex].indexOf("mail:")>-1){
//                              email = results.user.mail;
//                          }
//                      }
                      var userData = {
                          password: $('#passwordTxt').val(),
                          username: $('#userTxt').val(),
                          email: email,
                          name: name
                      };
                      $.cookie("userData", JSON.stringify(userData), { expires : 90});
                    }else{
                        //remove cookie if 'remember me' is not checked
                        //$.removeCookie("userData");
                    }
                    //navigate to home page
                    //window.location.href = "home";
                    
                    //navigate to project Admin or Tasks depending on the role
                    if(results.role !== null && (results.role.id === 46 || results.role.id === 6 || results.role.id === 45)){
                        window.location.href = "tasks";
                    } else{
                     window.location.href = "projects";
                    }
                }
                  
                }else{
                    selectedPortfolio = 0;
                }
              }).error(function(data){
                  alert("there was an error");
              });
        });        
    });
</script>
  </body>
</html>
