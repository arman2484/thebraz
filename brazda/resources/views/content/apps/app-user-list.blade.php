@extends('layouts/layoutMaster')

@section('title', 'User List - Pages')

@section('vendor-style')
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/select2/select2.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/@form-validation/umd/styles/index.min.css') }}" />
@endsection

@section('vendor-script')
    <script src="{{ asset('assets/vendor/libs/moment/moment.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/select2/select2.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/bundle/popular.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/cleavejs/cleave.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/cleavejs/cleave-phone.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
@endsection

@section('page-script')
    <script src="{{ asset('assets/js/app-user-list.js') }}"></script>

@endsection

@section('content')
    <div class="row g-4 mb-4">
        @if (session()->has('message'))
            <div class="alert alert-success">
                {{ session()->get('message') }}
            </div>
        @endif
    </div>
    <!-- Users List Table -->
    <div class="card">
        <div class="card-datatable table-responsive">
            <table class="datatables-users table border-top">
                <thead>
                    <tr>
                        <th></th>
                        <th>User</th>
                        <th>About</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
            </table>
        </div>
        <!-- Offcanvas to add new user -->
        {{-- <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasAddUser" aria-labelledby="offcanvasAddUserLabel">
            <div class="offcanvas-header">
                <h5 id="offcanvasAddUserLabel" class="offcanvas-title">Add User</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body mx-0 flex-grow-0">
                <form class="add-new-user pt-0" id="addNewUserForm" method="post"
                    action="{{ route('app-user-usersave') }}" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label" for="name">Full Name</label>
                        <input type="text" id="name" value="{{ old('name') }}" placeholder="John Doe"
                            name="name" class="form-control @error('name') is-invalid @enderror" />
                        @error('name')
                            <p class="invalid-feedback">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="email">Email</label>
                        <input type="email" id="email" value="{{ old('email') }}" placeholder="john.doe@example.com"
                            name="email" class="form-control @error('email') is-invalid @enderror" />
                        @error('email')
                            <p class="invalid-feedback">{{ $message }}</p>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="about">About</label>
                        <textarea id="about" name="about" rows="4" placeholder="Enter user description"
                            class="form-control @error('about') is-invalid @enderror">{{ old('about') }}</textarea>
                        @error('about')
                            <p class="invalid-feedback">{{ $message }}</p>
                        @enderror
                    </div>

                    <div class="mb-4">
                        <label class="form-label" for="status">Status</label>
                        <select id="status" name="status" class="form-select">
                            <option value="Verified" @if (old('status') === 'Verified') selected @endif>Verified</option>
                            <option value="Pending" @if (old('status') === 'Pending') selected @endif>Pending</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label btn btn-primary" for="profile_pic">Avatar (Image)</label>
                        <div class="d-flex align-items-center">
                            <img id="selectedImage" src="" alt=""
                                style="max-width: 100px; max-height: 100px; margin-right: 10px; margin-top: 10px;" />
                            <input class="d-none" name="profile_pic" type="file" id="profile_pic"
                                class="form-control-file" accept="image/*" onchange="displayImage(this)" />
                        </div>
                        @if ($errors->has('profile_pic'))
                            <p class="invalid-feedback" style="display: block;">{{ $errors->first('profile_pic') }}</p>
                        @endif
                    </div>

                    <input type="submit" class="btn btn-primary me-sm-3 me-1 data-submit" value="Submit"
                        onclick="submitForm(event)">
                    <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="offcanvas">Cancel</button>
                </form>
            </div>
        </div> --}}

        @foreach ($users as $user)
            <div class="modal fade" id="editStatusModal{{ $user->id }}" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Edit User Status</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="editUserStatusForm{{ $user->id }}" method="post"
                                action="{{ route('app-user-userupdate', ['id' => $user->id]) }}">
                                @csrf
                                <div class="mb-3">
                                    <label for="status{{ $user->id }}" class="form-label">Status</label>
                                    <select id="status{{ $user->id }}" name="status" class="form-select">
                                        <option value="Active" @if ($user->status === 'Active') selected @endif>Active
                                        </option>
                                        <option value="Block" @if ($user->status === 'Block') selected @endif>Block
                                        </option>
                                    </select>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary"
                                onclick="saveUserStatus({{ $user->id }})">Save</button>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

@endsection
