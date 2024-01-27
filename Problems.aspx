<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Problems.aspx.cs" Inherits="$safeprojectname$.Problems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css" />
    <title>Problems</title>
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
            <li><a href="Problems.aspx" class="active">Problems</a></li>
            <li><a href="Specialist.aspx">Specialist</a></li>
        </ul>
    </header>
    <div class="container pt-40 background-gradient">
        <h2 class="text-center mb-40 f-size-40">Problems</h2>
        <div class="d-flex">
            <div class="m-auto w-100">
                <form id="form1" runat="server">
                    <!-- main box -->
                    <!-- main box -->
                    <div class="modal" id="myModal">


                        <!-- Start Modal Content -->
                        <div class="modal-content ">

                            <!-- Close Button -->
                            <span class="close">&times;</span>
                            <div class="d-flex main-box-style">
                                <!-- left side -->
                                <dvi class="w-30">
                                    <!-- Box One -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:TextBox class="input relative w-100" ID="TextBox1" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label1" runat="server"
                                            Text="Problem ID"></asp:Label>
                                    </div>
                                    <!-- Box Two -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:TextBox class="input w-100" ID="TextBox2" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label2" runat="server"
                                            Text="Type">
                                        </asp:Label>
                                    </div>
                                    <!-- Box Three -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:TextBox class="input w-100" ID="TextBox3" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label3" runat="server"
                                            Text="Time">
                                        </asp:Label>
                                    </div>
                                    <!-- Box Four -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:TextBox class="input w-100" ID="TextBox4" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label8" runat="server"
                                            Text="Date">
                                        </asp:Label>
                                    </div>
                                    <!-- Box Five -->
                                    <div class="relative content-input-style">
                                        <asp:TextBox class="input w-100" ID="TextBox5" runat="server" required>
                                        </asp:TextBox>
                                        <asp:Label class="absolute absolute_label label" ID="Label9" runat="server"
                                            Text="Solution"></asp:Label>
                                    </div>
                                </dvi>
                                <!-- right side -->
                                <dvi class="w-30">
                                    <!-- Box One -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:DropDownList class="input w-100" ID="DropDownList1"
                                            DataSourceID="SqlDataSource2" runat="server" required
                                            DataTextField="emp_name" DataValueField="emp_id">
                                        </asp:DropDownList>

                                        <asp:Label class="absolute absolute_label label" ID="Label4" runat="server"
                                            Text="Employee Name"></asp:Label>
                                    </div>
                                    <!-- Box Two -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:DropDownList class="input w-100" ID="DropDownList2"
                                            DataSourceID="SqlDataSource3" runat="server" required
                                            DataTextField="spe_name" DataValueField="spe_id">
                                        </asp:DropDownList>
                                        <asp:Label class="absolute absolute_label label" ID="Label5" runat="server"
                                            Text="Specialist Name"></asp:Label>
                                    </div>
                                    <!-- Box Three -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:DropDownList class="input w-100" ID="DropDownList3"
                                            DataSourceID="SqlDataSource4" runat="server" required
                                            DataTextField="help_name" DataValueField="help_id">
                                        </asp:DropDownList>
                                        <asp:Label class="absolute absolute_label label" ID="Label6" runat="server"
                                            Text="Help Disck Name"></asp:Label>
                                    </div>
                                    <!-- Box Four -->
                                    <div class="relative mb-20 content-input-style">
                                        <asp:DropDownList class="input w-100" ID="DropDownList4"
                                            DataSourceID="SqlDataSource5" runat="server" required
                                            DataTextField="equi_type" DataValueField="equi_id">
                                        </asp:DropDownList>
                                        <asp:Label class="absolute absolute_label label" ID="Label7" runat="server"
                                            Text="Equipment Type"></asp:Label>
                                    </div>
                                    <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Add"
                                        CssClass="button-subimt-style add-color" />
                                </dvi>
                            </div>
                        </div>
                    </div>
                    <!-- Button -->
                    <div class="text-center">
                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="button-subimt-style add-color" />
                    </div>
                    <!-- Grid View -->
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
                        AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"></asp:GridView>
                    <div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                            ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True"
                            SelectCommand="SELECT * From Problems"
                            DeleteCommand="DELETE FROM Problems WHERE prob_id = @prob_id"
                            UpdateCommand="UPDATE Problems SET prob_type = @prob_type, prob_time = @prob_time, prob_date = @prob_date, prob_solution = @prob_solution, emp_id = @emp_id, spe_id = @spe_id , help_disck_id = @help_disck_id , equi_id = @equi_id  WHERE prob_id = @prob_id"
                            InsertCommand="INSERT INTO Problems (prob_type, prob_time, prob_date, prob_solution, emp_id, spe_id, help_disck_id, equi_id) VALUES (@prob_type, @prob_time, @prob_date, @prob_solution, @emp_id, @spe_id, @help_disck_id, @equi_id)">
                        </asp:SqlDataSource>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                        ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True"
                        SelectCommand="select * from Employee"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                        ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True"
                        SelectCommand="select * from Specialist"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                        ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True"
                        SelectCommand="select * from Help_disck_operator"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server"
                        ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True"
                        SelectCommand="select * from Equipment"></asp:SqlDataSource>
                </form>
            </div>

        </div>
    </div>
    <script src="JavaScript.js"></script>

</body>
</html>
