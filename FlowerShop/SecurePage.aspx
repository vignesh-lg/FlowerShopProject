<%@ Page Title="" Language="C#" MasterPageFile="~/FlowerShop.Master" AutoEventWireup="true" CodeBehind="SecurePage.aspx.cs" Inherits="FlowerShop.SecurePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"><script src="ScriptFile.js"> + 
</script>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="ScriptFile.js" type="text/javascript">  
</script>  
    <div class="row">
        <div class="column">
           <asp:Image runat="server" CssClass="Displaypicture" ImageUrl="~/images/img.png" ID="Displaypicture"/>
        </div>
        <div class="column_after">
             <p class="h3">Secure Payment Page</p>
            <div class="row_form">
                <div class="column_form">
                    <p><strong>Select Language</strong> </p>
                    <p>Payment method</p>
                    <p>Description</p>
                    <p>Amount</p>
                </div>
                <div class="column_form3">
                    <p><asp:DropDownList ID="language" CssClass="DropDownList" runat="server"><asp:ListItem Value="English">English</asp:ListItem><asp:ListItem Value="French">French</asp:ListItem><asp:ListItem Value="German">German</asp:ListItem></asp:DropDownList></p>
                    <p><strong>Visa</strong> </p>
                    <p><strong>Item ordered</strong></p>
                    <p><strong>£100.00</strong></p>
                </div>   
                <div class="column_form4">
                    <p><asp:Image runat="server" ImageUrl="~/images/visa_PNG30.png" cssClass="visa_image"/></p>
                </div>
           </div>
            <div class="form">
              <p class="title_card">Card details</p> 
            <p>You must fill in fields marked with *</p>
            <div class="row_form">
                <div class="column_form">
                    <p>* Card number</p>
                    <p>* <a href="https://www.cvvnumber.com/">Security code</a></p>
                    <p>* Expiry date</p>
                    <p  class="para_height">* Cardholder's name</p>
                </div>
                <div class="column_form_after">
                    <p><asp:TextBox CssClass="TextBox" ID="cardNumber" onchange="ValidateCardNumber()" runat="server" required="" ></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox1" ID="securityNumber"  onchange="ValidateSecurityCode()" runat="server" required="" TextMode="Password"></asp:TextBox></p>
                    <p><asp:DropDownList ID="months" runat="server" required=""><asp:ListItem Value=""></asp:ListItem><asp:ListItem Value="01">01</asp:ListItem><asp:ListItem Value="02">02</asp:ListItem><asp:ListItem Value="03">03</asp:ListItem><asp:ListItem Value="04">04</asp:ListItem><asp:ListItem Value="05">05</asp:ListItem><asp:ListItem Value="06">06</asp:ListItem><asp:ListItem Value="07">07</asp:ListItem><asp:ListItem Value="08">08</asp:ListItem><asp:ListItem Value="09">09</asp:ListItem><asp:ListItem Value="10">10</asp:ListItem><asp:ListItem Value="11">11</asp:ListItem><asp:ListItem Value="12">12</asp:ListItem></asp:DropDownList> &nbsp <asp:DropDownList ID="year" runat="server" required=""><asp:ListItem Value=""></asp:ListItem><asp:ListItem Value="2021">2021</asp:ListItem><asp:ListItem Value="2022">2022</asp:ListItem><asp:ListItem Value="2023">2023</asp:ListItem><asp:ListItem Value="2024">2024</asp:ListItem><asp:ListItem Value="2025">2025</asp:ListItem><asp:ListItem Value="2026">2026</asp:ListItem><asp:ListItem Value="2027">2027</asp:ListItem><asp:ListItem Value="2028">2028</asp:ListItem></asp:DropDownList></p>
                    <p><asp:TextBox CssClass="TextBox" ID="cardHoldersName"  onchange="ValidateCardHolderName()" runat="server"></asp:TextBox></p>
                </div>
            </div> 
             <p class="title_card">Cardholder details</p>
             <p>You must fill in fields marked with *</p>
            <div class="row_form">
                <div class="column_form">
                    <p class="para_height">* Address</p>
                    <p class="para_height">&nbsp&nbsp Address 2</p>
                    <p class="para_height">&nbsp&nbsp Address 3</p>
                    <p class="para_height">* Town/City</p>
                    <p class="para_height">&nbsp&nbsp Region</p>
                     <p class="para_height">* Postcode/Zip code</p>
                     <p class="para_height">* Country</p>
                    <p class="para_height">&nbsp&nbsp Telephone</p>
                     <p class="para_height">&nbsp&nbsp Fax</p>
                     <p class="para_height">* Email address</p>
                </div>
                <div class="column_form_after">
                    <p><asp:TextBox CssClass="TextBox" ID="Address1" onchange="ValidateAddress1()" runat="server" required="" ></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox" ID="Address2" onchange="ValidateAddress2()" runat="server" ></asp:TextBox></p>
                     <p><asp:TextBox CssClass="TextBox" ID="Address3" runat="server" onchange="ValidateAddress3()" ></asp:TextBox></p>
                     <p><asp:TextBox CssClass="TextBox" ID="City" runat="server" required="" onchange="ValidateTown()" ></asp:TextBox></p>
                     <p><asp:TextBox CssClass="TextBox" ID="Region" runat="server" onchange="ValidateRegion()" ></asp:TextBox></p>
                     <p><asp:TextBox CssClass="TextBox2" ID="pincode" runat="server" required="" onchange="ValidatePincode()" ></asp:TextBox></p>
                    <p><asp:DropDownList CssClass="DropDownList" ID="Country" runat="server" required="" onchange="ValidateCountry()" ><asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem><asp:ListItem Value="India">India</asp:ListItem><asp:ListItem Value="United States">United States</asp:ListItem><asp:ListItem Value="China">China</asp:ListItem><asp:ListItem Value="France">France</asp:ListItem><asp:ListItem Value="Germany">Germany</asp:ListItem><asp:ListItem Value="Russia">Russia</asp:ListItem></asp:DropDownList></p>
                    <p><asp:TextBox CssClass="TextBox2" ID="Telephone" runat="server" onchange="ValidateTelephone()" ></asp:TextBox></p>
                     <p><asp:TextBox CssClass="TextBox2" ID="Fax" runat="server" onchange="ValidateFax()" ></asp:TextBox></p>
                     <p><asp:TextBox CssClass="TextBox" ID="email" runat="server" required="" onchange="ValidateEmail()" ></asp:TextBox></p>
                </div>
            </div>
                </div>
             <div class="row_form">
                <div class="column_form">
                    <label><asp:ImageButton runat="server" CssClass="button_image" ImageUrl="~/images/startAgain.png" ID="StartAgain" /></label><label class="Text" >START AGAIN</label>
                    <p><asp:ImageButton runat="server" CssClass="button_image" ImageUrl="~/images/cancel.png" ID="Cancel" /><label>CANCEL</label></p>
                </div>
                <div class="column_form_after1">
                   <asp:ImageButton runat="server" CssClass="button_image1" ImageUrl="~/images/gg.png" ID="MakePayment" /> <p class="button_position">MAKE PAYMENT</p>
                </div>
            </div> 
            <hr />
            <label class="label">Refunds and Returns </label>
            <p class="Font">For more information visit our <a style="color:blue" href="http://support.worldpay.com/support/kb/bg/transactionmanagement/tm5100.html">Refunds and Returns Policy.</a></p>
             <div class="row_form">
                <div class="column_form">
                    <p><asp:Image runat="server" ImageUrl="~/images/pay.png" CssClass="pay" /></p>
                </div>
                <div class="column_form_after1">
                    <p class="button_position">For help with your payment visit the <a href="https://www.worldpay.com/en-gb/enterprise-support">WorldPay Help .</a></p>
                </div>
            </div> 
        </div>
       
      <div class="column_form5">  
        <p> <asp:ImageButton runat="server" ID="ImageButton1" ImageUrl="~/images/gg1.png" width="30px" Height="30px" /></p>
        <asp:ImageButton runat="server" cssclass="help" ID="Help" ImageUrl="~/images/gg1.png" width="30px" Height="30px" />
          </div>
    </div>
</asp:Content>
