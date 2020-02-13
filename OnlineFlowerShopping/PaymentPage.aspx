<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="OnlineFlowerShopping.PaymentPage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>FLOWER SHOP ONLINE</h1>
    </div>
    <div class="greenBox">
    </div>  
    <div class="split right"><br /><br /><br /><br /><br /><br />
    <div><h1>Secure Payment Page</h1> </div>
    <label for="Language"><b>Select Language</b></label>
        <select style="width:30%" id="Language">
        <option value="English">English</option>
        <option value="Tamil">Tamil</option>
        <option value="Hindi">Hindi</option> </select> <br />
    <label for="Method">Payment Method</label>
    <label class="align right" for="Visa"><b>Visa</b></label><br />
    <label for="Description">Description</label>
    <label class="align right"><b>Item ordered</b></label><br />
    <label for="Amount">Amount</label>
    <label class="align right"><b>&euro;100.00</b></label><br /><br />
    <div class="brownBox">                                   
        <h2 class="greenBox" style="color:white">Card details</h2>                                      
        <label>You must fill in fields marked with * </label> <br />         
        <label>Card Number</label>   
        <input class="align right" type="text" name="CardNumber"/><br />
        <label>Security code</label>   
        <input class="align right" type="text" name="Code"/><br />
        <label>Expiry date</label>   
        <input class="align right" type="text" name="ExpiryDate"/><br />
        <label>Cardholder's name</label>   
        <input class="align right" type="text" name="CardHolderName"/> <br />
        <h2 class="greenBox" style="color:white">Cardholder details</h2>                                   
        <label>You must fill in fields marked with * </label> <br />         
        <label>Address 1</label>   
        <input class="align right" type="text" name="FirstAddress"/><br />
        <label>Address 2</label>   
        <input class="align right" type="text" name="SecondAddress"/><br />
        <label>Address 3</label>   
        <input class="align right" type="text" name="ThirdAddress"/><br />
        <label>Town/City</label>   
        <input class="align right" type="text" name="Place"/> <br />
        <label>Region</label>   
        <input class="align right" type="text" name="Region"/><br />
        <label>Postcode/Zip code</label>   
        <input class="align right" type="text" name="PostCode"/><br />
        <label>Country</label>   
        <input class="align right" type="text" name="Country"/><br />
        <label>Telephone</label>   
        <input class="align right" type="text" name="Telephone"/> <br />
        <label>Fax</label>   
        <input class="align right" type="text" name="Fax"/><br />
        <label>Email Address</label>   
        <input class="align right" type="text" name="MailId"/> <br />
    </div>
    </div>
    </form>
</body>
</html>