<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title><?php echo $__env->yieldContent('title'); ?></title>

    <link
      rel="icon"
      href="/images/logo.svg"
      sizes="32x32"
    />

    <?php echo $__env->yieldPushContent('prepend-style'); ?>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <link href="/style/main.css" rel="stylesheet" />
    <?php echo $__env->yieldPushContent('addon-style'); ?>
  </head>

  <body>
    <div class="page-dashboard">
      <div class="d-flex" id="wrapper" data-aos="fade-right">
        <!-- Sidebar -->
        <div class="border-right" id="sidebar-wrapper">
          <div class="sidebar-heading text-center">
            <img src="/images/dashboard-store-logo.svg" alt="" class="my-4" />
          </div>
          <div class="list-group list-group-flush">
            <a
              href="<?php echo e(route('dashboard')); ?>"
              class="list-group-item list-group-item-action <?php echo e((request()->is('dashboard')) ? 'active' : ''); ?>"
            >
              Dashboard
            </a>
            <a
              href="<?php echo e(route('dashboard-product')); ?>"
              class="list-group-item list-group-item-action <?php echo e((request()->is('dashboard/products*')) ? 'active' : ''); ?>"
            >
              My Products
            </a>
            <a
              href="<?php echo e(route('dashboard-transaction')); ?>"
              class="list-group-item list-group-item-action <?php echo e((request()->is('dashboard/transactions*')) ? 'active' : ''); ?>"
            >
              Transactions
            </a>
            <a
              href="<?php echo e(route('dashboard-settings-store')); ?>"
              class="list-group-item list-group-item-action <?php echo e((request()->is('dashboard/settings*')) ? 'active' : ''); ?>"
            >
              Store Settings
            </a>
            <a
              href="<?php echo e(route('dashboard-settings-account')); ?>"
              class="list-group-item list-group-item-action <?php echo e((request()->is('dashboard/account*')) ? 'active' : ''); ?>"
            >
              My Account
            </a>
            <a href="<?php echo e(route('logout')); ?>" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="list-group-item list-group-item-action">
              Sign Out
            </a>
            <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                <?php echo csrf_field(); ?>
            </form>
          </div>
        </div>

        <!-- Page Content -->
        <div id="page-content-wrapper">
          <nav
            class="navbar navbar-expand-lg navbar-light navbar-store fixed-top"
            data-aos="fade-down"
          >
            <div class="container-fluid">
              <button
                class="btn btn-secondary d-md-none mr-auto mr-2"
                id="menu-toggle"
              >
                &laquo; Menu
              </button>
              <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
              >
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Desktop Menu -->
                <ul class="navbar-nav d-none d-lg-flex ml-auto">
                  <li class="nav-item dropdown">
                    <a
                      href="#"
                      class="nav-link"
                      id="navbarDropdown"
                      role="button"
                      data-toggle="dropdown"
                    >
                      <img
                        src="/images/icon-user.png"
                        alt="Icon User"
                        class="rounded-circle mr-2 profile-picture"
                      />
                      Hi, <?php echo e(Auth::user()->name); ?>

                    </a>
                    <div class="dropdown-menu">
                      <a href="<?php echo e(route('dashboard')); ?>" class="dropdown-item">Dashboard</a>
                      <a href="<?php echo e(route('dashboard-settings-account')); ?>" class="dropdown-item"
                        >Settings</a
                      >
                      <div class="dropdown-divider"></div>
                      <a href="<?php echo e(route('logout')); ?>" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="dropdown-item">Logout</a>
                      <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                          <?php echo csrf_field(); ?>
                      </form>
                    </div>
                  </li>
                 <li class="nav-item">
                    <a href="#" class="nav-link d-inline-block mt-2">
                        <?php
                            $carts = \App\Cart::where('users_id', Auth::user()->id)->count();
                        ?>

                        <?php if($carts > 0): ?>
                            <img src="/images/icon-cart-filled.svg" alt="" />
                            <div class="card-badge"><?php echo e($carts); ?></div>
                        <?php else: ?>
                            <img src="/images/icon-cart-empty.svg" alt="" />
                        <?php endif; ?>
                    </a>
                  </li>
                </ul>

                <!-- Mobile Menu -->
                <ul class="navbar-nav d-block d-lg-none">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      Hi, <?php echo e(Auth::user()->name); ?>

                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link d-inline-block">
                      Cart
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>

          
          <?php echo $__env->yieldContent('content'); ?>

        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <?php echo $__env->yieldPushContent('prepend-script'); ?>
    <script src="/vendor/jquery/jquery.slim.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>
    <script>
      $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
      });
    </script>
    <?php echo $__env->yieldPushContent('addon-script'); ?>
  </body>
</html>
<?php /**PATH C:\laragon\www\UTSIF430Restaurant-Laravel\resources\views/layouts/dashboard.blade.php ENDPATH**/ ?>