@extends('admin.layouts.admin')

@section('content')

    <div class="col-md-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Add Opname</h2>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <br />
                <form class="form-horizontal form-label-left" action="" method="post">


                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nomor Aset</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" name="nomor_aset" id="nomor_aset"
                                   class="form-control" required="required"
                                   placeholder="Nomor Aset">
                        </div>
                        @if($errors->has('nomor_aset'))
                            <span class="text-danger">{!! $errors->first('nomor_aset') !!}</span>
                        @endif
                    </div>

                    <div class="form-group">
					   <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Nama Aset</label>
					   <div class="col-md-9 col-sm-9 col-xs-12">
					   <div class="form-group">
						{{--{!! Form::label('', 'Combobox aset', array('class' => 'control-label')) !!}--}}
						<select name="name" class="form-control">
						@foreach ($m_jenis as $data)
						<option value="{{ $data->id }}">{{ $data->name }}</option>
						@endforeach
						</select>
						</div>
					</div>
					</div>

					
					  <div class="form-group">
					   <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Merk</label>
					   <div class="col-md-9 col-sm-9 col-xs-12">
					   <div class="form-group">
						{{--{!! Form::label('', 'Combobox aset', array('class' => 'control-label')) !!}--}}
						<select name="type" class="form-control">
						{{--@foreach ()--}}
						{{--<option value="">{{  }} </option>--}}
						{{--@endforeach--}}
						</select>
						</div>
					</div>
					</div>

					
					<div class="form-group">

                        <label for="" class="control-label col-md-3 col-sm-3 col-xs-12">Ruang</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input  maxlength="11" type="" name="" id=""
                                     class="form-control"
                                    required="required" placeholder="Ruang">
                        </div>
                        @if($errors->has(''))
                            <span class="text-danger">{!! $errors->first('') !!}</span>
                        @endif
                    </div>
					
						<div class="form-group">

                        <label for="" class="control-label col-md-3 col-sm-3 col-xs-12">PIC</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input  maxlength="11" type="" name="" id=""
                                     class="form-control"
                                    required="required" placeholder="PIC">
                        </div>
                        @if($errors->has(''))
                            <span class="text-danger">{!! $errors->first('') !!}</span>
                        @endif
                    </div>

                    @csrf
                    <div class="form-group">
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

                            <button type="submit" class="btn btn-success">Create Aset</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    @parent
    {{ Html::script(mix('assets/admin/js/dashboard.js')) }}
    {{ Html::script(mix('assets/app/js/forms.js')) }}
@endsection

@section('styles')
    @parent
    {{ Html::style(mix('assets/admin/css/dashboard.css')) }}
@endsection

@push('scripts')
    
@endpush
