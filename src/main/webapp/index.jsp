<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gateway | Secure Identity</title>
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
            color: var(--text-primary);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            overflow: hidden;
        }

        .gateway-container {
            position: relative;
            z-index: 10;
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .glass-card {
            background: var(--glass-bg);
            backdrop-filter: blur(20px);
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 3rem 2rem;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }

        h1 {
            font-size: 1.2rem;
            font-weight: 300;
            letter-spacing: 0.2em;
            margin-bottom: 2rem;
            color: var(--text-secondary);
            text-transform: uppercase;
        }

        .nav-links {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .nav-item {
            display: block;
            padding: 14px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 0.9rem;
            font-weight: 500;
            transition: all 0.3s ease;
            border: 1px solid var(--border);
            color: var(--text-primary);
            background: rgba(255, 255, 255, 0.03);
        }

        .nav-item:hover {
            background: var(--accent);
            color: #000;
            transform: translateY(-2px);
        }

        .brand-footer {
            margin-top: 2rem;
            font-size: 0.7rem;
            color: var(--text-secondary);
            letter-spacing: 0.1em;
        }
    </style>
</head>
<body>


<script type="text/javascript" color="255,255,255" opacity="0.4" zIndex="-1" count="150" src="https://cdnjs.cloudflare.com/ajax/libs/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>

<div class="gateway-container">
    <div class="glass-card">
        <h1>System Gateway</h1>

        <div class="nav-links">
            <a href="signin.jsp" class="nav-item">Sign In to Account</a>
            <a href="signup.jsp" class="nav-item">Create New Identity</a>
            <a href="profile" class="nav-item">Access Profile</a>
        </div>

        <div class="brand-footer">SECURE IDENTITY v1.0</div>
    </div>
</div>

</body>
</html>