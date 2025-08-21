namespace Skaner_plaski_gr5A
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.scanImage = new System.Windows.Forms.PictureBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.baw = new System.Windows.Forms.RadioButton();
            this.gray = new System.Windows.Forms.RadioButton();
            this.colorBt = new System.Windows.Forms.RadioButton();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.quarter = new System.Windows.Forms.RadioButton();
            this.half = new System.Windows.Forms.RadioButton();
            this.full = new System.Windows.Forms.RadioButton();
            this.scanBtt = new System.Windows.Forms.Button();
            this.saveBtt = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.scanImage)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // scanImage
            // 
            this.scanImage.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.scanImage.Location = new System.Drawing.Point(28, 46);
            this.scanImage.Name = "scanImage";
            this.scanImage.Size = new System.Drawing.Size(610, 750);
            this.scanImage.TabIndex = 0;
            this.scanImage.TabStop = false;

            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.baw);
            this.groupBox1.Controls.Add(this.gray);
            this.groupBox1.Controls.Add(this.colorBt);
            this.groupBox1.Location = new System.Drawing.Point(658, 61);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(500, 102);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Color";
            // 
            // baw
            // 
            this.baw.AutoSize = true;
            this.baw.Location = new System.Drawing.Point(331, 47);
            this.baw.Name = "baw";
            this.baw.Size = new System.Drawing.Size(68, 24);
            this.baw.TabIndex = 5;
            this.baw.TabStop = true;
            this.baw.Text = "color";
            this.baw.UseVisualStyleBackColor = true;
            // 
            // gray
            // 
            this.gray.AutoSize = true;
            this.gray.Location = new System.Drawing.Point(163, 47);
            this.gray.Name = "gray";
            this.gray.Size = new System.Drawing.Size(101, 24);
            this.gray.TabIndex = 4;
            this.gray.TabStop = true;
            this.gray.Text = "grayscale";
            this.gray.UseVisualStyleBackColor = true;
            // 
            // colorBt
            // 
            this.colorBt.AutoSize = true;
            this.colorBt.Location = new System.Drawing.Point(14, 47);
            this.colorBt.Name = "colorBt";
            this.colorBt.Size = new System.Drawing.Size(143, 24);
            this.colorBt.TabIndex = 3;
            this.colorBt.TabStop = true;
            this.colorBt.Text = "black and white";
            this.colorBt.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.quarter);
            this.groupBox2.Controls.Add(this.half);
            this.groupBox2.Controls.Add(this.full);
            this.groupBox2.Location = new System.Drawing.Point(658, 209);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(499, 81);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Size";
            // 
            // quarter
            // 
            this.quarter.AutoSize = true;
            this.quarter.Location = new System.Drawing.Point(302, 35);
            this.quarter.Name = "quarter";
            this.quarter.Size = new System.Drawing.Size(56, 24);
            this.quarter.TabIndex = 5;
            this.quarter.TabStop = true;
            this.quarter.Text = "1/4";
            this.quarter.UseVisualStyleBackColor = true;
            // 
            // half
            // 
            this.half.AutoSize = true;
            this.half.Location = new System.Drawing.Point(154, 35);
            this.half.Name = "half";
            this.half.Size = new System.Drawing.Size(56, 24);
            this.half.TabIndex = 4;
            this.half.TabStop = true;
            this.half.Text = "1/2";
            this.half.UseVisualStyleBackColor = true;
            // 
            // full
            // 
            this.full.AutoSize = true;
            this.full.Location = new System.Drawing.Point(31, 35);
            this.full.Name = "full";
            this.full.Size = new System.Drawing.Size(54, 24);
            this.full.TabIndex = 3;
            this.full.TabStop = true;
            this.full.Text = "full";
            this.full.UseVisualStyleBackColor = true;
            // 
            // scanBtt
            // 
            this.scanBtt.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.scanBtt.Location = new System.Drawing.Point(672, 331);
            this.scanBtt.Name = "scanBtt";
            this.scanBtt.Size = new System.Drawing.Size(95, 44);
            this.scanBtt.TabIndex = 3;
            this.scanBtt.Text = "SCAN";
            this.scanBtt.UseVisualStyleBackColor = false;
            this.scanBtt.Click += new System.EventHandler(this.scanBtt_Click);
            // 
            // saveBtt
            // 
            this.saveBtt.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.saveBtt.Location = new System.Drawing.Point(788, 331);
            this.saveBtt.Name = "saveBtt";
            this.saveBtt.Size = new System.Drawing.Size(95, 44);
            this.saveBtt.TabIndex = 4;
            this.saveBtt.Text = "SAVE";
            this.saveBtt.UseVisualStyleBackColor = false;
            this.saveBtt.Click += new System.EventHandler(this.saveBtt_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 803);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(104, 20);
            this.label1.TabIndex = 5;
            this.label1.Text = "[obraz skanu]";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(672, 751);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(140, 28);
            this.comboBox1.TabIndex = 6;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.button1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.button1.Location = new System.Drawing.Point(672, 669);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(140, 41);
            this.button1.TabIndex = 7;
            this.button1.Text = "Look for devices";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(668, 728);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(147, 20);
            this.label2.TabIndex = 8;
            this.label2.Text = "Choose your device";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1241, 870);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.saveBtt);
            this.Controls.Add(this.scanBtt);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.scanImage);
            this.Name = "Form1";
            this.Text = "Scanner";
            ((System.ComponentModel.ISupportInitialize)(this.scanImage)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox scanImage;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button scanBtt;
        private System.Windows.Forms.Button saveBtt;
        private System.Windows.Forms.RadioButton baw;
        private System.Windows.Forms.RadioButton gray;
        private System.Windows.Forms.RadioButton colorBt;
        private System.Windows.Forms.RadioButton quarter;
        private System.Windows.Forms.RadioButton half;
        private System.Windows.Forms.RadioButton full;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label2;
    }
}

