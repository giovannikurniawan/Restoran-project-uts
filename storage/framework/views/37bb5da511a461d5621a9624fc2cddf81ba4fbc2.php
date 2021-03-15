

<?php $__env->startSection('title'); ?>
    User 
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div
            class="section-content section-dashboard-home"
            data-aos="fade-up"
          >
            <div class="container-fluid">
              <div class="dashboard-heading">
                <h2 class="dashboard-title">User</h2>
                <p class="dashboard-subtitle">List Of Users</p>
              </div>
              <div class="dashboard-content">
                <div class="row">
                    <div class="col-md-12">
                      <div class="card">
                        <div class="card-body">
                          <a href="<?php echo e(route('user.create')); ?>" class="btn btn-primary mb-3">
                            + Tambah User Baru
                          </a>
                          <div class="table-responsive">
                            <table class="table table-hover scroll-horizontal-vertical w-100" id="crudTable">
                              <thead>
                                <tr>
                                  <th>ID</th>
                                  <th>Nama</th>
                                  <th>Email</th>
                                  <th>Roles</th>
                                  <th>Aksi</th>
                                </tr>
                              </thead>
                              <tbody></tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                </div>
              </div>
            </div>
          </div>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('addon-script'); ?>
    <script>
      var datatable = $('#crudTable').DataTable({
        processing: true,
        serverSide: true,
        ordering: true,
        ajax: {
          url: '<?php echo url()->current(); ?>',
         },
         columns :[
           { data: 'id', name: 'id'},
           { data: 'name', name: 'name'}, 
           { data: 'email', name: 'email'},
           { data: 'roles', name: 'roles'},
           { 
             data: 'action',
             name: 'action', 
             orderable: 'false',
             searcable: 'false',
             width: '15%'
           },
         ]
      })
     </script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\UTSIF430Restaurant-Laravel\resources\views/pages/admin/user/index.blade.php ENDPATH**/ ?>