<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="$safeprojectname$.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="style.css" />
    <title>Employee</title>
</head>
<body>
       <header class="container relative">
        <ul>
            <li><a href="dashpord.aspx">Home</a></li>
            <li><a href="Employee.aspx" class="active" >Employee</a></li>
            <li><a href="Department.aspx">Department</a></li>
            <li><a href="Computer.aspx">Computer</a></li>
            <li><a href="Equipment.aspx">Equipment</a></li>
            <li><a href="Help_disck.aspx">Help Disck Operator</a></li>
            <li><a href="Problems.aspx">Problems</a></li>
            <li><a href="Specialist.aspx">Specialist</a></li>
        </ul>
      </header>
      <div class="container pt-40  background-gradient">
          <h2 class="text-center mb-40 f-size-40">Employee</h2>
            <div class="d-flex">
              <div class="m-auto w-100">
                 
               <form id="form1" runat="server">



                   <!-- main box -->
                 <div class="modal" id="myModal">
                    
            
                    <!-- Start Modal Content -->
                   <div class="modal-content ">
                    
                     <!-- Close Button -->
                     <span class="close">&times;</span>
                      <div class="d-flex justify-content-around p-30 gap-30">        
                     <!-- Start left side -->
                        <dvi class="w-100">
                                <!-- Box One -->
                            <div class="relative mb-20 content-input-style">
                                <asp:TextBox class="input relative w-100" ID="TextBoxID" runat="server" required ></asp:TextBox>
                                <asp:Label class="absolute absolute_label label" ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                            </div>
                            <!-- Box Two -->
                            <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input w-100" ID="TextBoxName" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label2" runat="server" Text="Name"></asp:Label>
                    </div>
                            <!-- Box Three -->
                             <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input w-100" ID="TextBoxBirth" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label3" runat="server" Text="Birthdate"></asp:Label>
                    </div>
                            <!-- Box Four -->
                             <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input w-100" ID="TextBoxPhone" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label8" runat="server" Text="Phone"></asp:Label>
                     </div>
           
                            </dvi>
                        
                    <!-- End left side -->

                    <!-- Start right side -->
                          <dvi class="w-100">
                                  <!-- Box One -->
                              <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input relative w-100" ID="TextBoxAddress" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label4" runat="server" Text="Address"></asp:Label>
                    </div>
                              <!-- Box Two -->
                              <div class="relative mb-20 content-input-style">
                        <asp:TextBox class="input w-100" ID="TextBoxPosition" runat="server" required></asp:TextBox>
                        <asp:Label class="absolute absolute_label label" ID="Label5" runat="server" Text="Position"></asp:Label>
                    </div>
                              <!-- Box Three -->
                               <div class="relative mb-20 content-input-style">
                        <asp:DropDownList class="input w-100" ID="DropDownList1" DataSourceID="SqlDataSource2" runat="server" required  DataTextField="dept_name" DataValueField="dept_id" ></asp:DropDownList>
                        <asp:Label class="absolute absolute_label label" ID="Label6" runat="server" Text="Department ID"></asp:Label>
                        
                            </div>
                                       <!-- Box Four -->
                             <div class="relative mb-20 content-input-style">
                                 <asp:DropDownList  class="input w-100" ID="DropDownList2" DataSourceID="SqlDataSource3" runat="server" required DataTextField="pc_id" DataValueField="pc_id" ></asp:DropDownList>
                                 <asp:Label class="absolute absolute_label label" ID="Label7" runat="server" Text="Computer ID"></asp:Label>
                             </div>
                             <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Add" CssClass="button-subimt-style add-color" />

                         </dvi>
                      <!-- End right side -->
                      </div>
                   </div>
                      <!-- End Modal Content -->
                </div>

                    <!-- Buttons -->
                    <div class="text-center">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="button-subimt-style add-color" />
                    </div>
                     <!-- Grid View -->
                 <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" ></asp:GridView>
                     <!-- Data Source -->
                <div>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True"
                                SelectCommand="SELECT * From Employee"
                                DeleteCommand="DELETE FROM Employee WHERE emp_id = @emp_id"
                                UpdateCommand="UPDATE Employee SET emp_name = @emp_name, emp_birthdate = @emp_birthdate, emp_phone = @emp_phone,emp_address =@emp_address,emp_position=@emp_position,dept_id=@dept_id,computer_id=@computer_id WHERE emp_id = @emp_id"
                                InsertCommand="INSERT INTO Employee (emp_name, emp_birthdate, emp_phone,emp_address,emp_position,dept_id,computer_id) VALUES (@emp_name, @emp_pirthdate, @emp_phone,@emp_address,@emp_position,@dept_id,@computer_id)">
                     
                     </asp:SqlDataSource>
                <div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True" SelectCommand="select * from Department" ></asp:SqlDataSource>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True" SelectCommand="select pc_id from Computer" ></asp:SqlDataSource>

                </div>
               </div>
            </form>
          </div>
        </div>
       
      </div>
        <script src="JavaScript.js"></script>
</body>
</html>
