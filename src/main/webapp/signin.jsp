<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign In | Secure Identity</title>
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

        .signin-container {
            position: relative;
            z-index: 10;
            background: var(--glass-bg);
            backdrop-filter: blur(20px);
            padding: 40px;
            border-radius: 16px;
            border: 1px solid var(--border);
            width: 350px;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }

        h2 { text-align: center; font-weight: 300; letter-spacing: -0.02em; margin-bottom: 5px; }
        .subtitle { text-align: center; color: var(--text-secondary); font-size: 14px; margin-bottom: 30px; }

        .form-group { margin-bottom: 20px; }
        label { display: block; margin-bottom: 8px; color: var(--text-secondary); font-size: 12px; text-transform: uppercase; letter-spacing: 0.05em; }

        input {
            width: 100%;
            padding: 12px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            border-radius: 8px;
            color: white;
            box-sizing: border-box;
            transition: 0.3s;
        }

        input:focus { border-color: var(--accent); outline: none; background: rgba(255, 255, 255, 0.1); }

        button {
            width: 100%;
            padding: 12px;
            background: var(--accent);
            color: black;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 10px;
            transition: 0.3s;
        }

        button:hover { opacity: 0.9; transform: translateY(-1px); }
        .footer-text { text-align: center; margin-top: 20px; font-size: 13px; color: var(--text-secondary); }
        .footer-text a { color: var(--accent); text-decoration: none; }
    </style>
</head>
<body>
<script type="text/javascript" color="255,255,255" opacity="0.4" zIndex="-1" count="150" src="https://cdnjs.cloudflare.com/ajax/libs/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>

<div class="signin-container">
    <h2>Welcome Back</h2>
    <p class="subtitle">Secure Authentication Required</p>

    <form action="signin" method="post">
        <div class="form-group">
            <label>Email Address</label>
            <input type="email" name="email" placeholder="name@domain.com" required/>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="••••••••" required/>
        </div>
        <button type="submit">Sign In</button>
    </form>

    <div class="footer-text">
        New here? <a href="signup.jsp">Create an Identity</a>
    </div>
</div>
</body>
</html>