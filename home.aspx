<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Project_Final.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/top%20view.jpg" class="img-fluid" style="height:600px; width:100% ;" /> 
        <%-- 
        <img src="imgs/top-view-arrangement-natural-material-stationery.jpg" class="img-fluid" style="height:420px; width:100% " ;/>
            --%> 
    </section>


       <section>

      <div class="container ">
         
         <div class="row" style="margin-top: 10px;">
            <div class="col-md-6">
               <center>
                  <img width="100px"  src="imgs/generaluser.png"/>
                  <h4><a href="WebForm.aspx">Web Form</a></h4>
               </center>
            </div>
            <div class="col-md-6">
               <center>
                  <img width="100px" src="imgs/publisher.png"/>
                  <h4><a href="Tables.aspx">Tables</a></h4>
               </center>
            </div>
            
         </div>
      </div>
   </section>

    

</asp:Content>
