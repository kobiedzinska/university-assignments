namespace Modemy_Obiedzinska_Martynienka
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
            this.ModNmb = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.MsgToSend = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.MsgToGet = new System.Windows.Forms.TextBox();
            this.SendBtt = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.closeBtt = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // ModNmb
            // 
            this.ModNmb.Location = new System.Drawing.Point(45, 106);
            this.ModNmb.Name = "ModNmb";
            this.ModNmb.Size = new System.Drawing.Size(100, 26);
            this.ModNmb.TabIndex = 0;
            this.ModNmb.TextChanged += new System.EventHandler(this.ModNmb_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(151, 112);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(279, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Numer modemu, do którego dzwonimy";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // MsgToSend
            // 
            this.MsgToSend.Location = new System.Drawing.Point(45, 237);
            this.MsgToSend.Name = "MsgToSend";
            this.MsgToSend.Size = new System.Drawing.Size(301, 26);
            this.MsgToSend.TabIndex = 2;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.button1.Location = new System.Drawing.Point(45, 152);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(104, 38);
            this.button1.TabIndex = 3;
            this.button1.Text = "CALL";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.button3.Location = new System.Drawing.Point(170, 152);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(104, 38);
            this.button3.TabIndex = 5;
            this.button3.Text = "END CALL";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(41, 208);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(164, 20);
            this.label2.TabIndex = 6;
            this.label2.Text = "MESSAGE TO SEND";
            // 
            // MsgToGet
            // 
            this.MsgToGet.Location = new System.Drawing.Point(45, 292);
            this.MsgToGet.Name = "MsgToGet";
            this.MsgToGet.Size = new System.Drawing.Size(301, 26);
            this.MsgToGet.TabIndex = 7;
            // 
            // SendBtt
            // 
            this.SendBtt.Location = new System.Drawing.Point(363, 228);
            this.SendBtt.Name = "SendBtt";
            this.SendBtt.Size = new System.Drawing.Size(89, 29);
            this.SendBtt.TabIndex = 8;
            this.SendBtt.Text = "SEND";
            this.SendBtt.UseVisualStyleBackColor = true;
            this.SendBtt.Click += new System.EventHandler(this.SendBtt_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(41, 266);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(178, 20);
            this.label3.TabIndex = 9;
            this.label3.Text = "MESSAGE RECEIVED";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // button4
            // 
            this.button4.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.button4.Location = new System.Drawing.Point(299, 152);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(104, 38);
            this.button4.TabIndex = 10;
            this.button4.Text = "ACCEPT";
            this.button4.UseVisualStyleBackColor = false;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(656, 134);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(104, 38);
            this.button5.TabIndex = 11;
            this.button5.Text = "OPEN";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // closeBtt
            // 
            this.closeBtt.Location = new System.Drawing.Point(656, 178);
            this.closeBtt.Name = "closeBtt";
            this.closeBtt.Size = new System.Drawing.Size(104, 38);
            this.closeBtt.TabIndex = 12;
            this.closeBtt.Text = "CLOSE";
            this.closeBtt.UseVisualStyleBackColor = true;
            this.closeBtt.Click += new System.EventHandler(this.closeBtt_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(679, 106);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 20);
            this.label4.TabIndex = 13;
            this.label4.Text = "PORT";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.closeBtt);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.SendBtt);
            this.Controls.Add(this.MsgToGet);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.MsgToSend);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.ModNmb);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox ModNmb;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox MsgToSend;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox MsgToGet;
        private System.Windows.Forms.Button SendBtt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button closeBtt;
        private System.Windows.Forms.Label label4;
    }
}

