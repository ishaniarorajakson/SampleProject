<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Real_Kaizen.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kaizen Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" />
    <style>
        body { font-family: Arial, sans-serif; background-color: #f8f9fa; }
        .sidebar { width: 250px; background: #343a40; height: 100vh; color: white; position: fixed; padding-top: 20px; }
        .sidebar a { color: white; display: block; padding: 10px; text-decoration: none; }
        .sidebar a:hover, .sidebar .active { background: #495057; }
        .content { margin-left: 260px; padding: 20px; }
        .card { border: none; color: white; }
        .bg-blue { background: #17a2b8; }
        .bg-green { background: #28a745; }
        .bg-yellow { background: #ffc107; }
        .bg-red { background: #dc3545; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <h4 class="text-center">KAIZEN Portal</h4>
            <a href="#" class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
            <a href="#"><i class="fas fa-edit"></i> Create New KAIZEN</a>
            <a href="#"><i class="fas fa-check-circle"></i> Pending Approvals</a>
            <a href="#"><i class="fas fa-star"></i> My Points</a>
            <a href="#"><i class="fas fa-cog"></i> Setup</a>
        </div>
        <div class="content">
            <nav class="navbar navbar-light bg-light">
                <span class="navbar-brand">Home > Create New KAIZEN</span>
                <div>
                    <i class="fas fa-bell"></i> <span class="badge bg-warning">15</span>
                    <i class="fas fa-user"></i> Jakson
                </div>
            </nav>
            <div class="row mt-3">
                <div class="col-md-3">
                    <div class="card bg-blue p-3">
                        <h5>5</h5>
                        <p>Total KAIZEN</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card bg-green p-3">
                        <h5>3</h5>
                        <p>Approved KAIZEN</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card bg-yellow p-3">
                        <h5>44</h5>
                        <p>Total Gained Points</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card bg-red p-3">
                        <h5>2</h5>
                        <p>Pending Approvals</p>
                    </div>
                </div>
            </div>
            <div class="card mt-4 p-4">
                <h5>Kaizen Report</h5>
                <div class="row">
                    <div class="col-md-4 text-center">
                        <input type="text" class="form-control" value="20" /><br />
                        <p>Total KAIZEN</p>
                    </div>
                    <div class="col-md-4 text-center">
                        <input type="text" class="form-control" value="50" /><br />
                        <p>Approved KAIZEN</p>
                    </div>
                    <div class="col-md-4 text-center">
                        <input type="text" class="form-control" value="30" /><br />
                        <p>Pending KAIZEN</p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
