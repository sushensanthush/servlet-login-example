<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Security check: If someone tries to access this page directly without logging in
    if (session.getAttribute("email") == null) {
        response.sendRedirect("signin.jsp");
        return;
    }

    // Get user data from the session (set during sign-in)
    String name = session.getAttribute("name").toString();
    String email = session.getAttribute("email").toString();
    String mobile = session.getAttribute("mobile").toString();
    String initial = name.substring(0, 1).toUpperCase();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile | Secure Identity</title>
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
            background-image:
                    radial-gradient(at 0% 0%, hsla(0,0%,15%,0.15) 0, transparent 50%),
                    radial-gradient(at 100% 100%, hsla(0,0%,10%,0.1) 0, transparent 50%);
            color: var(--text-primary);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            overflow: hidden;
        }

        .profile-container {
            position: relative;
            z-index: 10;
            width: 100%;
            max-width: 450px;
            padding: 20px;
        }

        .glass-card {
            background: var(--glass-bg);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 3rem 2rem;
            text-align: center;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }

        .avatar-circle {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, #333, #111);
            border: 1px solid var(--border);
            border-radius: 50%;
            margin: 0 auto 1.5rem;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--text-primary);
        }

        h2 { margin: 0; font-size: 1.5rem; letter-spacing: -0.02em; }
        .user-role { color: var(--text-secondary); font-size: 0.8rem; text-transform: uppercase; letter-spacing: 0.1em; margin-top: 5px; }

        .info-grid {
            margin-top: 2.5rem;
            text-align: left;
            border-top: 1px solid var(--border);
            padding-top: 1.5rem;
        }

        .info-item { margin-bottom: 1.2rem; }

        .label {
            display: block;
            font-size: 0.7rem;
            color: var(--text-secondary);
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-bottom: 4px;
        }

        .value { font-size: 0.95rem; font-weight: 500; color: #e4e4e7; }

        .actions {
            margin-top: 2.5rem;
            display: flex;
            gap: 10px;
        }

        .btn {
            flex: 1;
            padding: 10px;
            border-radius: 6px;
            font-size: 0.8rem;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.2s;
            cursor: pointer;
            text-align: center;
        }

        .btn-primary { background: var(--accent); color: #000; border: none; }
        .btn-secondary { background: transparent; color: #fff; border: 1px solid var(--border); }
        .btn:hover { opacity: 0.8; }

        .back-link {
            display: block;
            margin-top: 1.5rem;
            color: var(--text-secondary);
            text-decoration: none;
            font-size: 0.8rem;
        }
        .back-link:hover { color: #fff; }
    </style>
</head>
<body>


<script type="text/javascript" color="255,255,255" opacity="0.4" zIndex="-1" count="150" src="https://cdnjs.cloudflare.com/ajax/libs/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>

<div class="profile-container">
    <div class="glass-card">

        <div class="avatar-circle"><%= initial %></div>


        <h2><%= name %></h2>
        <div class="user-role">Verified Member</div>

        <div class="info-grid">
            <div class="info-item">
                <span class="label">Email Address</span>
                <span class="value"><%= email %></span>
            </div>
            <div class="info-item">
                <span class="label">Mobile Number</span>
                <span class="value"><%= mobile %></span>
            </div>
            <div class="info-item">
                <span class="label">Account Status</span>
                <span class="value" style="color: #10b981;">● Active</span>
            </div>
        </div>

        <div class="actions">
            <a href="#" class="btn btn-primary">Edit Profile</a>
            <a href="index.jsp" class="btn btn-secondary">Dashboard</a>
        </div>


        <a href="signin.jsp" class="back-link">Sign Out</a>
    </div>
</div>

</body>
</html>