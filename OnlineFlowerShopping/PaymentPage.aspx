<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="OnlineFlowerShopping.PaymentPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <script type="text/javascript" src="Validation.js"></script>
</head>
<body>
    <form id="form1" runat="server" style="line-height: 30px;">
        <div>
            <h1>FLOWER SHOP ONLINE</h1>
        </div>
        <div class="greenBox"></div>
        <div class="page">
            <div class="margin">
                <img class="alignrose" src="Images/img.png" />
            </div>
            <div class="content">
                <p class="header">Secure Payment Page</p>
                <div class="first_content">
                    <div class="content_one">
                        <label for="Method"><b>Select Language</b></label><br />
                        <label for="Method">Payment Method</label><br />
                        <label for="Description">Description</label><br />
                        <label for="Amount">Amount</label><br />
                    </div>
                    <div class="column_two">
                        <select id="Language">
                            <option value="English">English</option>
                            <option value="French">Tamil</option>
                            <option value="Hindi">Hindi</option>
                        </select>
                        <br />
                        <label for="Visa"><b>Visa</b></label><br />
                        <label><b>Item ordered</b></label><br />
                        <label><b>&euro;100.00</b></label><br />
                    </div>
                    <div class="VisaPosition">
                        <img class="Visa" src="Images/Visa.png" />
                    </div>
                </div>
                <div class="brownBox">
                    <h3 class="greenBox whiteText">Card details</h3>
                    <label>You must fill in fields marked with * </label>
                    <br />
                    <div class="first_content">
                        <div class="content_one">
                            <label>* Card Number</label><br />
                            <label>* Security code</label><br />
                            <label>* Expiry date</label><br />
                            <label>* Cardholder's name</label><br />
                        </div>
                        <div class="content_three">
                            <input onchange="isValidNumber()" id="CardNumber" type="text" name="CardNumber" required="required" /><br />
                            <input onchange="isValidSecurityCode()" id="SecurityCode" style="width: 80px;" type="text" name="Code"  required="required"/><br />
                            <asp:DropDownList onchange="isValidMonth()" class="monthbox" runat="server" id="month" ></asp:DropDownList>
                            <asp:DropDownList onchange="isValidYear()" class="yearbox" runat="server" id="years"></asp:DropDownList>
                            <br />
                            <input onchange="isValidName()" type="text" id="name" name="CardHolderName" required="required" /><br />
                        </div>
                    </div>
                    <p class="greenBox whiteText">Cardholder details</p>
                    <label>You must fill in fields marked with * </label>
                    <br />
                    <div class="first_content">
                        <div class="content_one">
                            <label>* Address 1</label><br />
                            <label>Address 2</label><br />
                            <label>Address 3</label><br />
                            <label>* Town/City</label><br />
                            <label>Region</label><br />
                            <label>* Postcode/Zip code</label><br />
                            <label>Country</label><br />
                            <label>Telephone</label><br />
                            <label>Fax</label><br />
                            <label>* Email Address</label><br />
                        </div>
                        <div class="content_four textbox_align">
                            <input onchange="isValidFirstAddress()" type="text" id="FirstAddress" name="FirstAddress"  required="required" /><br />
                            <input type="text" id="SecondAddress" name="SecondAddress" /><br />
                            <input type="text" id="ThirdAddress" name="ThirdAddress" /><br />
                            <input onchange="isValidPlace()" type="text" id="Place" name="Place"  required="required"/><br />
                            <input onchange="isValidRegion()" type="text" id="Region" name="Region" /><br />
                            <input onchange="isValidZipCode()" style="width: 150px; height:17px" type="text" id="Code" name="code" required="required" /><br />
                            <asp:DropDownList style="width: 200px; height:17px" ID="drpcountry" runat="server" Width="200px">
                                <asp:ListItem>United Kingdom</asp:ListItem>
                                <asp:ListItem>INDIA</asp:ListItem>
                                <asp:ListItem>AUSTRALIA</asp:ListItem>
                            </asp:DropDownList><br />
                            <input onchange="isValidPhoneNumber()" id="PhoneNumber" style="width: 150px; height:17px" type="text" name="Telephone" /><br />
                            <input onchange="isValidFax()" id="Fax" style="width: 150px; height:17px" type="text" name="Fax" /><br />
                            <input onchange="isValidEmail()" id="Email" type="text" name="MailId" required="required" />
                        </div>
                    </div>
                </div>
                <div class="first_content bluetext">
                    <div class="content_one">
                        <label>
                        <asp:ImageButton OnClick="Start" runat="server" formnovalidate="formnovalidate" CssClass="button_image" ImageUrl="~/images/startAgain.png" ID="StartAgain" /></label><label>START AGAIN</label><br />
                        <asp:ImageButton OnClick="CancelPayment" formnovalidate="formnovalidate" CssClass="button_image" ImageUrl="~/Images/cancel.png" runat="server" /><label>CANCEL</label><br />
                    </div>
                    <div class="content_four">
                        <asp:ImageButton OnClick="Payment" CssClass="button_image button_position" ImageUrl="~/Images/payment.png" runat="server" /><label class="button_position">MAKE PAYMENT</label><br />
                    </div>
                </div>
                <hr />
                <label class="header">Refunds and Returns </label>
                <p>For more information visit our Refunds and Returns Policy.</></p>
                <div class="first_content">
                    <div class="content_one">
                        <img class="image" src="Images/pay.png" />
                    </div>
                    <div class="content_four">
                        <p class="button_position">For help with your payment visit the <a href="https://www.worldpay.com/en-gb/enterprise-support">WorldPay Help .</a></p>
                    </div>
                </div>
            </div>
            <div>
                <img class="question questionone" src="Images/question.png" />
            </div>
            <div>
                <img class="question questiontwo" src="Images/question.png" />
            </div>
        </div>
        <div>
            <footer>Thank you for shopping at Flowershop. Have a nice day</footer>
        </div>
    </form>
</body>
</html>
