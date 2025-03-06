<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KAIZEN Portal</title>
<style>
       .nav-item .hover-text {
           visibility: hidden;
           opacity: 0;
           position: absolute;
           background-color: #000;
           color: #fff;
           padding: 2px 5px;
           border-radius: 3px;
           font-size: 12px;
           top: 100%;
           left: 50%;
           transform: translateX(-50%);
           white-space: nowrap;
           transition: opacity 0.2s ease-in-out, visibility 0.2s ease-in-out;
       }
       .nav-item a:hover .hover-text {
           visibility: visible;
           opacity: 1;
       }
       /* Styling the modal form */
       .modal-content {
           width: 600px;
       }
</style>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="..\adminlte\dist\css\adminlte.min.css" rel="stylesheet" />
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
<ul class="navbar-nav">
<li class="nav-item">
<a class="nav-link" data-widget="pushmenu" href="#" role="button">
<i class="fas fa-bars"></i>
</a>
</li>
<li class="nav-item d-none d-sm-inline-block">
<a asp-controller="Home" asp-action="Index" class="nav-link">Home</a>
</li>
<li class="nav-item d-none d-sm-inline-block">
<a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#employeeFormModal">Create New KAIZEN</a>
</li>
</ul>
</nav>
<!-- Sidebar -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
<a href="index3.html" class="brand-link">
<img src="..\adminlte\dist\img\cropped-logo-jakson.png" alt="AdminLTE Logo" style="height:20%; width:20%">
<span class="brand-text font-weight-light">KAIZEN Portal</span>
</a>
<div class="sidebar">
<nav class="mt-2">
<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
<li class="nav-item">
<a asp-controller="KaizenForms" asp-action="Create" class="nav-link">
<i class="nav-icon fas fa-edit"></i>
<p>Create New KAIZEN</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-check-circle"></i>
<p>Pending Approvals</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-star"></i>
<p>My Points</p>
</a>
</li>
</ul>
</nav>
</div>
</aside>
<!-- Content Wrapper -->
<div class="content-wrapper">
<section class="content">
<div class="container-fluid">
<div class="row">
<div class="col-lg-3 col-6">
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
<div class="col-lg-3 col-6">
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
<div class="col-lg-3 col-6">
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
</div>
</div>
</section>
</div>
<!-- Modal for Employee Form -->
<div class="modal fade" id="employeeFormModal" tabindex="-1" aria-labelledby="employeeFormModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="employeeFormModalLabel">Employee Information</h5>
<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
<form id="employeeForm">
<div class="mb-3">
<label for="employeeName" class="form-label">Employee Name</label>
<input type="text" class="form-control" id="employeeName" placeholder="Enter employee name" required>
</div>
<div class="mb-3">
<label for="employeeDepartment" class="form-label">Department</label>
<input type="text" class="form-control" id="employeeDepartment" placeholder="Enter department" required>
</div>
<div class="mb-3">
<label for="employeeRole" class="form-label">Role</label>
<input type="text" class="form-control" id="employeeRole" placeholder="Enter role" required>
</div>
<div class="mb-3">
<label for="employeeEmail" class="form-label">Email</label>
<input type="email" class="form-control" id="employeeEmail" placeholder="Enter email" required>
</div>
<div class="mb-3">
<label for="employeePhone" class="form-label">Phone</label>
<input type="tel" class="form-control" id="employeePhone" placeholder="Enter phone number" required>
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
<button type="submit" form="employeeForm" class="btn btn-primary">Submit</button>
</div>
</div>
</div>
</div>
</div>
<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>