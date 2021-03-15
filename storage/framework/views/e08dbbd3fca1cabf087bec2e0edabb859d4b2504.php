

<?php $__env->startSection('title'); ?>
    Store Dashboard Product
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
        <div
            class="section-content section-dashboard-home"
            data-aos="fade-up"
          >
            <div class="container-fluid">
              <div class="dashboard-heading">
                <h2 class="dashboard-title">My Product</h2>
                <p class="dashboard-subtitle">Manage it well and get money</p>
              </div>
              <div class="dashboard-content">
                <div class="row">
                  <div class="col-12">
                    <a
                      href="<?php echo e(route('dashboard-product-create')); ?>"
                      class="btn btn-success"
                      >Add New Product</a
                    >
                  </div>
                </div>
                <div class="row mt-4">
                  <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                      <a
                        href="<?php echo e(route('dashboard-product-details', $product->id)); ?>"
                        class="card card-dashboard-product d-block"
                      >
                        <div class="card-body">
                          <img
                            src="<?php echo e(Storage::url($product->galleries->first()->photos ?? '')); ?>"
                            alt=""
                            class="w-100 mb-2"
                          />
                          <div class="product-title"><?php echo e($product->name); ?></div>
                          <div class="product-category"><?php echo e($product->category->name); ?></div>
                        </div>
                      </a>
                    </div>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
              </div>
            </div>
          </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.dashboard', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\UTSIF430Restaurant-Laravel\resources\views/pages/dashboard-products.blade.php ENDPATH**/ ?>