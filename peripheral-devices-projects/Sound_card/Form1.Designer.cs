namespace Karta_dzwiękowa
{
    partial class Form1
    {
        /// <summary>
        /// Wymagana zmienna projektanta.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Wyczyść wszystkie używane zasoby.
        /// </summary>
        /// <param name="disposing">prawda, jeżeli zarządzane zasoby powinny zostać zlikwidowane; Fałsz w przeciwnym wypadku.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Kod generowany przez Projektanta formularzy systemu Windows

        /// <summary>
        /// Metoda wymagana do obsługi projektanta — nie należy modyfikować
        /// jej zawartości w edytorze kodu.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.recordBtt = new System.Windows.Forms.Button();
            this.stoprecordBtt = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.WaveformLbl = new System.Windows.Forms.Label();
            this.WaveBtt = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.DirectSoundBtt = new System.Windows.Forms.Button();
            this.ActiveXLbl = new System.Windows.Forms.Label();
            this.ActivexBtt = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.chooserWAVBtt = new System.Windows.Forms.Button();
            this.WaveFormStopBtt = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.label4 = new System.Windows.Forms.Label();
            this.chooserMP3Btt = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.button6 = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.button7 = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.button8 = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.Player = new AxWMPLib.AxWindowsMediaPlayer();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.Player)).BeginInit();
            this.SuspendLayout();
            // 
            // recordBtt
            // 
            this.recordBtt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.recordBtt.Location = new System.Drawing.Point(57, 260);
            this.recordBtt.Name = "recordBtt";
            this.recordBtt.Size = new System.Drawing.Size(107, 30);
            this.recordBtt.TabIndex = 0;
            this.recordBtt.Text = "record";
            this.recordBtt.UseVisualStyleBackColor = true;
            this.recordBtt.Click += new System.EventHandler(this.recordBtt_Click);
            // 
            // stoprecordBtt
            // 
            this.stoprecordBtt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.stoprecordBtt.Location = new System.Drawing.Point(57, 305);
            this.stoprecordBtt.Name = "stoprecordBtt";
            this.stoprecordBtt.Size = new System.Drawing.Size(115, 32);
            this.stoprecordBtt.TabIndex = 1;
            this.stoprecordBtt.Text = "stop record";
            this.stoprecordBtt.UseVisualStyleBackColor = true;
            this.stoprecordBtt.Click += new System.EventHandler(this.stoprecordBtt_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Script MT Bold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label1.Location = new System.Drawing.Point(57, 214);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 24);
            this.label1.TabIndex = 2;
            this.label1.Text = "Microphone";
            // 
            // WaveformLbl
            // 
            this.WaveformLbl.AutoSize = true;
            this.WaveformLbl.Font = new System.Drawing.Font("Rockwell", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.WaveformLbl.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.WaveformLbl.Location = new System.Drawing.Point(678, 62);
            this.WaveformLbl.Name = "WaveformLbl";
            this.WaveformLbl.Size = new System.Drawing.Size(111, 25);
            this.WaveformLbl.TabIndex = 4;
            this.WaveformLbl.Text = "WaveForm";
            // 
            // WaveBtt
            // 
            this.WaveBtt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.WaveBtt.Location = new System.Drawing.Point(683, 101);
            this.WaveBtt.Name = "WaveBtt";
            this.WaveBtt.Size = new System.Drawing.Size(103, 36);
            this.WaveBtt.TabIndex = 5;
            this.WaveBtt.Text = "play";
            this.WaveBtt.UseVisualStyleBackColor = true;
            this.WaveBtt.Click += new System.EventHandler(this.WaveBtt_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Rockwell", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label2.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.label2.Location = new System.Drawing.Point(810, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(116, 23);
            this.label2.TabIndex = 6;
            this.label2.Text = "DirectSound";
            // 
            // DirectSoundBtt
            // 
            this.DirectSoundBtt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.DirectSoundBtt.Location = new System.Drawing.Point(814, 101);
            this.DirectSoundBtt.Name = "DirectSoundBtt";
            this.DirectSoundBtt.Size = new System.Drawing.Size(103, 36);
            this.DirectSoundBtt.TabIndex = 7;
            this.DirectSoundBtt.Text = "play";
            this.DirectSoundBtt.UseVisualStyleBackColor = true;
            this.DirectSoundBtt.Click += new System.EventHandler(this.DirectSoundBtt_Click);
            // 
            // ActiveXLbl
            // 
            this.ActiveXLbl.AutoSize = true;
            this.ActiveXLbl.Font = new System.Drawing.Font("Rockwell", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.ActiveXLbl.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.ActiveXLbl.Location = new System.Drawing.Point(954, 62);
            this.ActiveXLbl.Name = "ActiveXLbl";
            this.ActiveXLbl.Size = new System.Drawing.Size(85, 25);
            this.ActiveXLbl.TabIndex = 8;
            this.ActiveXLbl.Text = "ActiveX";
            // 
            // ActivexBtt
            // 
            this.ActivexBtt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.ActivexBtt.Location = new System.Drawing.Point(941, 101);
            this.ActivexBtt.Name = "ActivexBtt";
            this.ActivexBtt.Size = new System.Drawing.Size(103, 36);
            this.ActivexBtt.TabIndex = 9;
            this.ActivexBtt.Text = "play";
            this.ActivexBtt.UseVisualStyleBackColor = true;
            this.ActivexBtt.Click += new System.EventHandler(this.ActivexBtt_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Rockwell", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label3.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label3.Location = new System.Drawing.Point(811, 28);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(88, 23);
            this.label3.TabIndex = 10;
            this.label3.Text = "Plik .wav\r\n";
            // 
            // chooserWAVBtt
            // 
            this.chooserWAVBtt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.chooserWAVBtt.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.chooserWAVBtt.Location = new System.Drawing.Point(57, 154);
            this.chooserWAVBtt.Name = "chooserWAVBtt";
            this.chooserWAVBtt.Size = new System.Drawing.Size(138, 31);
            this.chooserWAVBtt.TabIndex = 11;
            this.chooserWAVBtt.Text = "choose a file";
            this.chooserWAVBtt.UseVisualStyleBackColor = true;
            this.chooserWAVBtt.Click += new System.EventHandler(this.chooserWAVBtt_Click);
            // 
            // WaveFormStopBtt
            // 
            this.WaveFormStopBtt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.WaveFormStopBtt.Location = new System.Drawing.Point(683, 153);
            this.WaveFormStopBtt.Name = "WaveFormStopBtt";
            this.WaveFormStopBtt.Size = new System.Drawing.Size(103, 31);
            this.WaveFormStopBtt.TabIndex = 12;
            this.WaveFormStopBtt.Text = "stop";
            this.WaveFormStopBtt.UseVisualStyleBackColor = true;
            this.WaveFormStopBtt.Click += new System.EventHandler(this.WaveFormStopBtt_Click);
            // 
            // button3
            // 
            this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button3.Location = new System.Drawing.Point(814, 154);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(103, 31);
            this.button3.TabIndex = 13;
            this.button3.Text = "stop";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button4.Location = new System.Drawing.Point(941, 154);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(103, 31);
            this.button4.TabIndex = 14;
            this.button4.Text = "stop";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // listBox1
            // 
            this.listBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 20;
            this.listBox1.Location = new System.Drawing.Point(350, 98);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(297, 284);
            this.listBox1.TabIndex = 15;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label4.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label4.Location = new System.Drawing.Point(201, 159);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(51, 22);
            this.label4.TabIndex = 16;
            this.label4.Text = ".wav";
            // 
            // chooserMP3Btt
            // 
            this.chooserMP3Btt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.chooserMP3Btt.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.chooserMP3Btt.Location = new System.Drawing.Point(57, 107);
            this.chooserMP3Btt.Name = "chooserMP3Btt";
            this.chooserMP3Btt.Size = new System.Drawing.Size(138, 31);
            this.chooserMP3Btt.TabIndex = 17;
            this.chooserMP3Btt.Text = "choose a file";
            this.chooserMP3Btt.UseVisualStyleBackColor = true;
            this.chooserMP3Btt.Click += new System.EventHandler(this.chooserMP3Btt_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label5.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label5.Location = new System.Drawing.Point(201, 111);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 22);
            this.label5.TabIndex = 18;
            this.label5.Text = ".mp3";
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button1.Location = new System.Drawing.Point(925, 483);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(103, 31);
            this.button1.TabIndex = 28;
            this.button1.Text = "stop";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button2.Location = new System.Drawing.Point(793, 483);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(103, 31);
            this.button2.TabIndex = 27;
            this.button2.Text = "stop";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button5
            // 
            this.button5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button5.Location = new System.Drawing.Point(662, 482);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(103, 31);
            this.button5.TabIndex = 26;
            this.button5.Text = "stop";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Rockwell", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label6.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label6.Location = new System.Drawing.Point(806, 359);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(93, 23);
            this.label6.TabIndex = 25;
            this.label6.Text = "Plik .mp3\n";
            // 
            // button6
            // 
            this.button6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button6.Location = new System.Drawing.Point(925, 430);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(103, 36);
            this.button6.TabIndex = 24;
            this.button6.Text = "play";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Rockwell", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label7.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.label7.Location = new System.Drawing.Point(938, 391);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(85, 25);
            this.label7.TabIndex = 23;
            this.label7.Text = "ActiveX";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // button7
            // 
            this.button7.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button7.Location = new System.Drawing.Point(793, 430);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(103, 36);
            this.button7.TabIndex = 22;
            this.button7.Text = "play";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Rockwell", 10.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label8.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.label8.Location = new System.Drawing.Point(789, 393);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(116, 23);
            this.label8.TabIndex = 21;
            this.label8.Text = "DirectSound";
            this.label8.Click += new System.EventHandler(this.label8_Click);
            // 
            // button8
            // 
            this.button8.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button8.Location = new System.Drawing.Point(662, 430);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(103, 36);
            this.button8.TabIndex = 20;
            this.button8.Text = "play";
            this.button8.UseVisualStyleBackColor = true;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Rockwell", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label9.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.label9.Location = new System.Drawing.Point(657, 391);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(111, 25);
            this.label9.TabIndex = 19;
            this.label9.Text = "WaveForm";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label10.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.label10.Location = new System.Drawing.Point(54, 512);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(243, 18);
            this.label10.TabIndex = 29;
            this.label10.Text = "*Nagranie zapisuje się do pliku .wav";
            // 
            // Player
            // 
            this.Player.Enabled = true;
            this.Player.Location = new System.Drawing.Point(529, 174);
            this.Player.Name = "Player";
            this.Player.OcxState = ((System.Windows.Forms.AxHost.State)(resources.GetObject("Player.OcxState")));
            this.Player.Size = new System.Drawing.Size(233, 116);
            this.Player.TabIndex = 30;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(768, 202);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(190, 16);
            this.label11.TabIndex = 31;
            this.label11.Text = "ActiveX: WindowsMediaPlayer";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(356, 71);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(209, 16);
            this.label12.TabIndex = 32;
            this.label12.Text = "Lista szczegółów nagłówka WAV";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.HotTrack;
            this.ClientSize = new System.Drawing.Size(1078, 539);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.Player);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.chooserMP3Btt);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.WaveFormStopBtt);
            this.Controls.Add(this.chooserWAVBtt);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.ActivexBtt);
            this.Controls.Add(this.ActiveXLbl);
            this.Controls.Add(this.DirectSoundBtt);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.WaveBtt);
            this.Controls.Add(this.WaveformLbl);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.stoprecordBtt);
            this.Controls.Add(this.recordBtt);
            this.Name = "Form1";
            this.Text = "okno";
            ((System.ComponentModel.ISupportInitialize)(this.Player)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button recordBtt;
        private System.Windows.Forms.Button stoprecordBtt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label WaveformLbl;
        private System.Windows.Forms.Button WaveBtt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button DirectSoundBtt;
        private System.Windows.Forms.Label ActiveXLbl;
        private System.Windows.Forms.Button ActivexBtt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button chooserWAVBtt;
        private System.Windows.Forms.Button WaveFormStopBtt;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button chooserMP3Btt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private AxWMPLib.AxWindowsMediaPlayer Player;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
    }
}

