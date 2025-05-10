using _02_DotnetClienteMovil.Vistas;

namespace _02_DotnetClienteMovil
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new LoginView());

        }
    }
}
