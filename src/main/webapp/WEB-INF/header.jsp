<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    /* ========= HEADER ========= */
    .site-header {
        background: #fdfaf4;
        border-radius: 20px;
        padding: 18px 32px;
        margin-bottom: 40px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.15);
        font-family: 'Georgia', serif;
    }

    /* ===== LOGO ===== */
    .logo {
        font-size: 1.9rem;
        font-weight: 800;
        color: #6b4f31;
        text-decoration: none;
        letter-spacing: 1px;
    }

    /* ===== NAVIGATION ===== */
    .nav {
        display: flex;
        gap: 24px;
    }

    .nav a {
        text-decoration: none;
        color: #6b4f31;
        font-size: 1rem;
        font-weight: 600;
        position: relative;
    }

    .nav a::after {
        content: "";
        position: absolute;
        left: 0;
        bottom: -6px;
        width: 0;
        height: 3px;
        background: #a67c52;
        transition: 0.3s ease;
    }

    .nav a:hover::after {
        width: 100%;
    }

    /* ===== BUTTONS ===== */
    .header-right {
        display: flex;
        gap: 12px;
    }

    .btn-login,
    .btn-signup {
        padding: 8px 24px;
        font-size: 0.95rem;
        font-weight: 700;
        border-radius: 999px;
        text-decoration: none;
        transition: 0.3s ease;
    }

    .btn-login {
        background: transparent;
        border: 2px solid #6b4f31;
        color: #6b4f31;
    }

    .btn-login:hover {
        background: #e6dccf;
    }

    .btn-signup {
        background: #a67c52;
        color: white;
    }

    .btn-signup:hover {
        background: #8c683e;
    }

    @media (max-width: 768px) {
        .nav {
            display: none;
        }
    }
</style>

<header class="site-header">
    <a href="${pageContext.request.contextPath}/products" class="logo">
         Mây Việt
    </a>
</header>
