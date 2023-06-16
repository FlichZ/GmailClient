using System.Configuration;
using System.Windows;
using MailKit.Net.Imap;
using MailKit.Security;

namespace GmailClient
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        string server = ConfigurationManager.AppSettings["gmail_server"]; 
        int port = int.Parse(ConfigurationManager.AppSettings["gmail_port"]); 

        private readonly string username; 
        private readonly string password; 
        private bool autoFill = true; 

        public LoginWindow()
        {
            InitializeComponent();
            if (autoFill) AutoSetCredentials();
        }

        public void AutoSetCredentials()
        {
            txtboxUsername.Text = username;
            txtboxPassword.Password = password;
        }

        private async void buttonLogin_Click(object sender, RoutedEventArgs e)
        {
            using (var client = new ImapClient())
            {
                await client.ConnectAsync(server, port, SecureSocketOptions.SslOnConnect);

                try
                {
                    await client.AuthenticateAsync(txtboxUsername.Text, txtboxPassword.Password);

                    if (client.IsAuthenticated)
                    {
                        MainWindow mainWindow = new MainWindow(txtboxUsername.Text, txtboxPassword.Password);
                        mainWindow.Show();
                        await client.DisconnectAsync(true);
                        this.Close();
                    }
                }
                catch (AuthenticationException ex)
                {
                    MessageBox.Show($"{ex.Message}", "Authentication error");
                }
                finally
                {
                    await client.DisconnectAsync(true);
                }
            }
        }
    }
}
