<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="HeadContent">
<ItemTemplate>
<div class="index-banner">
       	  <div class="wmuSlider example1" style="height: 560px;">
			  <div class="wmuSliderWrapper">
				  <article style="position: relative; width: 100%; opacity: 1;"> 
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
					</article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
			      </article>
				</div>
                <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                	<li><a href="#">3</a></li>
                	<li><a href="#">4</a></li>
                  </ul>
                 <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a><ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li><li><a href="#" class="">1</a></li><li><a href="#" class="">2</a></li><li><a href="#" class="">3</a></li><li><a href="#" class="">4</a></li></ul></div>
            	 <script src="Scripts/js/jquery.wmuSlider.js"></script> 
				 <script type="text/javascript" src="Scripts/js/modernizr.custom.min.js"></script> 
						<script>
						    $('.example1').wmuSlider();
   						</script> 	           	      
             </div></ItemTemplate>
</asp:Content>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <ItemTemplate>      
        <div class="content-top">
             		<div class="lsidebar span_1_of_c1">
					  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing</p>
					</div>
					<div class="cont span_2_of_c1">
					  <div class="social">	
					     <ul>	
						  <li class="facebook"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"><a href="#"> </a></div><div class="border hide"><p class="num">1.51K</p></div></li>
						 </ul>
			   		   </div>
					   <div class="social">	
						   <ul>	
							  <li class="twitter"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">1.51K</p></div></li>
						  </ul>
			     		</div>
						 <div class="social">	
						   <ul>	
							  <li class="google"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">1.51K</p></div></li>
						   </ul>
			    		 </div>
						 <div class="social">	
						   <ul>	
							  <li class="dot"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">1.51K</p></div></li>
						  </ul>
			     		</div>
						<div class="clear"> </div>
					  </div>
					  <div class="clear"></div>			
				   </div>
    </ItemTemplate>
</asp:Content>
             
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
        <ItemTemplate>
            <div class="col_1_of_3 span_1_of_3">
                <a href="#">
				      <div class="view view-fifth">
				  	      <div class="top_box">
					  	    <h3 class="m_1"><asp:Label ID="tenLabel" runat="server" Text='<%# Bind("ten") %>' /></h3>
					  	    <p class="m_2"><asp:Label ID="mo_taLabel" runat="server" Text='<%# Bind("mo_ta") %>' /></p>
				             <div class="grid_img">
						       <div class="css3">
                                   <asp:Image ID="Image1" runat="server" Width="250" Height="173" ImageUrl="<%# Bind('anh') %>" />

						       </div>
					              <div class="mask">
	                       		    <div class="info">Quick View</div>
			                      </div>
	                        </div>
                           <div class="price">
                               <asp:Label ID="giaLabel" runat="server" Text='<%# Bind("gia")%>' />VNĐ</div>
					       </div>
					        </div>
                            <a href="Admin.aspx">
					       <span class="rating">
                               Edit
		    	          </span></a></a><ul class="list">
                              <a href="#">
						      </a><li><a href="#">
						  	    <img src="images/plus.png" alt="">
						  	    </a><ul class="icon1 sub-icon1 profile_img"><a href="#">
							      </a><li><a href="single.html"></a><a class="active-icon c1" href="#">Add To Bag </a>
								    <ul class="sub-icon1 list">
									    <li><h3>sed diam nonummy</h3><a href=""></a></li>
									    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
								    </ul>
							      </li>
							     </ul>
						       </li>
					         </ul>
			    	    <div class="clear"></div>			    	
			    </div>
            </ItemTemplate>
        </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [san_pham] ([ms], [ms_chuyenmuc_sp], [sku], [ten], [gia], [mo_ta], [anh], [don_vi]) VALUES (@ms, @ms_chuyenmuc_sp, @sku, @ten, @gia, @mo_ta, @anh, @don_vi)" SelectCommand="SELECT * FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [ms_chuyenmuc_sp] = @ms_chuyenmuc_sp, [sku] = @sku, [ten] = @ten, [gia] = @gia, [mo_ta] = @mo_ta, [anh] = @anh, [don_vi] = @don_vi WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
            <asp:Parameter Name="sku" Type="String" />
            <asp:Parameter Name="ten" Type="String" />
            <asp:Parameter Name="gia" Type="Decimal" />
            <asp:Parameter Name="mo_ta" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="don_vi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
            <asp:Parameter Name="sku" Type="String" />
            <asp:Parameter Name="ten" Type="String" />
            <asp:Parameter Name="gia" Type="Decimal" />
            <asp:Parameter Name="mo_ta" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="don_vi" Type="String" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
