

<?php $__env->startSection('title'); ?>
    Store Dashboard Transaction
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
        <div
            class="section-content section-dashboard-home"
            data-aos="fade-up"
          >
            <div class="container-fluid">
              <div class="dashboard-heading">
                <h2 class="dashboard-title">Transactions</h2>
                <p class="dashboard-subtitle">
                  Big result start from the small one
                </p>
              </div>
              <div class="dashboard-content">
                <div class="row">
                  <div class="col-12 mt-2">
                    <ul
                      class="nav nav-pills mb-3"
                      id="pills-tab"
                      role="tablist"
                    >
                      <li class="nav-item" role="presentation">
                        <a
                          class="nav-link active"
                          id="pills-home-tab"
                          data-toggle="pill"
                          href="#pills-home"
                          role="tab"
                          aria-controls="pills-home"
                          aria-selected="true"
                          >Sell Product</a
                        >
                      </li>
                      <li class="nav-item" role="presentation">
                        <a
                          class="nav-link"
                          id="pills-profile-tab"
                          data-toggle="pill"
                          href="#pills-profile"
                          role="tab"
                          aria-controls="pills-profile"
                          aria-selected="false"
                          >Buy Product</a
                        >
                      </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                      <div
                        class="tab-pane fade show active"
                        id="pills-home"
                        role="tabpanel"
                        aria-labelledby="pills-home-tab"
                      >
                        <?php $__currentLoopData = $sellTransactions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $transaction): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <a
                          href="<?php echo e(route('dashboard-transaction-details', $transaction->id)); ?>"
                          class="card card-list d-block"
                          >
                            <div class="card-body">
                              <div class="row">
                                <div class="col-md-1">
                                  <img
                                    src="<?php echo e(Storage::url($transaction->product->galleries->first()->photos ?? '')); ?>"
                                    class="w-75"
                                  />
                                </div>
                                <div class="col-md-4">
                                  <?php echo e($transaction->product->name); ?>

                                </div>
                                <div class="col-md-3">
                                  <?php echo e($transaction->product->user->store_name); ?>

                                </div>
                                <div class="col-md-3">
                                  <?php echo e($transaction->created_at); ?>

                                </div>
                                <div class="col-md-1 d-none d-md-block">
                                  <img
                                    src="/images/dashboard-arrow-right.svg"
                                    alt=""
                                  />
                                </div>
                              </div>
                            </div>
                          </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </div>
                      <div
                        class="tab-pane fade"
                        id="pills-profile"
                        role="tabpanel"
                        aria-labelledby="pills-profile-tab"
                      >
                        <?php $__currentLoopData = $buyTransactions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $transaction): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <a
                          href="<?php echo e(route('dashboard-transaction-details', $transaction->id)); ?>"
                          class="card card-list d-block"
                          >
                            <div class="card-body">
                              <div class="row">
                                <div class="col-md-1">
                                  <img
                                    src="<?php echo e(Storage::url($transaction->product->galleries->first()->photos ?? '')); ?>"
                                    class="w-75"
                                  />
                                </div>
                                <div class="col-md-4">
                                  <?php echo e($transaction->product->name); ?>

                                </div>
                                <div class="col-md-3">
                                  <?php echo e($transaction->product->user->store_name); ?>

                                </div>
                                <div class="col-md-3">
                                  <?php echo e($transaction->created_at); ?>

                                </div>
                                <div class="col-md-1 d-none d-md-block">
                                  <img
                                    src="/images/dashboard-arrow-right.svg"
                                    alt=""
                                  />
                                </div>
                              </div>
                            </div>
                          </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.dashboard', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\UTSIF430Restaurant-Laravel\resources\views/pages/dashboard-transactions.blade.php ENDPATH**/ ?>