package ec.edu.a02_soapclientemovil;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    private EditText editTextCm;
    private EditText editTextPulgadas;
    private TextView textViewResultadoCmAPulgadas;
    private TextView textViewResultadoPulgadasACm;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editTextCm = findViewById(R.id.editTextCm);
        editTextPulgadas = findViewById(R.id.editTextPulgadas);
        textViewResultadoCmAPulgadas = findViewById(R.id.textViewResultadoCmAPulgadas);
        textViewResultadoPulgadasACm = findViewById(R.id.textViewResultadoPulgadasACm);
        Button buttonConvertir = findViewById(R.id.buttonConvertir);

        buttonConvertir.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                convertirValores();
            }
        });
    }

    private void convertirValores() {
        try {
            // Cambiar a float
            float cm = Float.parseFloat(editTextCm.getText().toString());
            float pulgadas = Float.parseFloat(editTextPulgadas.getText().toString());

            SoapClient soapClient = new SoapClient();
            float resultadoCmAPulgadas = soapClient.convertirCentimetrosAPulgadas(cm);
            float resultadoPulgadasACm = soapClient.convertirPulgadasACentimetros(pulgadas);

            textViewResultadoCmAPulgadas.setText("Resultado de " + cm + " cm en pulgadas: " + resultadoCmAPulgadas);
            textViewResultadoPulgadasACm.setText("Resultado de " + pulgadas + " pulgadas en cm: " + resultadoPulgadasACm);
        } catch (NumberFormatException e) {
            Toast.makeText(this, "Por favor, ingresa valores válidos.", Toast.LENGTH_SHORT).show();
        }
    }
}
