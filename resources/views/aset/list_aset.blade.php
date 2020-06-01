@extends('admin.layouts.admin')
@section('content')

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Aset List</h2>
                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                @if (session('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                @endif

               

                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Nomor Aset</th>
                            <th>Nama Aset</th>
                            <th>Merk</th>
                            <th>Ruang</th>
                            <th>PIC</th>
							<th>Cost Center</th>
							<th>Tanggal Perolehan</th>
                        </tr>
                        </thead>
                        <tbody>
                        
                        </tbody>
                    </table>
            </div>
        </div>
    </div>


@endsection

@section('scripts')
    @parent
    {{ Html::script(mix('assets/admin/js/dashboard.js')) }}
@endsection

@section('styles')
    @parent
    {{ Html::style(mix('assets/admin/css/dashboard.css')) }}
@endsection
