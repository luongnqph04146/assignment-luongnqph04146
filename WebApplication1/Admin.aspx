<%@ Page Language="VB" MasterPageFile="~/Admin.master" Title="Content Page" %>

   <asp:Content runat="server" ID="AdminContent" ContentPlaceHolderID="AdminContent">
        
      <div class="row top_tiles">
              <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
                <div class="tile-stats">
                    <a href="AdminProduct.aspx">
                  <div class="icon"><i class="fa fa-money"></i></div>
                  <div class="count"><h4 style="padding:20px;">Product</h4></div>  
                        </a>               
                </div>
              </div>
              <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
                <div class="tile-stats">
                    <a href="AdminCategory.aspx">
                  <div class="icon"><i class="fa fa-folder-open"></i></div>
                   <div class="count"><h4 style="padding:20px;">Category</h4></div>   
                        </a> 
                </div>
              </div>
              <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
                <div class="tile-stats">
                    <a href="Invoice.aspx">
                  <div class="icon"><i class="fa fa-sort-amount-desc"></i></div>
                 <div class="count"><h4 style="padding:20px;">Incoice</h4></div> 
                        </a>   
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                    <a href="AdminInvD.aspx">
                  <div class="icon"><i class="fa fa-credit-card"></i></div>
                  <div class="count"><h4 style="padding:20px;">Incoice Detail</h4></div>   
                        </a> 
                </div>
              </div>
          <div class="animated flipInY col-lg-2 col-md-2 col-sm-6 col-xs-12">
                <div class="tile-stats">
                    <a href="Customer.aspx">
                  <div class="icon"><i class="fa fa-eye"></i></div>
                  <div class="count"><h4 style="padding:20px;">Customer</h4></div>  
                        </a>  
                </div>
              </div>
            </div>

    </asp:Content>
