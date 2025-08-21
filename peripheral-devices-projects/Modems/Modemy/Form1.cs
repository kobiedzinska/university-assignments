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

namespace Modemy_Obiedzinska_Martynienka
{
    public partial class Form1 : Form
    {
        SerialPort sp = new SerialPort("COM1", 9600, Parity.None, 8, StopBits.One);
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void ModNmb_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string command = "ATD" + ModNmb.Text + "\r";
            MessageBox.Show(command, "calling");
            sp.Write(command);
        }
        Boolean connected = false;
        private void button2_Click(object sender, EventArgs e)
        {
            var message = sp.ReadExisting();
            
            if(connected == true)
            {
            Console.WriteLine(message);
            MsgToGet.Text = message;
            }

            if (message.Contains("CON"))
            {
                connected = true;
            }

           
        }
        public void write(string msg)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new MethodInvoker(delegate ()
                {
                    MsgToGet.Text += msg + "\r";
                    MsgToGet.SelectionStart = MsgToGet.TextLength;
                    MsgToGet.ScrollToCaret();

                }));
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            var command = "+++ATH\r";
            MessageBox.Show(command, "Ending call");
            connected = false;
            sp.Write(command);
        }

        private void SendBtt_Click(object sender, EventArgs e)
        {
            sp.Write(MsgToSend.Text + "\r\n");
            MessageBox.Show("Message sent");
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            string command = "ATA\r";
            MessageBox.Show("", "ACCEPTED CALL");
            sp.Write(command);
        }

        public void receive(object sender, SerialDataReceivedEventArgs e)
        {
          
            string msg = sp.ReadExisting();
            if (msg.Contains("CON"))
            {
                connected = true;
                MessageBox.Show("Connected with the modem.");
            }
            MessageBox.Show("MESSAGE: " + msg);
            Console.WriteLine(msg);
          
        }

      

        private void button5_Click(object sender, EventArgs e)
        {
            sp.Open();
            MessageBox.Show("Port Opened");
            sp.DataReceived += receive;
           
        }

        private void closeBtt_Click(object sender, EventArgs e)
        {
            sp.Close();
            MessageBox.Show("Port closed");
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
