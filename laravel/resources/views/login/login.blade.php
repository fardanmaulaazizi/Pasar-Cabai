<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SIMC | Log in</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('admin/dist/css/adminlte.min.css') }}">
    <link rel="icon" type="image/png" href="{{ asset('toko/images/favicon.png') }}">

    <style>
        @media screen and (max-width: 972px) {
            .gambar-login {
                display: none;
            }
        }
    </style>
</head>

<body>
    @if (session('alert'))
        <div class="row alert alert-danger alert-dismissible fade show"style="margin: 0; border-radius: 0"
            role="alert">
            {{ Session::get('alert') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif
    <!-- /.login-box -->
    <div id="auth" class="vh-100 overflow-hidden" style="overflow: hidden;">
        <div class="row h-100">
            <div class="col-lg-6 col-12 d-flex align-items-center justify-content-center">
                <div id="auth-left">
                    <img src="{{ asset('toko/images/logo.png') }}" alt="logo">
                    <h1 class="mb-5 mt-3 fw-bolder"><b style="color:#198754">Login</b></h1>
                    <form action="{{ route('auth.login') }}" method="post">
                        @csrf
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="text" name="email" class="form-control" placeholder="email">
                            <div class="form-control-icon">
                                <i class="bi bi-person"></i>
                            </div>
                        </div>
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="password" name="password" class="form-control" placeholder="kata sandi">
                            <div class="form-control-icon">
                                <i class="bi bi-shield-lock"></i>
                            </div>
                        </div>
                        <div class="tampilanError">
                        </div>
                        <button type="submit" class="btn btn-success btn-block btn-lg shadow-lg mt-3">Log in</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-6 gambar-login">
                <div id="auth-right" class="overflow-hidden d-flex justify-content-center">
                    <img src="{{ asset('toko/images/login.jpg') }}" class="mx-auto vh-100 img-cover" alt="">
                </div>
            </div>
        </div>

    </div>
    <!-- jQuery -->
    <script src="{{ asset('admin/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('admin/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('admin/dist/js/adminlte.min.js') }}"></script>
</body>

</html>
