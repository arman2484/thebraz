@php
    $customizerHidden = 'customizer-hide';
@endphp

@extends('layouts/layoutMaster')

@section('title', 'Login Basic - Pages')

@section('vendor-style')
    <!-- Vendor -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/@form-validation/umd/styles/index.min.css') }}" />
@endsection

@section('page-style')
    <!-- Page -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/css/pages/page-auth.css') }}">
@endsection

@section('vendor-script')
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/bundle/popular.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js') }}"></script>
@endsection

@section('page-script')
    <script src="{{ asset('assets/js/pages-auth.js') }}"></script>
@endsection

@section('content')
    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card">
                    <div class="card-body">
                        <!-- Image instead of Logo -->
                        <div class="app-brand justify-content-center">
                            <img src="{{ asset('assets/images/img-8.jpg') }}" alt="Brazda"
                                style="width: 180px; height: 170px;">
                        </div>

                        <!-- /Image instead of Logo -->


                        <!-- ... Your existing HTML ... -->

                        <form id="formAuthentication" class="mb-3" action="{{ route('auth-login') }}" method="post">
                            @csrf
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="username" name="username"
                                    placeholder="Enter your username" autofocus>
                                @if ($errors->has('username'))
                                    <p class="error-message">{{ $errors->first('username') }}</p>
                                @endif
                            </div>
                            <div class="mb-3 form-password-toggle">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label" for="password">Password</label>
                                </div>
                                <div class="input-group input-group-merge">
                                    <input type="password" id="password" class="form-control" name="password"
                                        placeholder="•••••••••" aria-describedby="password" />
                                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                                    @if ($errors->has('password'))
                                        <p class="error-message">{{ $errors->first('password') }}</p>
                                    @endif
                                </div>
                            </div>
                            @if (Session::has('success'))
                                <p class="success-message">{{ Session::get('success') }}</p>
                            @endif
                            @if ($errors->has('error'))
                                <p class="error-message" style="color: red;">{{ $errors->first('error') }}</p>
                            @endif
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary d-grid w-100"
                                    style="background-color: black; color: white; border-color: black;">Sign in</button>
                            </div>
                        </form>
                        <style>
                            /* Override Bootstrap's default hover color */
                            .btn-primary:hover {
                                background-color: black !important;
                                border-color: black !important;
                            }
                        </style>
                    </div>
                </div>
            </div>
            <!-- /Register -->
        </div>
    </div>

@endsection
