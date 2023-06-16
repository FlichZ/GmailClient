using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using MailKit;
using MailKit.Net.Imap;
using MailKit.Net.Smtp;
using MailKit.Search;
using MailKit.Security;
using MimeKit;

namespace GmailClient
{
    /// <summary>
    /// Логика взаимодействия для NewMessageWindow.xaml
    /// </summary>
    public partial class NewMessageWindow : Window
    {

        string server = ConfigurationManager.AppSettings["smtp_server"]; 
        int port = int.Parse(ConfigurationManager.AppSettings["smtp_port"]); 
        
        private string username;
        private string password;

        public NewMessageWindow(string _username, string _password)
        {
            InitializeComponent();
            username = _username;
            password = _password;
        }

        private void button_Send_Click(object sender, RoutedEventArgs e)
        {
            MimeMessage message = new MimeMessage();
            message.From.Add(new MailboxAddress(txtboxFromWhom.Text, username));
            message.To.Add(MailboxAddress.Parse(txtboxToWhom.Text));
            message.Subject = txtboxTheme.Text == "" ? "No theme" : txtboxTheme.Text;
            message.Body = new TextPart("plain")
            {
                Text = txtboxBody.Text
            };
            message.Importance = MessageImportance.High;
            SmtpClient client = new SmtpClient();
            try
            {
                client.Connect(server, port, true);
                client.Authenticate(username, password);
                client.Send(message);
                MessageBox.Show("Email was sent!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                client.Disconnect(true);
                client.Dispose();
                this.Close();
            }
        }
    }
}
