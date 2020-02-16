using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFlowerShopping
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var months = CultureInfo.CurrentCulture.DateTimeFormat.MonthNames;
            month.Items.Add(new ListItem("Choose"));
            for (int i = 0; i < months.Length; i++)
            {
                month.Items.Add(new ListItem(months[i], i.ToString()));
            }
            int year = DateTime.Now.Year;
            years.Items.Add(new ListItem("Choose"));
            for (int i = year - 5; i <= year + 5; i++)
            {
                ListItem li = new ListItem(i.ToString());
                years.Items.Add(li);
            }
            years.Items.FindByText(year.ToString()).Selected = true;
        }
        protected void Start(object sender, EventArgs e)
        {
            Response.Redirect("PaymentPage.aspx");
        }
        protected void Payment(object sender, EventArgs e)
        {
            Page page = HttpContext.Current.Handler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + "Payment Successfully" + "');", true);
        }
        protected void CancelPayment(object sender, EventArgs e)
        {
            Response.Redirect("CancelPage.aspx");
        }
    }
}