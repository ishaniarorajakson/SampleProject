<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>KAIZEN Portals</title>
    <style>
        .nav-item .hover-text {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            background-color: #000; /* Optional: background color for the text */
            color: #fff; /* Text color */
            padding: 2px 5px;
            border-radius: 3px;
            font-size: 12px;
            top: 100%; /* Positioning below the icon */
            left: 50%;
            transform: translateX(-50%);
            white-space: nowrap;
            transition: opacity 0.2s ease-in-out, visibility 0.2s ease-in-out;
        }

        .nav-item a:hover .hover-text {
            visibility: visible;
            opacity: 1;
        }

    </style>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link href="..\adminlte\plugins\fontawesome-free\css\all.min.css" rel="stylesheet" />
    
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link href="..\adminlte\plugins\tempusdominus-bootstrap-4\css\tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
   
    <!-- iCheck -->
    <link href="..\adminlte\plugins\icheck-bootstrap\icheck-bootstrap.min.css" rel="stylesheet" />
   
    <!-- JQVMap -->
    <link href="..\adminlte\plugins\jqvmap\jqvmap.min.css" rel="stylesheet" />

    <!-- Theme style -->
    <link href="..\adminlte\dist\css\adminlte.min.css" rel="stylesheet" />
    
    <!-- overlayScrollbars -->
    <link href="..\adminlte\plugins\overlayscrollbars\css\OverlayScrollbars.min.css" rel="stylesheet" />
    <!-- Daterange picker -->
    <link href="..\adminlte\plugins\daterangepicker\daterangepicker.css" rel="stylesheet" />
    <!-- summernote -->
    <link href="..\adminlte\plugins\summernote\summernote-bs4.min.css" rel="stylesheet" />
    <!--DataTables-->
    <link href="..\adminlte\plugins\datatables-bs4\css\dataTables.bootstrap4.min.css" rel="stylesheet" />
    <link href="..\adminlte\plugins\datatables-responsive\css\responsive.bootstrap4.min.css" rel="stylesheet" />
    <link href="..\adminlte\plugins\datatables-buttons\css\buttons.bootstrap4.min.css" rel="stylesheet" />
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
         
            <img class="animation__shake" src="..\adminlte\dist\img\JAKSON-LOGO.png" alt="AdminLTELogo" height="200" width="300">
        </div>

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a asp-controller="Home" asp-action="Index" class="nav-link">Home</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a asp-controller="KaizenForms" asp-action="Create" class="nav-link">Create New KAIZEN</a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <!-- Navbar Search -->
                <li class="nav-item">
                    <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                        <i title="Search" class="fas fa-search"></i>
                    </a>
                    <div class="navbar-search-block">
                        <form class="form-inline">
                            <div class="input-group input-group-sm">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                                <div class="input-group-append">
                                    <button class="btn btn-navbar" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                    <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </li>



                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i title="Notifications" class="far fa-bell"></i>
                        <span class="badge badge-warning navbar-badge">15</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-item dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-envelope mr-2"></i> 4 new messages
                            <span class="text-muted float-right text-sm">3 mins</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-users mr-2"></i> 8 friend requests
                            <span class="text-muted float-right text-sm">12 hours</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-file mr-2"></i> 3 new reports
                            <span class="text-muted float-right text-sm">2 days</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i title="Expand Screen" class="fas fa-expand-arrows-alt"></i>

                    </a>
                </li>
                <li class="nav-item">
                    <partial name="_LoginPartial" /> <!-- Logout icon -->

                </li>

                <li class="nav-item">
                    <a class="nav-link">
                        <img src="..\adminlte\dist\img\JAKSON-LOGO.png" alt="AdminLTE Logo" style="height:100%; width:100%">
                    </a>
                </li>



            </ul>
        </nav>
        <!-- /.navbar -->
        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link">
                <img src="..\adminlte\dist\img\cropped-logo-jakson.png" alt="AdminLTE Logo" style="height:20%; width:20%">
                <span class="brand-text font-weight-light">KAIZEN Portal</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <div class="form-inline">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-sidebar">
                                <i class="fas fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
                             with font-awesome or any other icon font library -->
                        <li class="nav-item">
                            <a asp-controller="Home" asp-action="Index" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard

                                </p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a asp-controller="KaizenForms" asp-action="Create" class="nav-link">
                                <i class="nav-icon fas fa-edit"></i>
                                <p>
                                    Create New KAIZEN
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-check-circle"></i>
                                <p>
                                    Pending Approvals
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-star"></i>
                                <p>
                                    My Points
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-cog"></i>
                                <p>
                                    Setup
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a asp-controller="ImpactAreas" asp-action="Index" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Areas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a asp-controller="Departments" asp-action="Index" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Departments</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Users</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a asp-controller="Zones" asp-action="Index" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Zone</p>
                                    </a>
                                </li>

                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-info">
            <div class="inner">
                <h3>5</h3>

                <p>Total KAIZEN</p>
            </div>
            <div class="icon">
                <i class="ion ion-document-text"></i>
            </div>
            <a asp-controller="KaizenForms" asp-action="Index" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-success">
            <div class="inner">
                <h3>3</h3>

                <p>Approved KAIZEN</p>
            </div>
            <div class="icon">
                <i class="fas fa-thumbs-up"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-warning">
            <div class="inner">
                <h3>44</h3>

                <p>Total Gained Points</p>
            </div>
            <div class="icon">
                <i class="ion ion-star"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-danger">
            <div class="inner">
                <h3>2</h3>

                <p>Pending Approvals</p>
            </div>
            <div class="icon">
                <i class="ion ion-clock"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <!-- ./col -->
</div>
<!-- /.row -->
<!-- Main row -->
<div class="row">
    <!-- right col (We are only adding the ID to make the widgets sortable)-->
    <section class="col-lg-12 connectedSortable">
        <!-- solid sales graph -->
        <div class="card bg-gradient-info">
            <div class="card-header border-0">
                <h3 class="card-title">

                    Kaizen Report
                </h3>

                <div class="card-tools">
                    <button type="button" class="btn bg-info btn-sm" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn bg-info btn-sm" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
            </div>
            <div class="card-body">
                <canvas class="chart" id="line-chart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
            </div>
            <!-- /.card-body -->
            <div class="card-footer bg-transparent">
                <div class="row">
                    <div class="col-4 text-center">
                        <input type="text" class="knob" data-readonly="true" value="20" data-width="60" data-height="60"
                               data-fgColor="#39CCCC">

                        <div class="text-white">Total KAIZEN</div>
                    </div>
                    <!-- ./col -->
                    <div class="col-4 text-center">
                        <input type="text" class="knob" data-readonly="true" value="50" data-width="60" data-height="60"
                               data-fgColor="#39CCCC">

                        <div class="text-white">Approved KAIZEN</div>
                    </div>
                    <!-- ./col -->
                    <div class="col-4 text-center">
                        <input type="text" class="knob" data-readonly="true" value="30" data-width="60" data-height="60"
                               data-fgColor="#39CCCC">

                        <div class="text-white">Pending KAIZEN</div>
                    </div>
                    <!-- ./col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.card-footer -->
        </div>
    </section>
    <!-- right col -->
</div>
<!-- /.row (main row) -->

                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->
    <!-- jQuery -->
    <script src="..\adminlte\plugins\jquery\jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="..\adminlte\plugins\jquery-ui\jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="..\adminlte\plugins\bootstrap\js\bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="..\adminlte\plugins\chart.js\Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="..\adminlte\plugins\sparklines\sparkline.js"></script>
    <!-- JQVMap -->
    <script src="..\adminlte\plugins\jqvmap\jquery.vmap.min.js"></script>
    <script src="..\adminlte\plugins\jqvmap\maps\continents\jquery.vmap.asia.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="..\adminlte\plugins\jquery-knob\jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="..\adminlte\plugins\moment\moment.min.js"></script>
    <script src="..\adminlte\plugins\daterangepicker\daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="..\adminlte\plugins\tempusdominus-bootstrap-4\js\tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summernote -->
    <script src="..\adminlte\plugins\summernote\summernote-bs4.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="..\adminlte\plugins\overlayscrollbars\js\jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="..\adminlte\dist\js\adminlte.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="..\adminlte\dist\js\demo.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="..\adminlte\dist\js\pages\dashboard.js"></script>
    <!--DataTables-->
    <script src="..\adminlte\plugins\datatables\jquery.dataTables.min.js"></script>
    <script src="..\adminlte\plugins\datatables-bs4\js\dataTables.bootstrap4.min.js"></script>
    <script src="..\adminlte\plugins\datatables-responsive\js\dataTables.responsive.min.js"></script>
    <script src="..\adminlte\plugins\datatables-responsive\js\responsive.bootstrap4.min.js"></script>
    <script src="..\adminlte\plugins\datatables-buttons\js\dataTables.buttons.min.js"></script>
    <script src="..\adminlte\plugins\datatables-buttons\js\buttons.bootstrap4.min.js"></script>
    <script src="..n\adminlte\plugins\jszip\jszip.min.js"></script>
    <script src="..\adminlte\plugins\pdfmake\pdfmake.min.js"></script>
    <script src="..\adminlte\plugins\pdfmake\vfs_fonts.js"></script>
    <script src="..\adminlte\plugins\datatables-buttons\js\buttons.html5.min.js"></script>
    <script src="..\adminlte\plugins\datatables-buttons\js\buttons.print.min.js"></script>
    <script src="..\adminlte\plugins\datatables-buttons\js\buttons.colVis.min.js"></script>
    <script>
        $(function () {
            $("#example1").DataTable({
                "responsive": true, "lengthChange": false, "autoWidth": false,
                "buttons": ["csv", "excel", "pdf", "colvis"]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            // Get the current URL path
            const currentPath = window.location.pathname;

            // Loop through each sidebar link
            $('.nav-sidebar .nav-link').each(function () {
                // Get the 'href' attribute or asp-action of the link
                const linkPath = $(this).attr('href') || $(this).data('action');

                // If the current path matches the link's path
                if (currentPath.includes(linkPath)) {
                    // Remove 'active' class from all links
                    $('.nav-sidebar .nav-link').removeClass('active');

                    // Add 'active' class to the matching link
                    $(this).addClass('active');
                }
            });
        });
    </script>
</body>
</html>