<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Real_Kaizen.User" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Kaizen Portal</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<style>
       /* Body Styling */
       body {
           font-family: 'Arial', sans-serif;
           background-color: #f4f7fc;
           margin: 0;
       }
       /* Sidebar Styling */
       .sidebar {
           position: fixed;
           top: 0;
           left: -250px; /* Initially hidden */
           width: 250px;
           height: 100%;
           background-color: #0066cc;
           padding-top: 20px;
           overflow-y: auto;
           box-shadow: 4px 0 6px rgba(0, 0, 0, 0.1);
           transition: left 0.3s ease-in-out;
           z-index: 1000;
       }
       .sidebar.active {
           left: 0; /* Sidebar visible */
       }
       .sidebar a {
           color: white;
           text-decoration: none;
           display: block;
           padding: 15px;
           font-size: 20px;
           transition: background-color 0.3s;
       }
       .sidebar a:hover {
           background-color: #0055b3;
       }
       .logo {
           background-color: white;
           display: flex;
           justify-content: center;
           padding: 20px;
           margin-bottom: 20px;
           box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
       }
       .sidebar a.active {
           background-color: #0044cc;
       }
       /* Content Area Styling */
       .content {
           margin-left: 0; /* Initially no margin on mobile */
           padding: 20px;
           transition: margin-left 0.3s ease-in-out;
       }
       /* Header Styling */
       #header {
           background-color: #e50914;
           color: white;
           padding: 15px;
           font-size: 24px;
           font-weight: bold;
           display: flex;
           justify-content: space-between;
           align-items: center;
           box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
           position: sticky;
           top: 0;
           z-index: 999;
       }
       #header img {
           max-height: 40px;
       }
       /* Hamburger Menu Styling */
       .hamburger-menu {
           font-size: 24px;
           cursor: pointer;
       }
       /* Spacing Between Header and Cards */
       .row {
           margin-top: 40px;
       }
       /* Card Styling */
       .card {
           border-radius: 15px;
           box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
           background: linear-gradient(to right, #0066cc, #4d94ff);
           color: white;
           margin-bottom: 20px;
           transition: transform 0.3s ease, box-shadow 0.3s ease;
       }
       .card:hover {
           transform: translateY(-10px);
           box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
       }
       .card-body h5 {
           color: #ffffff;
           font-size: 22px;
       }
       .card-body p {
           font-size: 30px;
           font-weight: bold;
           color: #ffffff;
       }
       /* User Info Styling */
       .user-info {
           color: white;
       }
       .user-info a {
           color: white;
           text-decoration: none;
           font-size: 18px;
       }
       .user-info span {
           font-weight: bold;
       }
       /* Responsive Adjustments for Mobile */
       @media (max-width: 768px) {
           .sidebar {
               left: -250px; /* Initially hide sidebar on mobile */
           }
           .sidebar.active {
               left: 0; /* Show sidebar when active */
           }
           .content {
               margin-left: 0; /* No margin for content */
           }
           .hamburger-menu {
               display: block; /* Show hamburger menu on mobile */
           }
           .row {
               flex-direction: column; /* Stack columns */
           }
           .col-md-6 {
               width: 100%; /* Full-width cards on mobile */
               margin-bottom: 20px; /* Add margin between cards */
           }
           /* Single Row on Mobile View */
           .row.mobile-row {
               display: flex;
               justify-content: space-between;
               flex-wrap: wrap;
           }
           .row.mobile-row .col-md-6 {
               width: 48%; /* Each item takes half width */
               margin-bottom: 20px;
           }
       }
</style>
</head>
<body>
<!-- Sidebar Navigation -->
<div class="sidebar" id="sidebar">
<div class="logo">
<img src="..\images\jaksonlogo.png" alt="Jakson Logo" width="150" />
</div>
<a href="#" class="active">Create Kaizen</a>
<a href="#">My Points</a>
<a href="#">Pending Approvals</a>
</div>
<!-- Main Content Area -->
<div class="content" id="content">
<div id="header">
<div class="hamburger-menu" onclick="toggleSidebar()">&#9776;</div>
<div>Dashboard</div>
<div class="user-info">
<span>John Doe</span> | <a href="#">Logout</a>
</div>
</div>
<!-- First Row: Total Kaizen and Reward Points -->
<div class="row mobile-row">
<div class="col-md-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">Total Kaizen</h5>
<p id="totalKaizen" class="card-text">Loading...</p>
</div>
</div>
</div>
<div class="col-md-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">Reward Points</h5>
<p id="myPoints" class="card-text">Loading...</p>
</div>
</div>
</div>
</div>
<!-- Second Row: Approved Kaizen and Pending Approvals -->
<div class="row mobile-row">
<div class="col-md-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">Approved Kaizen</h5>
<p id="approvedKaizen" class="card-text">Loading...</p>
</div>
</div>
</div>
<div class="col-md-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">Pending Approvals</h5>
<p id="pendingApprovals" class="card-text">Loading...</p>
</div>
</div>
</div>
</div>
</div>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function toggleSidebar() {
        const sidebar = document.getElementById('sidebar');
        sidebar.classList.toggle('active');
    }
    // Close sidebar if user clicks outside of it
    window.onclick = function (event) {
        const sidebar = document.getElementById('sidebar');
        const hamburgerMenu = document.querySelector('.hamburger-menu');
        if (!sidebar.contains(event.target) && !hamburgerMenu.contains(event.target)) {
            sidebar.classList.remove('active');
        }
    }
    window.onload = function () {
        // Simulate dynamic data fetching
        setTimeout(function () {
            // Simulated backend data (this would come from the server or API)
            var totalKaizen = 892;
            var approvedKaizen = 745;
            var myPoints = 320;
            var pendingApprovals = 50;
            // Update UI with dynamic data
            document.getElementById('totalKaizen').innerText = totalKaizen;
            document.getElementById('approvedKaizen').innerText = approvedKaizen;
            document.getElementById('myPoints').innerText = myPoints;
            document.getElementById('pendingApprovals').innerText = pendingApprovals;
        }, 2000); // Simulated delay for data fetching
    }
</script>
</body>
</html>