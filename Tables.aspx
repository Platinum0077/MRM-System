<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="Project_Final.Tables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%-- 
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thread></thread>").append($(this).find("tr.first"))).dataTable();
        });
    </script>
        --%>
       <script type="text/javascript">
           
           $(document).ready(function () {

               //$(document).ready(function () {
               //$('.table').DataTable();
               // });

               $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
               //$('.table1').DataTable();
           });
       </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row mx-1 my-5 justify-content-center text-center">

            <div class="col-12">

               <i> <h1 >

                    Table

                  </h1></i>

            </div>

     </div>

    
    

    <div  style="width:90%; margin:auto;<%-- padding:10px; border:2px solid black; --%>" >



        
            <asp:GridView class="table table-responsive table-striped  table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="false">
              <Columns>
                                        
                                       <asp:TemplateField HeaderText="Sr No." SortExpression="Sr No.">
                                           <ItemTemplate>
                                               <%# Container.DataItemIndex + 1 %>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="PO Number" SortExpression="PO Number">
                                           <ItemTemplate>
                                               <asp:Label ID="poNum" runat="server" Text='<%# Bind("PO_No") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField> 
                                       
                                       <asp:TemplateField HeaderText="Vendor" SortExpression="Vendor">
                                           <ItemTemplate>
                                               <asp:Label ID="vendor" runat="server" Text='<%# Bind("Vendor") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                       
                                       <asp:TemplateField HeaderText="PD Date" SortExpression="PD Date">
                                           <ItemTemplate>
                                               <asp:Label ID="pdDate" runat="server" Text='<%# Bind("PD_Date") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Vendor Name" SortExpression="Vendor Name">
                                           <ItemTemplate>
                                               <asp:Label ID="vendorName" runat="server" Text='<%# Bind("Vendor_Name") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="CDD" SortExpression="CDD">
                                           <ItemTemplate>
                                               <asp:Label ID="cdd" runat="server" Text='<%# Bind("CDD") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Invoice Number" SortExpression="Invoice Number">
                                           <ItemTemplate>
                                               <asp:Label ID="invNum" runat="server" Text='<%# Bind("Invoice_No") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Invoice Date" SortExpression="Invoice Date">
                                           <ItemTemplate>
                                               <asp:Label ID="invDate" runat="server" Text='<%# Bind("Invoice_Date") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="LR Number" SortExpression="LR Number">
                                           <ItemTemplate>
                                               <asp:Label ID="lrNum" runat="server" Text='<%# Bind("LR_No") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="LR Date" SortExpression="LR Date">
                                           <ItemTemplate>
                                               <asp:Label ID="lrDate" runat="server" Text='<%# Bind("LR_Date") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Transporter" SortExpression="Transporter">
                                           <ItemTemplate>
                                               <asp:Label ID="Transporter" runat="server" Text='<%# Bind("Transporter") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="E Way Bill No." SortExpression="E Way Bill No.">
                                           <ItemTemplate>
                                               <asp:Label ID="eBillNo" runat="server" Text='<%# Bind("E_Bill_No") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="E Way Bill Date" SortExpression="E Way Bill Date">
                                           <ItemTemplate>
                                               <asp:Label ID="eBillDate" runat="server" Text='<%# Bind("E_Bill_Date") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Date of Receiving" SortExpression="Date of Receiving">
                                           <ItemTemplate>
                                               <asp:Label ID="dor" runat="server" Text='<%# Bind("DOR") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                   </Columns>
                               </asp:GridView>



        <div class="row">
              <div class="col-4 mx-auto">
                 <center>
                    <div class="form-group">
                        <%-- 
                       <asp:LinkButton class="btn btn-success btn-block btn-lg" ID="LinkButton1" runat="server" Font-Bold="True" OnClick="LinkButton1_Click" >Export to Excel</asp:LinkButton>
                       --%>

                        <asp:Button class="btn btn-success btn-block btn-lg" runat="server" Font-Bold="True" ID="Button1" Text="Export To Excel"  />
                    </div>
                 </center>
              </div>
           </div>



     </div>




     

<%--

    <div class="container container-fluid " style="width:100%">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/publisher.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Tables</h4>

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" >

                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="false">
                                    <Columns>

                                        <asp:TemplateField HeaderText="Sr No." SortExpression="Sr No.">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="PO Number" SortExpression="PO Number">
                                            <ItemTemplate>
                                                <asp:Label ID="poNum" runat="server" Text='<%# Bind("PO_No") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField> 
                                        
                                        <asp:TemplateField HeaderText="Vendor" SortExpression="Vendor">
                                            <ItemTemplate>
                                                <asp:Label ID="vendor" runat="server" Text='<%# Bind("Vendor") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                        <asp:TemplateField HeaderText="PD Date" SortExpression="PD Date">
                                            <ItemTemplate>
                                                <asp:Label ID="pdDate" runat="server" Text='<%# Bind("PD_Date") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Vendor Name" SortExpression="Vendor Name">
                                            <ItemTemplate>
                                                <asp:Label ID="vendorName" runat="server" Text='<%# Bind("Vendor_Name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="CDD" SortExpression="CDD">
                                            <ItemTemplate>
                                                <asp:Label ID="cdd" runat="server" Text='<%# Bind("CDD") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Invoice Number" SortExpression="Invoice Number">
                                            <ItemTemplate>
                                                <asp:Label ID="invNum" runat="server" Text='<%# Bind("Invoice_No") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Invoice Date" SortExpression="Invoice Date">
                                            <ItemTemplate>
                                                <asp:Label ID="invDate" runat="server" Text='<%# Bind("Invoice_Date") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="LR Number" SortExpression="LR Number">
                                            <ItemTemplate>
                                                <asp:Label ID="lrNum" runat="server" Text='<%# Bind("LR_No") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="LR Date" SortExpression="LR Date">
                                            <ItemTemplate>
                                                <asp:Label ID="lrDate" runat="server" Text='<%# Bind("LR_Date") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Transporter" SortExpression="Transporter">
                                            <ItemTemplate>
                                                <asp:Label ID="Transporter" runat="server" Text='<%# Bind("Transporter") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="E Way Bill No." SortExpression="E Way Bill No.">
                                            <ItemTemplate>
                                                <asp:Label ID="eBillNo" runat="server" Text='<%# Bind("E_Bill_No") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="E Way Bill Date" SortExpression="E Way Bill Date">
                                            <ItemTemplate>
                                                <asp:Label ID="eBillDate" runat="server" Text='<%# Bind("E_Bill_Date") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Date of Receiving" SortExpression="Date of Receiving">
                                            <ItemTemplate>
                                                <asp:Label ID="dor" runat="server" Text='<%# Bind("DOR") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                                </div>
                            </div>
                            </div>
                </div>
            </div>
        </div>
    </div>


--%>

</asp:Content>
