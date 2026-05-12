<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up | Secure Identity</title>
    <style>
        :root {
            --bg-color: #000000;
            --glass-bg: rgba(10, 10, 10, 0.8);
            --text-primary: #ffffff;
            --text-secondary: #71717a;
            --accent: #ffffff;
            --border: rgba(255, 255, 255, 0.08);
        }

        body {
            font-family: 'Inter', system-ui, sans-serif;
            background-color: var(--bg-color);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            overflow: hidden;
            color: var(--text-primary);
        }

        .signup-container {
            position: relative;
            z-index: 10;
            background: var(--glass-bg);
            backdrop-filter: blur(20px);
            padding: 35px;
            border-radius: 16px;
            border: 1px solid var(--border);
            width: 350px;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }

        h2 { text-align: center; font-weight: 300; margin-bottom: 25px; letter-spacing: -0.02em; }

        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 6px; color: var(--text-secondary); font-size: 11px; text-transform: uppercase; }

        input {
            width: 100%;
            padding: 10px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            border-radius: 6px;
            color: white;
            box-sizing: border-box;
        }

        input:focus { border-color: var(--accent); outline: none; }

        button {
            width: 100%;
            padding: 12px;
            background: var(--accent);
            color: black;
            border: none;
            border-radius: 6px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 15px;
        }

        .login-link { text-align: center; margin-top: 20px; font-size: 13px; color: var(--text-secondary); }
        .login-link a { color: var(--accent); text-decoration: none; }
    </style>
</head>
<body>
<script type="text/javascript" color="255,255,255" opacity="0.4" zIndex="-1" count="150" src="https://cdnjs.cloudflare.com/ajax/libs/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>

<div class="signup-container">
    <h2>Create Identity</h2>
    <form action="signup" method="post">
        <div class="form-group">
            <label>Full Name</label>
            <input type="text" name="name" placeholder="Sushen Santhush" required/>
        </div>
        <div class="form-group">
            <label>Mobile Number</label>
            <input type="text" name="mobile" placeholder="07XXXXXXXX" required/>
        </div>
        <div class="form-group">
            <label>Email Address</label>
            <input type="email" name="email" placeholder="name@domain.com" required/>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="••••••••" required/>
        </div>
        <button type="submit">Initialize Account</button>
    </form>
    <div class="login-link">
        Already registered? <a href="signin.jsp">Sign In</a>
    </div>
</div>
</body>
</html>