<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Project_Final.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

    <style>
    #<%= DropDownList1.ClientID %> {
        display: none;
    }
    </style>


    <script>
    $(document).ready(function () {
        var availableTags = [];
        $("#<%= DropDownList1.ClientID %> option").each(function () {
            availableTags.push($(this).text());
        });

        $("#<%= DropDownList1.ClientID %>").after('<input id="searchableInput" type="text" />');

        $("#searchableInput").autocomplete({
            source: availableTags,
            select: function (event, ui) {
                $("#<%= DropDownList1.ClientID %>").val(ui.item.value);
            }
        });
    });
    </script>

    --%>

    <%-- isse yeh ho  raha hai ki po no vala texxt box ka size chota hoo raha hai --%> 
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= DropDownList1.ClientID %>").select2();
        });
    </script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">
         <div class="col-md-12 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Web Form</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                  <div class="row">
                      <div class="col-md-6">
                        <label>PO Number</label>
                          <div class="form-group">
                          <div class="input-group">
                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" AutoPostBack="True" ></asp:DropDownList>
                        <asp:Button for="DropDownList1" class="btn btn-dark" ID="Button2" runat="server" OnClick="Button2_Click"  Text="GET"   />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox11" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div> 
                    </div>
                       </div>



 
                      <div class="col-md-6">
                        <label>Vendor Code</label>
                          <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" textmode="SingleLine" placeholder="Vendor Code" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>
                  </div>                   

                  <div class="row">
                      <div class="col-md-6">
                        <label>PD Date</label>
                          <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server"  TextMode="Date" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                          </div>
                      </div>
 
                      <div class="col-md-6">
                        <label>Vendor Name</label>
                          <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" textmode="SingleLine" ReadOnly="True" placeholder="Vendor Name"></asp:TextBox>
                          </div>
                      </div>
                  </div> 

                    <div class="row">
                        <div class="col-md-6">
                          <label>CDD</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox10" runat="server"  TextMode="Date" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                      <div class="col-md-6">
                        <label>GST No.</label>
                          <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" textmode="SingleLine" ReadOnly="True" placeholder="GST No."></asp:TextBox>
                          </div>
                      </div>
                    </div>
                   
                    <div class="row">
                      <div class="col-md-6">
                        <label>PAN No.</label>
                          <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" textmode="SingleLine" ReadOnly="True" placeholder="PAN No."></asp:TextBox>
                          </div>
                      </div>
                    </div>


                     <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Invoice Details</span>
                        </center>
                     </div>
                     </div>
                   </div>
  <div class="container">
  <div class="row">

                    <div class="col-md-6">
                          <label>Invoice Number</label>
                          <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" textmode="SingleLine" placeholder="Invoice Number"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox2" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
                          </div>
                    </div>
                   

      <div class="col-md-6">
        <label>Invoice Date</label>
          <div class="form-group">
        <asp:TextBox ID="TextBox3" runat="server" Text="yyyy-mm-dd" TextMode="Date" CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox3" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>     
          </div>
          </div>
 

</div> 
      

<div class="row">
    <div class="col-md-6">
        <label>Invoice Basic Value</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" textmode="SingleLine" placeholder="Invoice Basic Value"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-6">
        <label>Invoice Value with GST</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" textmode="SingleLine" placeholder="Invoice Value with GST"></asp:TextBox>
        </div>
    </div>
</div>


  <div class="row">
  <div class="col-md-6">
        <label>LR Number</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" textmode="SingleLine" placeholder="LR Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox4" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>            
        </div>
  </div>
 
  <div class="col-md-6">
        <label>LR Date</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" Text="yyyy-mm-dd" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox5" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
  </div>
</div> 

  <div class="row">
  <div class="col-md-6">
        <label>Transporter Name</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" textmode="SingleLine" placeholder="Transporter Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox6" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
  </div>

          <div class="col-md-6">
        <label>Transporter ID</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox17" runat="server" textmode="SingleLine" placeholder="Transporter ID"></asp:TextBox>
        </div>
    </div>
 

</div>


<div class="row">

    <div class="col-md-6">
        <label>Transporter Code</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox18" runat="server" textmode="SingleLine" placeholder="Transporter Code"></asp:TextBox>
\        </div>
    </div>

              <div class="col-md-6">
      <label>Date of Receiving</label>
      <div class="form-group">
          <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" Text="yyyy-mm-dd" TextMode="Date"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox9" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
</div>

</div>


  <div class="row">

        <div class="col-md-6">
        <label>E Way Bill No.</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" textmode="SingleLine" placeholder="E Way Bill No."></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox7" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
  </div>


  <div class="col-md-6">
        <label>E Way Bill Date</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" Text="yyyy-mm-dd" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Mandatory" ControlToValidate="TextBox8" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
  </div>
 

</div>    
      


  <div class="row">

        <div class="col-md-6">
        <label>DRR No.</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox19" runat="server" textmode="SingleLine" placeholder="DRR No."></asp:TextBox>
        </div>
  </div>


  <div class="col-md-6">
        <label>DRR Date</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox20" runat="server" Text="yyyy-mm-dd" TextMode="Date"></asp:TextBox>
        </div>
  </div>
 

</div>


       <div class="row">
                     <div class="col-6 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="Group1"/>
                           </div>
                        </center>
                     </div>
                  </div>





               </div>
            </div>
            <a href="home.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
    </div>
   









<%-- 
        <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Publisher Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/publisher.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Publisher ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Go" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Publisher Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button5" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button6" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Publisher List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

--%>
</asp:Content>
