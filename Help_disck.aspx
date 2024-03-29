﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help_disck.aspx.cs" Inherits="$safeprojectname$.Help_dick_operator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css" />
    <title>Help Disck</title>
</head>
<body>
   <header class="container relative">
        <ul>
            <li><a href="dashpord.aspx">Home</a></li>
            <li><a href="Employee.aspx">Employee</a></li>
            <li><a href="Department.aspx">Department</a></li>
            <li><a href="Computer.aspx">Computer</a></li>
            <li><a href="Equipment.aspx">Equipment</a></li>
            <li><a href="Help_disck.aspx" class="active">Help Disck Operator</a></li>
            <li><a href="Problems.aspx">Problems</a></li>
            <li><a href="Specialist.aspx">Specialist</a></li>
        </ul>
    </header>
    <div class="container pt-40 background-gradient">
        <h2 class="text-center mb-40 f-size-40">Help Disck Operator</h2>
        <div class="d-flex">
            <div class="m-auto w-100">
                <form id="form1" runat="server">
                    <!-- main box -->

                    <div class="modal" id="myModal">

                        <!-- Start Modal Content -->
                        <div class="modal-content ">

                            <!-- Close Button -->
                            <span class="close">&times;</span>

                            <div class="d-flex main-box-style">
                                <dvi class="w-30">
                                    <!-- Box One -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:TextBox class="input relative w-100" ID="TextBox1" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label1" runat="server"
                                            Text="Help ID"></asp:Label>
                                    </div>
                                    <!-- Box Two -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:TextBox class="input w-100" ID="TextBox2" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label2" runat="server"
                                            Text="Help Name"></asp:Label>
                                    </div>
                                    <!-- Box Three -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:TextBox class="input w-100" ID="TextBox3" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label3" runat="server"
                                            Text="Help birthdate"></asp:Label>
                                    </div>
                                    <!-- Box Four -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:TextBox class="input w-100" ID="TextBox4" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label4" runat="server"
                                            Text="Phone"></asp:Label>
                                    </div>
                                    <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Add"
                                        CssClass="button-subimt-style add-color" />
                                </dvi>
                            </div>

                        </div>
                    </div>
                    <!-- button side -->
                    <div class="text-center">
                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="button-subimt-style add-color" />
                    </div>

                    <!-- Grid View -->
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
                        AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"></asp:GridView>
                    <div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                            ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True"
                            SelectCommand="SELECT * From Help_disck_operator"
                            DeleteCommand="DELETE FROM Help_disck_operator WHERE help_id = @help_id"
                            UpdateCommand="UPDATE Help_disck_operator SET help_name = @help_name, help_birthdate = @help_birthdate , help_phone = @help_phone WHERE help_id = @help_id"
                            InsertCommand="INSERT INTO Help_disck_operator (help_name,help_birthdate,help_phone) VALUES (@help_name,@help_birthdate,@help_phone)">
                        </asp:SqlDataSource>
                    </div>

                </form>
            </div>
        </div>
    </div>

      <script src="JavaScript.js"></script>
</body>
</html>
