@extends('user.partials.master')

@section('title')
    {{-- petani --}}
@endsection

@section('content')
    <section class="content">
        <div class="container-fluid">
            <div class="row mt-3">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- jquery validation -->
                    @if (session('alert'))
                        <div class="row alert alert-success alert-dismissible fade show"style="margin: 0 0 20px 0"
                            role="alert">
                            {{ Session::get('alert') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                    <div class="card card-primary">
                        <div class="card-header" style="background-color: #f7941d">
                            <h3 class="card-title">Akun Detail</h3>
                        </div>
                        <!-- /.card-header -->

                        <!-- form start -->
                        @if (isset($petani->luas_lahan, $petani->kelompok_tani_id, $petani->nomor_hp))
                            <form id="quickForm" method="POST" action="{{ route('petani.update', $petani->id) }}">
                                @method('PUT')
                                @csrf
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="nama">Nama Lengkap</label>
                                            <div class="input-group">
                                                <input type="text" value="{{ old('nama', $petani->nama) }}"
                                                    name="nama" class="form-control" id="nama" readonly>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="desa">Desa</label>
                                                <input type="text" value="{{ $petani->desa->nama_desa }}"
                                                    name="desa"class="form-control" id="nama" readonly>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="kelompok_tani">Kelompok tani</label>
                                                <select class="form-control" disabled name="kelompok_tani"
                                                    id="kelompok_tani" style="width: 100%;">
                                                    <option value="">{{ $petani->kelompok_tani->keterangan }}</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <label for="luas_lahan">Luas lahan</label>
                                            <div class="input-group">
                                                <input type="number" readonly
                                                    value="{{ old('luas_lahan', $petani->luas_lahan) }}" name="luas_lahan"
                                                    class="form-control" id="luas_lahan"
                                                    placeholder="Luas lahan yang dimiliki dalam Meter">
                                                <div class="input-group-append">
                                                    <span class="input-group-text">M<sup>2</sup></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="nomor_hp">Nomor Wa</label>
                                                <div class="input-group-append">
                                                    <span class="input-group-text">+</span>
                                                    <input type="number" readonly
                                                        value="{{ old('nomor_hp', $petani->user->nomor_hp) }}"
                                                        name="nomor_hp" class="form-control" id="nomor_hp"
                                                        placeholder="Luas lahan yang dimiliki dalam Meter">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="password">Password</label>
                                                <div class="input-group-append">
                                                    <span class="input-group-text">+</span>
                                                    <input type="text" readonly
                                                        value="{{ old('password', $petani->user->password) }}"
                                                        name="password" class="form-control" id="password"
                                                        placeholder="Luas lahan yang dimiliki dalam Meter">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        @else
                            <form id="quickForm" method="POST" action="{{ route('petani.update', $petani->id) }}">
                                @method('PUT')
                                @csrf
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="nama">Nama Lengkap</label>
                                            <div class="input-group">
                                                <input type="text" value="{{ old('nama', $petani->nama) }}"
                                                    name="nama" class="form-control" id="nama" readonly>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="desa">Desa</label>
                                                <input type="text" value="{{ $petani->desa->nama_desa }}"
                                                    name="desa"class="form-control" id="nama" readonly>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="kelompok_tani">Kelompok tani</label>
                                                <select class="form-control" required name="kelompok_tani"
                                                    id="kelompok_tani" style="width: 100%;">
                                                    <option disabled selected>Pilih salah satu</option>
                                                    @foreach ($kelompokTani as $item)
                                                        <option value="{{ $item->id }}" <?php if ($item->keterangan == $petani->kelompok_tani->keterangan) {
                                                            echo 'selected';
                                                        } ?>>
                                                            {{ $item->keterangan }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <label for="luas_lahan">Luas lahan</label>
                                            <div class="input-group">
                                                <input type="number" required
                                                    value="{{ old('luas_lahan', $petani->luas_lahan) }}"
                                                    name="luas_lahan" class="form-control" id="luas_lahan"
                                                    placeholder="Luas lahan yang dimiliki dalam Meter">
                                                <div class="input-group-append">
                                                    <span class="input-group-text">M<sup>2</sup></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="nomor_hp">Nomor WA</label>
                                            <div class="input-group">
                                                <input type="number" required
                                                    value="{{ old('nomor_hp', $petani->user->nomor_hp) }}"
                                                    name="nomor_hp" class="form-control" id="nomor_hp"
                                                    placeholder="Nomor WA">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="password">Password</label>
                                                <div class="input-group-append">
                                                    <input type="password"
                                                        value="{{ old('password', $petani->user->password) }}"
                                                        name="password" class="form-control" id="password"
                                                        placeholder="Luas lahan yang dimiliki dalam Meter">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Ubah</button>
                                </div>
                            </form>
                        @endif
                    </div>
                    <!-- /.card -->
                </div>
                <!--/.col (left) -->
                <!-- right column -->
                <div class="col-md-6">

                </div>
                <!--/.col (right) -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
@endsection
