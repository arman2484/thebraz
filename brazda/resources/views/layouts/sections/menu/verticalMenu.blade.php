@php
    $configData = Helper::appClasses();
@endphp

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">

    <!-- ! Hide app brand if navbar-full -->
    @if (!isset($navbarFull))
        <div class="app-brand demo" style="    padding-left: 1.3rem;">
            <a href="{{ url('/app/ecommerce/dashboard') }}" class="app-brand-link">
                <img src="{{ asset('assets/images/img-8.jpg') }}" alt="Brazda" class="app-brand-logo demo"
                    style="width: 3.4rem;height: 3rem;object-fit: cover;">
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
                <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
        </div>
    @endif


    <div class="menu-inner-shadow"></div>

    <ul class="menu-inner py-1">
        @foreach ($menuData[0]->menu as $menu)
            {{-- adding active and open class if child is active --}}

            {{-- menu headers --}}
            @if (isset($menu->menuHeader))
                <li class="menu-header small text-uppercase">
                    <span class="menu-header-text">{{ $menu->menuHeader }}</span>
                </li>
            @else
                {{-- active menu method --}}
                @php
                    $activeClass = null;
                    $currentRouteName = Route::currentRouteName();

                    if ($currentRouteName === $menu->slug) {
                        $activeClass = 'active';
                    } elseif (isset($menu->submenu)) {
                        if (gettype($menu->slug) === 'array') {
                            foreach ($menu->slug as $slug) {
                                if (str_contains($currentRouteName, $slug) and strpos($currentRouteName, $slug) === 0) {
                                    $activeClass = 'active open';
                                }
                            }
                        } else {
                            if (str_contains($currentRouteName, $menu->slug) and strpos($currentRouteName, $menu->slug) === 0) {
                                $activeClass = 'active open';
                            }
                        }
                    }
                @endphp

                {{-- main menu --}}
                <li class="menu-item {{ $activeClass }}">
                    <a href="{{ isset($menu->url) ? url($menu->url) : 'javascript:void(0);' }}"
                        class="{{ isset($menu->submenu) ? 'menu-link menu-toggle' : 'menu-link' }}"
                        @if (isset($menu->target) and !empty($menu->target)) target="_blank" @endif>
                        @isset($menu->icon)
                            <i class="{{ $menu->icon }}"></i>
                        @endisset
                        <div class="text-truncate">{{ isset($menu->name) ? __($menu->name) : '' }}</div>
                    </a>

                    {{-- submenu --}}
                    @isset($menu->submenu)
                        @include('layouts.sections.menu.submenu', ['menu' => $menu->submenu])
                    @endisset
                </li>
            @endif
        @endforeach
    </ul>

</aside>
