<aside class="main-sidebar sidebar-dark-primary elevation-4" style="background-color:#198754; overflow:hidden">
    <!-- Brand Logo -->
    <a href="#" class="brand-link ">
        <div class="mx-auto">
            <img src="{{ asset('toko/images/logo.png') }}" alt="Logo" class="img-fluid img-thumbnail"
                style="opacity: .9; margin-right:20px">
        </div>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image d-flex align-items-center">
                <img src="{{ asset('Gambar/user.jpg') }}" class="img-circle elevation-2">
            </div>
            <div class="info">
                <a href="{{ route('beranda') }}" class="d-block">
                    <b>{{ ucwords(Auth::user()->name) }} </b><br>
                    ( {{ Auth::user()->role->keterangan }} )
                </a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            @switch(Auth::user()->role_id)
                @case(1)
                    {{-- PETANI --}}
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <li class="nav-item">
                            <a href="{{ route('komoditas.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Komoditas
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('petani.detail') }}" class="nav-link">
                                <i class="nav-icon fas fa-address-card"></i>
                                <p>
                                    Akun
                                </p>
                            </a>
                        </li>
                    </ul>
                @break

                @case(2)
                    {{-- LPK --}}
                @break

                @case(3)
                    {{-- PENGELOLA GUDANG --}}
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <li class="nav-item">
                            <a href="{{ route('komoditas.index') }}" class="nav-link">
                                <i class="nav-icon fa fa-shopping-basket"></i>
                                <p>
                                    Komoditas
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('komoditasdetail.index') }}" class="nav-link">
                                <i class="nav-icon fa fa-leaf"></i>
                                <p>
                                    Produk
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('petani.index') }}" class="nav-link">
                                <i class="nav-icon fa fa-user"></i>
                                <p>
                                    Petani
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('kecamatan.index') }}" class="nav-link">
                                <i class="nav-icon fa fa-map"></i>
                                <p>
                                    Kecamatan
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('desa.index') }}" class="nav-link">
                                <i class="nav-icon fa fa-home"></i>
                                <p>
                                    Desa
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('gudang.index') }}" class="nav-link">
                                <i class="nav-icon fa fa-archive"></i>
                                <p>
                                    Gudang
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('kelompok-tani.index') }}" class="nav-link">
                                <i class="nav-icon fa fa-users"></i>
                                <p>
                                    Kelompok Tani
                                </p>
                            </a>
                        </li>
                    </ul>
                @break

                @default
            @endswitch
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
