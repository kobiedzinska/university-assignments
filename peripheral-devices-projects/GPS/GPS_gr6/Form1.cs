using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using System.Text.RegularExpressions;


namespace GPS_gr6
{
    public partial class Form1 : Form
    {
        SerialPort sp;
        string Latitude;
        string Longitude;
        string dirX;
        string dirY;
        string numSatelite;
        string habovesealevel;
        bool next=false;
        string port;

        public Form1()
        {
            InitializeComponent();
        }
// Wygeneruj link do Google Maps
        private void button1_Click(object sender, EventArgs e)
        {
            string googleMapsUrl = $"https://www.google.com/maps?q= {Latitude},{Longitude}";
            textBox1.Text = googleMapsUrl;
            System.Diagnostics.Process.Start(googleMapsUrl);

        }
// Wczytaj dane- guzik
        private void button2_Click(object sender, EventArgs e)
        {
            next = true;
            if (port != null)
            {
                sp = new SerialPort(port, 9600, Parity.None, 8, StopBits.One);
                sp.Open();

                while (next)
                {
                    string line = sp.ReadLine();
                    if (line.StartsWith("$GPGGA"))
                    {
                        string[] parts = line.Split(',');
                        if (parts.Length >= 6)
                        {
                            Latitude = ConvertCoordinate(parts[2]);
                            Longitude = ConvertCoordinate(parts[4]);
                            dirX = parts[3];
                            dirY = parts[5];

                            numSatelite = parts[7];
                            habovesealevel = parts[11];

                            textBox5.Text = numSatelite;
                            textBox2.Text = Longitude;
                            textBox3.Text = Latitude;
                            textBox6.Text = dirX;
                            textBox7.Text = dirY;
                            textBox4.Text = habovesealevel;

                            next = false;


                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("There's an empty port text field");
            }
           
           
        }

        static string ConvertCoordinate(string coord)
        {
            double decimalDegrees;

            if (coord[0] == '0')
            {
                double degrees = double.Parse(coord.Substring(1, 2));
                Console.WriteLine(degrees);
                double minutes = double.Parse(coord.Substring(3)) / 60.0;
                decimalDegrees = degrees + minutes;
            }
            else
            {
                double degrees = double.Parse(coord.Substring(0, 2));
                Console.WriteLine(degrees);

                double minutes = double.Parse(coord.Substring(2)) / 60.0;
                decimalDegrees = degrees + minutes;
            }
            

            return decimalDegrees.ToString("F6");

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            if(String.IsNullOrEmpty(textBox8.Text))
            {
               
            }
            else
            {
                port = textBox8.Text;
            }
            
            
        }
    }
}
