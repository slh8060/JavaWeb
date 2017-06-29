<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/6/28
  Time: 下午1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">
  </head>
  <body>
  <div class="container">
    <div class="form-inline">
      <div class="form-group">
        <label class="" for="exampleInputEmail3">Email address</label>
        <input type="text" class="form-control" id="exampleInputEmail3" placeholder="name">
      </div>
      <div class="form-group">
        <label class="" for="exampleInputPassword3">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
      </div>
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
      <button type="submit" class="btn btn-default signIn">Sign in</button>
    </div>
  </div>

  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.js"></script>
  <script>
      $(function () {
          $('.signIn').on('click',function () {
              var name = $('#exampleInputEmail3').val();
              var pwd = $('#exampleInputPassword3').val();
              var params = new FormData();
              params.append('userName',name);
              params.append('userPwd',pwd);
              $.ajax({
                  type:'post',
                  async:true,
                  url:'http://localhost:8080/login.do',
                  dataType:'JSONP',
                  jsonpCallback:"jpCall",
                  data:{
                      userName:name,
                      userPwd:pwd
                  },
                  success:function (resp) {
                      $('.checkbox').html(resp);
                      alert('resp:'+resp.userName+","+resp.userPwd);
                  },
                  error:function (err) {
                      alert('error:'+err);
                  }
              })
          })
      })
  </script>

  </body>
</html>
