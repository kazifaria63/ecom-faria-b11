<div class="left-sidenav">
    <!-- LOGO -->
    <div class="brand">
        <a class='logo' href='index.html'>
                    <span>
                        <img src="{{ asset('/') }}admin/assets/images/logo-sm.png" alt="logo-small" class="logo-sm">
                    </span>
            <span>
                        <img src="{{ asset('/') }}admin/assets/images/logo.png" alt="logo-large" class="logo-lg logo-light">
                        <img src="{{ asset('/') }}admin/assets/images/logo-dark.png" alt="logo-large" class="logo-lg logo-dark">
                    </span>
        </a>
    </div>
    <!--end logo-->
    <div class="menu-content h-100" data-simplebar>
        <ul class="metismenu left-sidenav-menu">
            <li class="menu-label mt-0">Main</li>
            <li>
                <a href="javascript: void(0);"> <i data-feather="home" class="align-self-center menu-icon"></i><span>Dashboard</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
            </li>
            <li>
                <a href="javascript: void(0);"> <i data-feather="home" class="align-self-center menu-icon"></i><span>Settings Module</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                <ul class="nav-second-level" aria-expanded="false">
                    <li class="nav-item"><a class='nav-link' href='{{ route('category.index') }}'><i class="ti-control-record"></i> Category </a></li>
                    <li class="nav-item"><a class='nav-link' href='{{ route('sub-category.index') }}'><i class="ti-control-record"></i> Sub Category </a></li>
                    <li class="nav-item"><a class='nav-link' href='{{ route('brand.index') }}'><i class="ti-control-record"></i> Brand </a></li>
                    <li class="nav-item"><a class='nav-link' href='{{ route('unit.index') }}'><i class="ti-control-record"></i> Unit </a></li>
                    <li class="nav-item"><a class='nav-link' href='{{ route('color.index') }}'><i class="ti-control-record"></i> Color </a></li>
                    <li class="nav-item"><a class='nav-link' href='{{ route('size.index') }}'><i class="ti-control-record"></i> Size </a></li>
                </ul>
            </li>
            <li>
                <a href="javascript: void(0);"> <i data-feather="home" class="align-self-center menu-icon"></i><span>Product Module</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                <ul class="nav-second-level" aria-expanded="false">
                    <li class="nav-item"><a class='nav-link' href='{{ route('product.index') }}'><i class="ti-control-record"></i>All Product </a></li>
                    <li class="nav-item"><a class='nav-link' href='{{ route('product.create') }}'><i class="ti-control-record"></i>Add Product </a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
