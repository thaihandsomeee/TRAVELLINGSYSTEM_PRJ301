<%-- 
    Document   : login
    Created on : Oct 28, 2021, 7:09:25 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./asserts/css/signup.css">
    <script src="https://kit.fontawesome.com/9a912681ad.js" crossorigin="anonymous"></script>
    <script src="./asserts/js/myjs.js"></script>
    <title>Document</title>
</head>

<body>
    <div class="container">
        <div class="form-login">
            <div class="signin">
                <form action="login" method="post">
                    <h1 class="mb-20">Sign in</h1>
                    <button><i class="fab fa-facebook-f"></i></button>
                    <button><i class="fab fa-google-plus-g"></i></button>
                    <button><i class="fab fa-instagram"></i></button>
                    <p class="signin-p">or use your account</p>
                    <input name="username" value="${username}" class="signin-input" type="text" placeholder="Username" required>
                    <br>
                    <input name="password" value="${password}" class="signin-input" type="password" placeholder="Password" required>
                    <br>
                    <p style="color: red">${wrongmessage}</p>
                    <br>
                    <input name="remember" type="checkbox"></input>
                    <span class="signin-remember">remember me</span>
                    <br>
                    <input class="signin-button" type="submit" value="SIGN IN"></input>
                </form>
            </div>
            <div class="signup">
                <form action="signup" method="post">
                    <h1 class="mb-20">Sign up</h1>
                    <button><i class="fab fa-facebook-f"></i></button>
                    <button><i class="fab fa-google-plus-g"></i></button>
                    <button><i class="fab fa-instagram"></i></button>
                    <p class="signup-p">or use your account</p>
                    <input name="username" value="${username1}"  class="signup-input" type="text" placeholder="Username" required>
                    <br>
                    <input name="password" value="${password1}"  class="signup-input" type="password" placeholder="Password" required>
                    <br>
                    <input name="repassword" value="${repassword1}"  class="signup-input" type="password" placeholder="Re-enter Password" required>
                    <p style="color: red;font-size: 12px">${message1}</p>
                    <p style="color: green;font-size: 12px">${message2}</p>
                    <br>
                    <input class="signup-button" type="submit" value="SIGN UP"></input>
                </form>
            </div>
            <div id="hello">
                <div>
                    <h1 class="mb-30">Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us.</p>
                    <button id="hellobutton" onClick="show()">SIGN IN</button>
                </div>
            </div>

        </div>
    </div>
</body>

</html>
