

<?php $__env->startSection('title'); ?>
    Product 
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div
            class="section-content section-dashboard-home"
            data-aos="fade-up"
          >
            <div class="container-fluid">
              <div class="dashboard-heading">
                <h2 class="dashboard-title">Product</h2>
                <p class="dashboard-subtitle">Create New Product</p>
              </div>
              <div class="dashboard-content">
                <div class="row">
                    <div class="col-md-12">
                        <?php if($errors->any()): ?>
                            <div class="alert alert-danger">
                            <ul>
                                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><?php echo e($error); ?></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                        <?php endif; ?>
                      <div class="card">
                        <div class="card-body">
                                <form action="<?php echo e(route('product.store')); ?>" method="POST" enctype="multipart/form-data">
                                        <?php echo csrf_field(); ?>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="from-group">
                                                    <label>Nama Product</label>
                                                    <input type="text" name="name" class="from-control" required>
                                                </div>
                                            </div>
                                        
                                            <div class="col-md-12">
                                                <div class="from-group">
                                                    <label>Pemilik Product</label>
                                                   <select name="users_id" class="form-control">
                                                       <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                           <option value="<?php echo e($user->id); ?>"><?php echo e($user->name); ?></option>
                                                       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                   </select>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="from-group">
                                                    <label>Kategori Product</label>
                                                   <select name="categories_id" class="form-control">
                                                       <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                           <option value="<?php echo e($category->id); ?>"><?php echo e($category->name); ?></option>
                                                       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                   </select>
                                                </div>
                                            </div>
                                                
                                            <div class="col-md-12">
                                                <div class="from-group">
                                                    <label>Harga Product</label>
                                                    <input type="number" name="price" class="from-control" required>
                                                </div>
                                            </div>
                                        
                                            <div class="col-md-12">
                                                <div class="from-group">
                                                    <label>Deskripsi Product</label>
                                                    <textarea name="description" id="editor" cols="30"></textarea>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col text-right">
                                                    <button type="submit" class="btn btn-success px-5">
                                                        Save Now
                                                    </button>
                                            </div>
                                        </div>
                                   </form>
                            </div>
                         </div>
                    </div>
                </div>
             </div>
          </div>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('addon-script'); ?>
    <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
     <script>
        CKEDITOR.replace( 'editor' );
    </script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\UTSIF430Restaurant-Laravel\resources\views/pages/admin/product/create.blade.php ENDPATH**/ ?>