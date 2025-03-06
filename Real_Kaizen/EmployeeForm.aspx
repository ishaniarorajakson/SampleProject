<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newform.aspx.cs" Inherits="NEW_KAIZEN.newform" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create New KAIZEN</title>
    <!-- Include AdminLTE CSS -->
    <link href="../adminlte/dist/css/adminlte.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="../adminlte/plugins/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <style>
        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-group input, .form-group textarea, .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .btn-submit {
            background-color: #6a1b9a;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-submit:hover {
            background-color: #4a148c;
        }
    </style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <!-- Content Wrapper -->
        <div class="content-wrapper">
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-container">
                                <h2>CREATE NEW KAIZEN</h2>
                                <form id="form1" runat="server">
                                    <div class="form-group">
                                        <label for="txtFullName">Full Name</label>
                                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtEmployeeID">Employee ID</label>
                                        <asp:TextBox ID="txtEmployeeID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="ddlBusinessUnit">Business Unit</label>
                                        <asp:DropDownList ID="ddlBusinessUnit" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="Select Business Unit" Value=""></asp:ListItem>
                                            <asp:ListItem Text="Unit 1" Value="Unit1"></asp:ListItem>
                                            <asp:ListItem Text="Unit 2" Value="Unit2"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtMobileNumber">Mobile Number</label>
                                        <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtEmailID">Email ID</label>
                                        <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtOfficeLocation">Office Location</label>
                                        <asp:TextBox ID="txtOfficeLocation" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtIssueDescription">Issue Description</label>
                                        <asp:TextBox ID="txtIssueDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtResolutionDetails">Suggested Solution (if any)</label>
                                        <asp:TextBox ID="txtResolutionDetails" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="fileAttachment">Attachment</label>
                                        <asp:FileUpload ID="fileAttachment" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="../adminlte/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="../adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../adminlte/dist/js/adminlte.min.js"></script>
</body>
</html>