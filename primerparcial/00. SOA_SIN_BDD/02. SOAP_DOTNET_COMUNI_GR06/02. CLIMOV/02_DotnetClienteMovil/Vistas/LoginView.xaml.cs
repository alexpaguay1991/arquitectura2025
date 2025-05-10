namespace _02_DotnetClienteMovil.Vistas;


public partial class LoginView : ContentPage
{
	public LoginView()
	{
        
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);
    }
    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        string username = userEntry.Text?.Trim();
        string password = passwordEntry.Text?.Trim();

        if (username == "aspaguay@gmail.com" && password == "password")
        {
            await DisplayAlert("Login Exitoso", "Bienvenido " + username, "OK");
            await Navigation.PushAsync(new ConversionView());
        }
        else
        {
            await DisplayAlert("Error", "Usuario o contraseña incorrectos.", "OK");
        }
    }
}