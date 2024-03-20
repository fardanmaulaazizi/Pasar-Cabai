@extends('toko.partials.master')

@section('konten')
    <!-- Preloader -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <div class="spinner-grow text-success" style="width: 5rem; height: 5rem;" role="status">
                    <span class="visually-hidden">Loading...</span>
                </div>
            </div>
        </div>
    </div>
    <!-- End Preloader -->


    @include('toko.partials.header')

    <!-- Slider Area -->
    <section>
        <!-- Single Slider -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="{{ asset('toko/images/banner1.png') }}" alt="First slide">
                    <div class="carousel-caption d-md-block text-white">
                        <h5>Kisah Sukses Petani Cabai</h5>

                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="{{ asset('toko/images/banner2.png') }}" alt="Second slide">
                    <div class="carousel-caption d-md-block text-white">
                        <h5>Kisah Sukses Petani Cabai Omset 10 Juta</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="{{ asset('toko/images/banner3.png') }}" alt="Third slide">
                    <div class="carousel-caption d-md-block text-white">
                        <h5>Kisah Sukses Petani Cabai Rawit</h5>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                <div class=""></div>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!--/ End Single Slider -->
    </section>
    <!--/ End Slider Area -->
    <div class="test"></div>
    <!-- End Small Banner -->

    <!-- Start Product Area -->
    <div class="product-area section" id="produkCabai">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 style="margin-top:20px">Produk Cabai Kebumen</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="product-bg-success">
                        <div class="nav-main">
                            <div class="row px-2 px-md-5">
                                @foreach ($kategoriKomoditasDetail as $kategori)
                                    <div class="col-md-4 col-12">
                                        <div class="card mb-4">
                                            <div class="card-body">
                                                <h5 class="card-title">{{ $kategori->keterangan }}</h5>
                                                <h6 class="card-subtitle mb-2 text-muted">
                                                    {{ $kategori->kategori_komoditas->keterangan }}</h6>
                                                <p class="card-text mb-2">Kami bangga mempersembahkan produk yang tak hanya
                                                    terpilih dari bibit pilihan, tapi juga dipelihara dan
                                                    dedikasi untuk menghasilkan kualitas terbaik yang dapat dinikmati oleh
                                                    pelanggan kami.</p>
                                                <?php $ada = false; ?>
                                                @foreach ($kategoriKomoditasDetailAda as $itemnya)
                                                    @if ($itemnya->id == $kategori->id)
                                                        <p class="card-text mb-2">kuantitas :
                                                            {{ number_format($itemnya->total_komoditas - $itemnya->terjual, 0, '', '.') }}
                                                        </p>
                                                        <?php $ada = true; ?>
                                                        @if ($itemnya->total_komoditas - $itemnya->terjual != 0)
                                                            <a href="https://wa.me/6287870092987" class="card-link d-flex"><button
                                                                    class="btn d-flex align-items-center justify-content-center rounded px-3 py-1 "style="width:100px; background-color:#198754"><i
                                                                        class="bi
                                                        bi-telephone-fill me-2"></i>
                                                                    Pesan</button></a>
                                                        @else
                                                            <div
                                                                class="btn d-flex align-items-center justify-content-center rounded px-3 py-1 pe-none"style="width:100px; background-color:#ccc">
                                                                <i class="bi bi-slash-circle me-2"></i>
                                                                Kosong
                                                            </div>
                                                        @endif
                                                    @endif
                                                @endforeach
                                                @if ($ada === false)
                                                    <p class="card-text mb-2">kuantitas : 0</p>
                                                    <div
                                                        class="btn d-flex align-items-center justify-content-center rounded px-3 py-1 pe-none "style="width:100px; background-color:#ccc">
                                                        <i class="bi bi-slash-circle me-2"></i>
                                                        Kosong
                                                    </div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Product Area -->
@endsection
