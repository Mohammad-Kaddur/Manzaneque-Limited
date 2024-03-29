﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Specialist.aspx.cs" Inherits="$safeprojectname$.Specialist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css" />
    <title>Specialist</title>
</head>
<body>
       <header class="container relative">
        <ul>
            <li><a href="dashpord.aspx">Home</a></li>
            <li><a href="Employee.aspx">Employee</a></li>
            <li><a href="Department.aspx">Department</a></li>
            <li><a href="Computer.aspx">Computer</a></li>
            <li><a href="Equipment.aspx">Equipment</a></li>
            <li><a href="Help_disck.aspx">Help Disck Operator</a></li>
            <li><a href="Problems.aspx">Problems</a></li>
            <li><a href="Specialist.aspx" class="active">Specialist</a></li>
        </ul>
      </header>
      <div class="container pt-40 background-gradient">
          <h2 class="text-center mb-40 f-size-40">Specialist</h2>
          <div class="d-flex">
             <div class="m-auto w-100">
               <form id="form1" runat="server">
                   <!-- main box -->
                 <div class="modal" id="myModal">

                     <!-- Start Modal Content -->
                 <div class="modal-content">
                     <!-- Close Button -->
                     <span class="close">&times;</span>

                 <div class="d-flex main-box-style">
                   
                     
                     <dvi class="w-100">
                        <!-- Box One -->
                    <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input relative w-100" ID="TextBox1" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label1" runat="server" Text="Specialist ID"></asp:Label>
                    </div>
                    <!-- Box Two -->
                    <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input w-100" ID="TextBox2" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label2" runat="server" Text="Name"></asp:Label>
                    </div>
                         <!-- Box Three -->
                    <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input w-100" ID="TextBox3" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label3" runat="server" Text="Phone"></asp:Label>
                    </div>
                         <!-- Box Four -->
                    <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input w-100" ID="TextBox4" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label4" runat="server" Text="Specification"></asp:Label>
                    </div>
                          <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button1_Click" CssClass="button-subimt-style add-color" />
                         </div>
                        </div>
                </div>
                         <!-- button side -->
                    <div class="text-center">
                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="button-subimt-style add-color"  />
                    </div>
             
                              <!-- Grid View -->
                 <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" ></asp:GridView>
                 
                     <div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True"
                                SelectCommand="SELECT * From Specialist"
                                DeleteCommand="DELETE FROM Specialist WHERE spe_id = @spe_id"
                                UpdateCommand="UPDATE Specialist SET spe_name = @spe_name,spe_phone = @spe_phone,spe_specification = @spe_specification WHERE spe_id =@spe_id"
                                InsertCommand="INSERT INTO Specialist (spe_name,spe_phone,spe_specification) VALUES (@spe_name,@spe_phone,@spe_specification)">
                        </asp:SqlDataSource>
                      <div>
                 </div>
              </div>

                  
            </form>
          </div>
        </div>
      </div>
    <script src="JavaScript.js"></script>

</body>
</html>
