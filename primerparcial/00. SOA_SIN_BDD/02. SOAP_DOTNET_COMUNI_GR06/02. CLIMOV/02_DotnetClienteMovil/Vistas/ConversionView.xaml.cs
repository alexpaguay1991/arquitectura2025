using _02_DotnetClienteMovil.Controlador;
using System.Threading.Tasks;

namespace _02_DotnetClienteMovil.Vistas;

public partial class ConversionView : ContentPage
{
   
	public ConversionView()
	{
		InitializeComponent();
	}
    private async void OnConvertToInches(object sender, EventArgs e)
    {
        var service = new ConvertidorController();
        if (double.TryParse(entryCentimeters.Text, out double cm))
        {
            double inches = await service.ConvertirCentimetrosAPulgadas(cm);
            lblResult.Text = $"{cm} cm son {inches:F2} pulgadas.";
            //lblResult.Text = "Ingrese un valor v�lido para cent�metros.";
        }
        else
        {
            lblResult.Text = "Ingrese un valor v�lido para cent�metros.";
        }
    }

    private async void OnConvertToCentimeters(object sender, EventArgs e)
    {

        var service = new ConvertidorController();
        if (double.TryParse(entryInches.Text, out double inches))
        {
            double cm = await service.ConvertirPulgadasACentimetros(inches);
            lblResult.Text = $"{inches} pulgadas son {cm:F2} cm.";
        }
        else
        {
            lblResult.Text = "Ingrese un valor v�lido para pulgadas.";
        }
    }

    private async void OnLogout(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new LoginView());
    }
}