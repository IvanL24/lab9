<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body class="d-flex justify-content-center align-items-center p-4 bg-secondary">
        <div class=" d-flex flex-column border justify-content-center align-items-center w-25 p-5 rounded-2 bg-white">
            <h2>Forgot Password</h2>
            <p class="fs-6">Please enter your email address to retrieve your password.</p>
            
            <form action="forgot" method="post" class="d-flex flex-column justify-content-center">
                <label>Email Address:</label><br>
                <input type="text" name="email" class="rounded-1 mb-3 form-control " required><br>
                <div class="d-flex justify-content-center">
                    <input type="submit" value="Submit" class="mb-3 w-50">
                </div>
            </form>
            
            <a href="login">Back</a>
            <div class="w-75">
                ${message}
            </div>
        </div>
    </body>
</html>
