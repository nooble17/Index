<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - NexusBank</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #00c6ff;
            --secondary: #0072ff;
            --accent: #00ff88;
            --dark: #0a0e17;
            --light: #f8f9fa;
            --gray: #2a2f3d;
            --error: #ff3366;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, var(--dark) 0%, #1a1f2e 100%);
            color: var(--light);
            overflow-x: hidden;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            z-index: 100;
        }
        
        .logo {
            display: flex;
            align-items: center;
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--light);
            text-decoration: none;
        }
        
        .logo i {
            color: var(--primary);
            margin-right: 10px;
            font-size: 2rem;
        }
        
        .back-home {
            color: var(--light);
            text-decoration: none;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: color 0.3s ease;
        }
        
        .back-home:hover {
            color: var(--primary);
        }
        
        /* Login Container */
        .login-container {
            display: flex;
            width: 100%;
            max-width: 1000px;
            min-height: 600px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
        }
        
        .login-left {
            flex: 1;
            padding: 60px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        
        .login-right {
            flex: 1;
            background: linear-gradient(135deg, rgba(0, 198, 255, 0.1) 0%, rgba(0, 114, 255, 0.1) 100%);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 40px;
            position: relative;
            overflow: hidden;
        }
        
        .login-header {
            margin-bottom: 40px;
        }
        
        .login-header h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
            background: linear-gradient(to right, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        .login-header p {
            color: #b0b7c3;
            font-size: 1.1rem;
        }
        
        .login-form {
            width: 100%;
        }
        
        .form-group {
            margin-bottom: 25px;
            position: relative;
        }
        
        .form-label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--light);
        }
        
        .input-with-icon {
            position: relative;
        }
        
        .form-input {
            width: 100%;
            padding: 15px 15px 15px 50px;
            background: rgba(255, 255, 255, 0.07);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            color: var(--light);
            font-size: 1rem;
            transition: all 0.3s ease;
        }
        
        .form-input:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 2px rgba(0, 198, 255, 0.2);
        }
        
        .input-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #b0b7c3;
            font-size: 1.2rem;
        }
        
        .password-toggle {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: #b0b7c3;
            cursor: pointer;
            font-size: 1.2rem;
        }
        
        .form-options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }
        
        .remember-me {
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .checkbox {
            width: 18px;
            height: 18px;
            accent-color: var(--primary);
        }
        
        .forgot-password {
            color: var(--primary);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        
        .forgot-password:hover {
            color: var(--accent);
        }
        
        .btn {
            padding: 15px 25px;
            border-radius: 10px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            border: none;
            font-size: 1rem;
            width: 100%;
        }
        
        .btn-login {
            background: linear-gradient(45deg, var(--primary), var(--secondary));
            color: var(--light);
        }
        
        .btn-login:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 198, 255, 0.3);
        }
        
        .btn-login:active {
            transform: translateY(-1px);
        }
        
        .login-divider {
            display: flex;
            align-items: center;
            margin: 30px 0;
            color: #b0b7c3;
        }
        
        .login-divider::before,
        .login-divider::after {
            content: '';
            flex: 1;
            height: 1px;
            background: rgba(255, 255, 255, 0.1);
        }
        
        .login-divider span {
            padding: 0 15px;
        }
        
        .social-login {
            display: flex;
            gap: 15px;
            margin-bottom: 30px;
        }
        
        .btn-social {
            flex: 1;
            padding: 12px;
            background: rgba(255, 255, 255, 0.07);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            color: var(--light);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .btn-social:hover {
            background: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }
        
        .signup-link {
            text-align: center;
            color: #b0b7c3;
        }
        
        .signup-link a {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }
        
        .signup-link a:hover {
            color: var(--accent);
        }
        
        .floating-card {
            width: 280px;
            height: 170px;
            background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(255,255,255,0.05));
            backdrop-filter: blur(10px);
            border-radius: 15px;
            border: 1px solid rgba(255,255,255,0.1);
            padding: 20px;
            position: relative;
            overflow: hidden;
            box-shadow: 0 15px 35px rgba(0,0,0,0.2);
            animation: float 6s ease-in-out infinite;
            margin-bottom: 40px;
        }
        
        .card-chip {
            width: 40px;
            height: 30px;
            background: linear-gradient(135deg, #ffd700, #ffaa00);
            border-radius: 5px;
            margin-bottom: 20px;
        }
        
        .card-number {
            font-family: 'Courier New', monospace;
            font-size: 1.1rem;
            letter-spacing: 2px;
            margin-bottom: 20px;
            color: var(--light);
        }
        
        .card-info {
            display: flex;
            justify-content: space-between;
            font-size: 0.9rem;
            color: #b0b7c3;
        }
        
        .card-glow {
            position: absolute;
            width: 200px;
            height: 200px;
            background: radial-gradient(circle, var(--primary) 0%, transparent 70%);
            filter: blur(20px);
            opacity: 0.3;
            top: -50px;
            right: -50px;
            z-index: -1;
        }
        
        .security-features {
            text-align: center;
        }
        
        .security-features h3 {
            margin-bottom: 20px;
            font-size: 1.3rem;
        }
        
        .features-list {
            list-style: none;
            text-align: left;
            max-width: 300px;
        }
        
        .features-list li {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
            color: #b0b7c3;
        }
        
        .features-list i {
            color: var(--accent);
            font-size: 1.1rem;
        }
        
        .particles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            overflow: hidden;
        }
        
        .particle {
            position: absolute;
            background: var(--primary);
            border-radius: 50%;
            opacity: 0.3;
            animation: floatParticle 15s infinite linear;
        }
        
        /* Animations */
        @keyframes float {
            0% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-15px);
            }
            100% {
                transform: translateY(0px);
            }
        }
        
        @keyframes floatParticle {
            0% {
                transform: translateY(100vh) translateX(0);
            }
            100% {
                transform: translateY(-100px) translateX(100px);
            }
        }
        
        /* Error Message */
        .error-message {
            color: var(--error);
            font-size: 0.9rem;
            margin-top: 5px;
            display: none;
        }
        
        /* Responsive */
        @media (max-width: 768px) {
            .login-container {
                flex-direction: column;
                max-width: 450px;
            }
            
            .login-right {
                display: none;
            }
            
            .login-left {
                padding: 40px 30px;
            }
            
            .navbar {
                padding: 15px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="particles" id="particles"></div>
    
    <div class="container">
        <!-- Navbar -->
        <nav class="navbar">
            <a href="index.html" class="logo">
                <i class="fas fa-university"></i>
                <span>NexusBank</span>
            </a>
            <a href="index.html" class="back-home">
                <i class="fas fa-arrow-left"></i>
                Volver al Inicio
            </a>
        </nav>
        
        <!-- Login Container -->
        <div class="login-container">
            <div class="login-left">
                <div class="login-header">
                    <h1>Iniciar Sesión</h1>
                    <p>Accede a tu cuenta para gestionar tus finanzas</p>
                </div>
                
                <form class="login-form" id="loginForm">
                    <div class="form-group">
                        <label class="form-label" for="username">Usuario o Correo Electrónico</label>
                        <div class="input-with-icon">
                            <i class="fas fa-user input-icon"></i>
                            <input type="text" id="username" class="form-input" placeholder="Ingresa tu usuario o email" required>
                        </div>
                        <div class="error-message" id="usernameError">Por favor ingresa un usuario o email válido</div>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label" for="password">Contraseña</label>
                        <div class="input-with-icon">
                            <i class="fas fa-lock input-icon"></i>
                            <input type="password" id="password" class="form-input" placeholder="Ingresa tu contraseña" required>
                            <button type="button" class="password-toggle" id="togglePassword">
                                <i class="fas fa-eye"></i>
                            </button>
                        </div>
                        <div class="error-message" id="passwordError">La contraseña debe tener al menos 6 caracteres</div>
                    </div>
                    
                    <div class="form-options">
                        <div class="remember-me">
                            <input type="checkbox" id="remember" class="checkbox">
                            <label for="remember">Recordar mi cuenta</label>
                        </div>
                        <a href="#" class="forgot-password">¿Olvidaste tu contraseña?</a>
                    </div>
                    
                    <button type="submit" class="btn btn-login">Iniciar Sesión</button>
                    
                    <div class="login-divider">
                        <span>O continuar con</span>
                    </div>
                    
                    <div class="social-login">
                        <button type="button" class="btn-social">
                            <i class="fab fa-google"></i>
                            Google
                        </button>
                        <button type="button" class="btn-social">
                            <i class="fab fa-apple"></i>
                            Apple
                        </button>
                        <button type="button" class="btn-social">
                            <i class="fab fa-facebook-f"></i>
                            Facebook
                        </button>
                    </div>
                    
                    <div class="signup-link">
                        ¿No tienes una cuenta? <a href="registro.html">Regístrate aquí</a>
                    </div>
                </form>
            </div>
            
            <div class="login-right">
                <div class="floating-card">
                    <div class="card-chip"></div>
                    <div class="card-number">•••• •••• •••• 2538</div>
                    <div class="card-info">
                        <div class="card-holder">JOHN DOE</div>
                        <div class="card-expiry">09/25</div>
                    </div>
                    <div class="card-glow"></div>
                </div>
                
                <div class="security-features">
                    <h3>Acceso Seguro</h3>
                    <ul class="features-list">
                        <li>
                            <i class="fas fa-shield-alt"></i>
                            <span>Autenticación de dos factores</span>
                        </li>
                        <li>
                            <i class="fas fa-lock"></i>
                            <span>Cifrado de extremo a extremo</span>
                        </li>
                        <li>
                            <i class="fas fa-fingerprint"></i>
                            <span>Acceso biométrico</span>
                        </li>
                        <li>
                            <i class="fas fa-bell"></i>
                            <span>Alertas de seguridad en tiempo real</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Crear partículas animadas
        function createParticles() {
            const particlesContainer = document.getElementById('particles');
            const particleCount = 20;
            
            for (let i = 0; i < particleCount; i++) {
                const particle = document.createElement('div');
                particle.classList.add('particle');
                
                // Tamaño aleatorio
                const size = Math.random() * 5 + 2;
                particle.style.width = `${size}px`;
                particle.style.height = `${size}px`;
                
                // Posición inicial aleatoria
                particle.style.left = `${Math.random() * 100}vw`;
                
                // Color aleatorio entre azul y verde
                const colors = ['#00c6ff', '#0072ff', '#00ff88'];
                const color = colors[Math.floor(Math.random() * colors.length)];
                particle.style.background = color;
                
                // Duración de animación aleatoria
                const duration = Math.random() * 20 + 10;
                particle.style.animationDuration = `${duration}s`;
                
                // Retraso aleatorio
                const delay = Math.random() * 5;
                particle.style.animationDelay = `${delay}s`;
                
                particlesContainer.appendChild(particle);
            }
        }
        
        // Inicializar partículas cuando la página cargue
        document.addEventListener('DOMContentLoaded', createParticles);
        
        // Mostrar/ocultar contraseña
        const togglePassword = document.getElementById('togglePassword');
  
        
        togglePassword.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            
            // Cambiar icono
            this.innerHTML = type === 'password' ? '<i class="fas fa-eye"></i>' : '<i class="fas fa-eye-slash"></i>';
        });
        
        // Validación del formulario
        const loginForm = document.getElementById('loginForm');
        const usernameInput = document.getElementById('username');
        const passwordInput = document.getElementById('password');
        const usernameError = document.getElementById('usernameError');
        const passwordError = document.getElementById('passwordError');
        
        loginForm.addEventListener('submit', function(e) {
            e.preventDefault();
            let isValid = true;
            
            // Validar usuario/email
            if (usernameInput.value.trim() === '') {
                usernameError.style.display = 'block';
                isValid = false;
            } else {
                usernameError.style.display = 'none';
            }
            
            // Validar contraseña
            if (passwordInput.value.length < 6) {
                passwordError.style.display = 'block';
                isValid = false;
            } else {
                passwordError.style.display = 'none';
            }
            
            // Si es válido, simular envío
            if (isValid) {
                // Simular carga
                const submitBtn = loginForm.querySelector('.btn-login');
                const originalText = submitBtn.innerHTML;
                submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Iniciando sesión...';
                submitBtn.disabled = true;
                
                // Simular proceso de autenticación
                setTimeout(() => {
                    alert('¡Inicio de sesión exitoso! Redirigiendo a tu cuenta...');
                    submitBtn.innerHTML = originalText;
                    submitBtn.disabled = false;
                    
                    // Aquí iría la redirección real
                    // window.location.href = 'cuenta.html';
                }, 2000);
            }
        });
        
        // Efectos interactivos para los botones
        document.querySelectorAll('.btn, .btn-social').forEach(button => {
            button.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-3px)';
            });
            
            button.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0)';
            });
        });
        
        // Simular funcionalidad de los botones sociales
        document.querySelectorAll('.btn-social').forEach(button => {
            button.addEventListener('click', function() {
                const provider = this.textContent.trim();
                alert(`Iniciando sesión con ${provider}...`);
            });
        });
        
        // Simular funcionalidad de "Olvidaste tu contraseña"
        document.querySelector('.forgot-password').addEventListener('click', function(e) {
            e.preventDefault();
            alert('Se ha enviado un enlace de recuperación a tu correo electrónico.');
        });
    </script>
</body>
</html>
