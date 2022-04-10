<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Notes</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body class="d-flex justify-content-center align-items-center p-4 bg-secondary">
        <div class=" d-flex flex-column border justify-content-center align-items-center w-20 p-5 rounded-2 bg-white">
            <h2>Notes App</h2>
            <h3>Login</h3>
            <form action="login" method="post" class="d-flex flex-column justify-content-center">
                <label>Email:</label><br>
                <input type="text" name="email" class="rounded-1 mb-3 form-control " required><br>
                <label>Password:</label><br>
                <input type="password" name="password" class="rounded-1 mb-3 form-control " required><br>
                <div class="d-flex justify-content-center">
                    <input type="submit" value="Sign in" class="mb-3 w-50">
                </div>
            </form>
            <a href="forgot">Forgot password?</a>
        </div>
    </body>
</html>
