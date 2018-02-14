<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RegisterationLogin.ascx.cs" Inherits="OnlineShopping.User_Controls.RegisterationLogin" %>

	
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;</button>
        <h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
        <div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
							<div class="sap_tabs">	
								<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign in</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign up</span></li>
									</ul>		
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<%--<form action="#" method="post" runat="server">--%>	
                                                    <asp:TextBox ID="txtMail" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtMail" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtMail" ForeColor="Red" ValidationGroup="g2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<%--                                                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"  ControlToValidate="txtMail"></asp:RangeValidator>--%>
													<%--<input name="Email" placeholder="Email Address" type="text" required="">--%>
                                                    <asp:TextBox ID="txtPass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtPass" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>

													<%--<input name="Password" placeholder="Password" type="password" required="">--%>										
													<div class="sign-up">
                                                        <asp:Button ID="btnSubmit" runat="server" Text="Sign in" OnClick="btnSubmit_Click" ValidationGroup="g2"  />&nbsp;
                                                        <asp:Label ID="lbinvalid" runat="server" Text="" ForeColor="Red"></asp:Label>
                                                        <asp:Label ID="lbblock" runat="server" Text="" ForeColor="Red"></asp:Label>

<%--														<input type="submit" value="Sign in"/>--%>
													</div>
												<%--</form>--%>
										</div>
										</div> 
									</div>	 
									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<%--<form action="#" method="post" runat="server">--%>			
													<%--<input placeholder="FirstName" name="FirstName" type="text" required="">--%>
                                                    <asp:TextBox ID="txtfn" runat="server" placeholder="FirstName"></asp:TextBox>&nbsp;
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtfn" ErrorMessage="Please enter first name" ForeColor="Red" ValidationGroup="g1" BorderColor="Red"></asp:RequiredFieldValidator>&nbsp;

                                                    <asp:TextBox ID="txtln" runat="server" placeholder="LastName"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtln" ErrorMessage="Please enter last name" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>

													<%--<input placeholder="LastName" name="LastName" type="text" required="">--%>
                                                    <asp:TextBox ID="txtmail1" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmail1" ErrorMessage="please follow expression" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="g1"></asp:RegularExpressionValidator>&nbsp;
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtmail1" ErrorMessage="Please enter email" ForeColor="Red" ValidationGroup="g1" BorderColor="Red"></asp:RequiredFieldValidator>
                                                   
													<%--<input placeholder="Email Address" name="Email" type="email" required="">--%>
													<%--<input placeholder="Confirm Email Address" name="Email" type="email" required="">--%>
                                                    <asp:TextBox ID="txtcmail" runat="server" placeholder="Confirm Email Address" TextMode="Email"></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtmail1" ControlToValidate="txtcmail" ErrorMessage="not matched email" ForeColor="Red" ValidationGroup="g1"></asp:CompareValidator>&nbsp;
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtcmail" ErrorMessage="Please enter confirmed email" ForeColor="Red" ValidationGroup="g1" BorderColor="Red"></asp:RequiredFieldValidator>
                                                    
                                                    <asp:TextBox ID="txtpass1" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass1" ErrorMessage="please enter password" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                                                     
													<%--<input placeholder="Password" name="Password" type="password" required="">--%>
													<%--<input placeholder="Confirm Password" name="Password" type="password" required="">--%>
                                                    <asp:TextBox ID="txtcpass" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>&nbsp;
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass1" ControlToValidate="txtcpass" ErrorMessage="not matched password" ForeColor="Red" ValidationGroup="g1"></asp:CompareValidator>&nbsp;
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtcpass" ErrorMessage="please enter password" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                                                  


                                                  <%--<asp:TextBox ID="txtgen" runat="server" placeholder="Gender" ></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtgen" ErrorMessage="Please enter gender" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>--%>
                                                
													<%--<input placeholder="Gender" name="Gender" type="text" required="">--%>
													<%--<input placeholder="Age" name="Age" type="text" required="">--%>
                                                    <asp:TextBox ID="txtage" runat="server" placeholder="Age" ></asp:TextBox>
                                                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="not in range" ForeColor="Red" MaximumValue="60" MinimumValue="18" ValidationGroup="g1"></asp:RangeValidator>&nbsp;
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtage" ErrorMessage="please enter age" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                                                        
                                                     
                                                   <asp:RadioButtonList ID="rblgender" runat="server" placeholder="Gender">
                                                   </asp:RadioButtonList>&nbsp;
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="rblgender" ErrorMessage="please select gender" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
													

													<div class="sign-up">
														<%--<input type="submit" value="Create Account"/>--%>
                                                        <asp:Button ID="btncreate" runat="server" Text="Create Account" OnClick="btncreate_Click" ValidationGroup="g1"  />&nbsp;
                                                        <asp:Label ID="lbexist" runat="server" Text="" ForeColor="Red"></asp:Label>


													</div>
												<%--</form>--%>
											</div>
										</div>
									</div> 			        					            	      
								</div>	
							</div>
							<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
							<script type="text/javascript">
                                $(document).ready(function () {
                                    $('#horizontalTab').easyResponsiveTabs({
                                        type: 'default', //Types: default, vertical, accordion           
                                        width: 'auto', //auto or any width like 600px
                                        fit: true   // 100% fit in a container
                                    });
                                });
							</script>
							<div id="OR" class="hidden-xs">OR</div>
						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<div class="row text-center sign-with">
								<div class="col-md-12">
									<h3 class="other-nw">Sign in with</h3>
								</div>
								<div class="col-md-12">
									<ul class="social">
										<li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
										<li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
										<li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
										<li class="social_behance"><a href="#" class="entypo-behance"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
                    </div>
				