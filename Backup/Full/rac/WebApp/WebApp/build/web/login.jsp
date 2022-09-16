<%-- 
    Document   : index
    Created on : Sep 11, 2022, 6:19:19 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>        
    </head>
    <body>      
         <div class="container">
         <div class="title-text">
            <div class="title login">
               Đăng Nhập
            </div>
            <div class="title signup">
               Đăng Ký
            </div>
         </div>
         <div class="form-container">
            <div class="slide-controls">
               <input type="radio" name="slide" id="login" checked>
               <input type="radio" name="slide" id="signup">
               <label for="login" class="slide login">Đăng Nhập</label>
               <label for="signup" class="slide signup">Đăng Ký</label>
               <div class="slider-tab"></div>
            </div>
            <div class="form-inner">
               <form action="#" class="login">
                  <div class="field">
                     <input type="text" placeholder="Tài Khoản" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Mật Khẩu" required>
                  </div>
                  <div class="pass-link">
                     <a href="#">Quên Mật Khẩu?</a>
                  </div>
                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <input type="submit" value="Đăng Nhập">
                  </div>
                  <div class="signup-link">
                     Chưa Có Tài Khoản? <a href=""> Đăng Ký Ngay</a>
                  </div>
               </form>
               <form action="#" class="signup">
                  <div class="field">
                     <input type="text" placeholder="Nhập Tên Tài Khoản" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Nhập Mật Khẩu" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Nhập Lại Mật Khẩu" required>
                  </div>
                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <input type="submit" value=" Đăng Ký">
                  </div>
               </form>
            </div>
         </div>
      </div>
        <script language="javascript">
            const loginText = document.querySelector(".title-text .login");
            const loginForm = document.querySelector("form.login");
            const loginBtn = document.querySelector("label.login");
            const signupBtn = document.querySelector("label.signup");
            const signupLink = document.querySelector("form .signup-link a");
            signupBtn.onclick = (()=>{
              loginForm.style.marginLeft = "-50%";
              loginText.style.marginLeft = "-50%";
            });
            loginBtn.onclick = (()=>{
              loginForm.style.marginLeft = "0%";
              loginText.style.marginLeft = "0%";
            });
            signupLink.onclick = (()=>{
              signupBtn.click();
              return false;
            });
        </script>  
    </body>
</html>
