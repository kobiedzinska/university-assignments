using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Media; //SoundPlay
using System.Runtime.InteropServices; //WaveForm
using System.IO;
using NAudio.Wave;
using System.Runtime.CompilerServices;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using WMPLib;


namespace Karta_dzwiękowa
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private string _fileName;
        private string file_path;
        private IWavePlayer waveOut;
        private AudioFileReader audioFileReader;
        [DllImport("winmm.dll", CharSet = CharSet.Auto)]
        public static extern int PlaySound(string pszSound, IntPtr hModule, uint dwFlags);
        public const uint SND_ASYNC = 0x0001;
        public const uint SND_FILENAME = 0x00020000;

        [DllImport("dsound.dll")]
        public static extern int DirectSoundCreate(ref Guid lpGuid, out IntPtr ppDS, IntPtr pUnknown);
        private IntPtr directSound;



        private WindowsMediaPlayer wp;
        private void ActivexBtt_Click(object sender, EventArgs e)
        {
            fillTheBox();
            Player.URL = file_path;
          
            if(Player.playState == WMPLib.WMPPlayState.wmppsPaused)
            {
                Player.Ctlcontrols.play();
            }

        }

        private void DirectSoundBtt_Click(object sender, EventArgs e)
        {
            try
            {
                using (var audioFile = new AudioFileReader(file_path))
                using (var outputDevice = new WaveOutEvent())
                {
                    outputDevice.Init(audioFile);
                    fillTheBox();
                    outputDevice.Play();

                    Console.ReadKey();
                    outputDevice.Stop();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error");
            }
        }

        [DllImport("winmm.dll", SetLastError = true)]
        private static extern int mciSendString(string lpstrCommand, string lpstrReturnString, int uReturnLength, int hwndCallback);

        private void stoprecordBtt_Click(object sender, EventArgs e)
        {
            mciSendString("save recsound " + _fileName, "", 0, 0);
            mciSendString("close recsound ", "", 0, 0);

            stoprecordBtt.Enabled = false;
            recordBtt.Enabled = true;
        }

        private void recordBtt_Click(object sender, EventArgs e)
        {
            using (SaveFileDialog sfd = new SaveFileDialog() { Filter = "Media (.wav)|*.wav" })
            {
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    _fileName = sfd.FileName;
                    mciSendString("open new Type waveaudio Alias recsound", "", 0, 0);
                    mciSendString("record recsound", "", 0, 0);
                    stoprecordBtt.Enabled = true;
                    recordBtt.Enabled = false;
                }
            }
        }

        private IWavePlayer waveOut;
        private AudioFileReader audioFileReader;

        private void WaveBtt_Click(object sender, EventArgs e)
        {
            if (waveOut != null)
            {
                waveOut.Stop();
                waveOut.Dispose();
                audioFileReader.Dispose();
            }

            waveOut = new WaveOut();
            audioFileReader = new AudioFileReader(file_path);
            waveOut.Init(audioFileReader);

            fillTheBox();
            waveOut.Play();

        }

        private void WaveFormStopBtt_Click(object sender, EventArgs e)
                {
                     StopMusic();

                }

        private void StopMusic()
        {
            if (waveOut != null)
            {
                waveOut.Stop();
                waveOut.Dispose();
                waveOut = null;
            }
            if (audioFileReader != null)
            {
                audioFileReader.Dispose();
                audioFileReader = null;
            }
        }

        private void chooserWAVBtt_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Pliki WAV (*.wav)|*.wav";
            openFileDialog.Title = "Wybierz plik .wav";

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                file_path = openFileDialog.FileName;
            }

        }

        

        private void fillTheBox()
        {
            using (FileStream fs = new FileStream(file_path, FileMode.Open, FileAccess.Read))
            {
                BinaryReader reader = new BinaryReader(fs);

                string chunk = new string(reader.ReadChars(4));
                int fileSize = reader.ReadInt32();
                string RIFF = new string(reader.ReadChars(4));
                string fmt = new string(reader.ReadChars(4));
                int fmtSize = reader.ReadInt32();
                short fmtCode = reader.ReadInt16();
                short channels = reader.ReadInt16();
                int sampleRate = reader.ReadInt32();
                int bps = reader.ReadInt32();
                short blockAlign = reader.ReadInt16();
                short bitDepth = reader.ReadInt16();

                listBox1.Items.Clear();
                listBox1.Items.AddRange(new string[]
                {
                    "Path:" + _fileName,
                    "chunkID: " + chunk,
                    "FileSize:" + fileSize,
                    "riffType: " + RIFF,
                    "fmtID: " + fmt,
                    "fmtSize: " + fmtSize,
                    "fmtCode: " + fmtCode,
                    "channels: " + channels,
                    "sampleRate: " + sampleRate,
                    "bitsPerSample: " + bps,
                    "blockAlign: " + blockAlign,
                    "bitDepth: " + bitDepth
                });
            }
        }

        private void chooserMP3Btt_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Pliki MP3 (*.mp3)|*.mp3";
            openFileDialog.Title = "Wybierz plik MP3";

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                file_path = openFileDialog.FileName;
            }
        }

   

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            //WaveForm stop button
            StopMusic();

        }
        private void StopMusic()
        {
            if (waveOut != null)
            {
                waveOut.Stop();   
                waveOut.Dispose();   
                waveOut = null;
            }
            if (audioFileReader != null)
            {
                audioFileReader.Dispose();
                audioFileReader = null;
            }
        }
        private void button6_Click(object sender, EventArgs e)
        {
          
         }

        private void button1_Click_1(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void button7_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            try
            {
                StopMusic();

                audioFileReader = new AudioFileReader(file_path);
                waveOut = new WaveOutEvent();
                waveOut.Init(audioFileReader);
                waveOut.Play();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Błąd podczas odtwarzania pliku: " + ex.Message);
            }
        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            //activex pause
            if(Player.playState == WMPLib.WMPPlayState.wmppsPlaying)
            {
                Player.Ctlcontrols.pause();
            }
        }
    }
}
