using System;
using System.Net;
using System.Net.Mail;

public partial class index : System.Web.UI.Page
{
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string service = ddlService.SelectedValue;
            string messageBody = txtMessage.Text.Trim();

            string subject = string.Format("New Inquiry from {0}", fullName);

            string body = string.Format(@"
                <h2>Contact Details</h2>
                <p><strong>Name:</strong> {0}</p>
                <p><strong>Email:</strong> {1}</p>
                <p><strong>Phone:</strong> {2}</p>
                <p><strong>Service Interested In:</strong> {3}</p>
                <p><strong>Message:</strong><br/>{4}</p>
            ", fullName, email, phone, service, messageBody);

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("syedsaqueeb085@gmail.com", "WEBSPARK");
            mail.To.Add("syedsaqueeb085@gmail.com"); // your inbox
            mail.Subject = subject;
            mail.Body = body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential("syedsaqueeb085@gmail.com", "rnty xrqx txfz lzsa"); // Gmail App Password
            smtp.EnableSsl = true;
            smtp.Send(mail);

            lblMessage.Text = "✅ Your message has been sent successfully!";
            ClearFields();
        }
        catch (Exception ex)
        {
            lblMessage.Text = "❌ Error sending email: " + ex.Message;
        }
    }

    private void ClearFields()
    {
        txtFullName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtMessage.Text = "";
        ddlService.SelectedIndex = 0;
    }
}
