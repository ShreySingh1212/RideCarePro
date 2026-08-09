<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Change Password - RideCarePro</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

        body{
            margin:0;
            min-height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            font-family:Arial,sans-serif;

            background:
                linear-gradient(rgba(0,0,0,.82),rgba(0,0,0,.82)),
                url('${pageContext.request.contextPath}/images/login.jpg')
                center/cover no-repeat fixed;
        }

        .card{
            width:100%;
            max-width:460px;

            background:rgba(18,18,18,.78);
            border:1px solid rgba(255,255,255,.10);
            backdrop-filter:blur(20px);

            border-radius:28px;
            padding:38px;

            box-shadow:0 25px 60px rgba(0,0,0,.45);
        }

        .title{
            text-align:center;
            color:#ff8800;
            font-size:34px;
            font-weight:700;
            margin-bottom:10px;
        }

        .subtitle{
            text-align:center;
            color:#cfcfcf;
            margin-bottom:30px;
            line-height:1.6;
        }

        .alert{
            padding:14px;
            border-radius:14px;
            margin-bottom:18px;
            text-align:center;
            font-weight:600;
        }

        .success{
            background:rgba(22,163,74,.18);
            border:1px solid rgba(22,163,74,.35);
            color:#d1fae5;
        }

        .error{
            background:rgba(220,38,38,.18);
            border:1px solid rgba(220,38,38,.35);
            color:#fecaca;
        }

        .group{
            margin-bottom:20px;
        }

        label{
            display:block;
            color:#fff;
            margin-bottom:10px;
            font-weight:600;
        }

        .input{
            display:flex;
            align-items:center;

            background:rgba(255,255,255,.06);
            border:1px solid rgba(255,255,255,.12);

            border-radius:16px;
            overflow:hidden;
        }

        .input i{
            width:56px;
            text-align:center;
            color:#ff9b45;
        }

        .input input{
            flex:1;
            height:58px;
            border:none;
            outline:none;
            background:transparent;
            color:#fff;
            font-size:15px;
            padding-right:16px;
        }

        .input input::placeholder{
            color:#bdbdbd;
        }

        .toggle{
            width:56px;
            border:none;
            background:transparent;
            color:#ff9b45;
            cursor:pointer;
            font-size:16px;
        }

        .btn{
            width:100%;
            height:58px;
            border:none;
            border-radius:18px;
            cursor:pointer;

            background:linear-gradient(135deg,#ff6b00,#ff9800);

            color:#fff;
            font-size:17px;
            font-weight:700;

            margin-top:8px;
            transition:.3s ease;
        }

        .btn:hover{
            transform:translateY(-2px);
            box-shadow:0 18px 35px rgba(255,107,0,.35);
        }

        .back{
            display:block;
            text-align:center;
            margin-top:20px;
            color:#ff9b45;
            text-decoration:none;
            font-weight:600;
        }

        .back:hover{
            color:#fff;
        }

    </style>
</head>
<body>

<div class="card">

    <div class="title">
        <i class="fa-solid fa-shield-halved"></i>
        Change Password
    </div>

    <div class="subtitle">
        Keep your RideCarePro account secure with a strong password.
    </div>

    <c:if test="${not empty success}">
        <div class="alert success">${success}</div>
    </c:if>

    <c:if test="${not empty error}">
        <div class="alert error">${error}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/customer/change-password"
          method="post">

        <div class="group">
            <label>Current Password</label>
            <div class="input">
                <i class="fa-solid fa-lock"></i>
                <input type="password" id="currentPassword"
                       name="currentPassword" required>
                <button type="button" class="toggle"
                        onclick="toggle('currentPassword',this)">
                    <i class="fa-solid fa-eye"></i>
                </button>
            </div>
        </div>

        <div class="group">
            <label>New Password</label>
            <div class="input">
                <i class="fa-solid fa-key"></i>
                <input type="password" id="newPassword"
                       name="newPassword" required>
                <button type="button" class="toggle"
                        onclick="toggle('newPassword',this)">
                    <i class="fa-solid fa-eye"></i>
                </button>
            </div>
        </div>

        <div class="group">
            <label>Confirm Password</label>
            <div class="input">
                <i class="fa-solid fa-check"></i>
                <input type="password" id="confirmPassword"
                       name="confirmPassword" required>
                <button type="button" class="toggle"
                        onclick="toggle('confirmPassword',this)">
                    <i class="fa-solid fa-eye"></i>
                </button>
            </div>
        </div>

        <button class="btn" type="submit">
            <i class="fa-solid fa-lock"></i>
            Update Password
        </button>

    </form>

    <a class="back"
       href="${pageContext.request.contextPath}/customer/profile">
        <i class="fa-solid fa-arrow-left"></i>
        Back to Profile
    </a>

</div>

<script>

function toggle(id,btn){

    const input=document.getElementById(id);
    const icon=btn.querySelector('i');

    if(input.type==='password'){
        input.type='text';
        icon.className='fa-solid fa-eye-slash';
    }else{
        input.type='password';
        icon.className='fa-solid fa-eye';
    }
}

</script>

</body>
</html>