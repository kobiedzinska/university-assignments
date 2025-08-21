namespace Bluetooth
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            listBox1 = new ListBox();
            button1 = new Button();
            button2 = new Button();
            label1 = new Label();
            pbStatus = new PictureBox();
            label2 = new Label();
            scanButton = new Button();
            pairButton = new Button();
            choosefileButton = new Button();
            sendfileButton = new Button();
            label3 = new Label();
            nameTextBox = new TextBox();
            isPairedLabel = new Label();
            label5 = new Label();
            label6 = new Label();
            label7 = new Label();
            isConnectedLabel = new Label();
            label9 = new Label();
            addressTextBox = new TextBox();
            statusLabel = new Label();
            label8 = new Label();
            listBox2 = new ListBox();
            label4 = new Label();
            connectButton = new Button();
            ((System.ComponentModel.ISupportInitialize)pbStatus).BeginInit();
            SuspendLayout();
            // 
            // listBox1
            // 
            listBox1.FormattingEnabled = true;
            listBox1.Location = new Point(651, 104);
            listBox1.Margin = new Padding(5);
            listBox1.Name = "listBox1";
            listBox1.Size = new Size(635, 324);
            listBox1.TabIndex = 0;
            listBox1.SelectedIndexChanged += listBox1_SelectedIndexChanged;
            // 
            // button1
            // 
            button1.Location = new Point(78, 181);
            button1.Margin = new Padding(5);
            button1.Name = "button1";
            button1.Size = new Size(141, 51);
            button1.TabIndex = 1;
            button1.Text = "open";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // button2
            // 
            button2.Location = new Point(78, 242);
            button2.Margin = new Padding(5);
            button2.Name = "button2";
            button2.Size = new Size(141, 51);
            button2.TabIndex = 2;
            button2.Text = "close";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 238);
            label1.Location = new Point(78, 144);
            label1.Margin = new Padding(5, 0, 5, 0);
            label1.Name = "label1";
            label1.Size = new Size(295, 32);
            label1.TabIndex = 3;
            label1.Text = "Bluetooth device status :";
            // 
            // pbStatus
            // 
            pbStatus.Location = new Point(377, 144);
            pbStatus.Margin = new Padding(5);
            pbStatus.Name = "pbStatus";
            pbStatus.Size = new Size(44, 42);
            pbStatus.TabIndex = 4;
            pbStatus.TabStop = false;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(651, 67);
            label2.Margin = new Padding(5, 0, 5, 0);
            label2.Name = "label2";
            label2.Size = new Size(218, 32);
            label2.TabIndex = 5;
            label2.Text = "Discovered devices";
            // 
            // scanButton
            // 
            scanButton.Location = new Point(651, 438);
            scanButton.Margin = new Padding(5);
            scanButton.Name = "scanButton";
            scanButton.Size = new Size(176, 48);
            scanButton.TabIndex = 6;
            scanButton.Text = "Find devices";
            scanButton.UseVisualStyleBackColor = true;
            scanButton.Click += button3_Click;
            // 
            // pairButton
            // 
            pairButton.Location = new Point(78, 547);
            pairButton.Margin = new Padding(5);
            pairButton.Name = "pairButton";
            pairButton.Size = new Size(153, 46);
            pairButton.TabIndex = 7;
            pairButton.Text = "pair";
            pairButton.UseVisualStyleBackColor = true;
            pairButton.Click += button4_Click;
            // 
            // choosefileButton
            // 
            choosefileButton.Location = new Point(78, 603);
            choosefileButton.Margin = new Padding(5);
            choosefileButton.Name = "choosefileButton";
            choosefileButton.Size = new Size(153, 51);
            choosefileButton.TabIndex = 8;
            choosefileButton.Text = "choose file";
            choosefileButton.UseVisualStyleBackColor = true;
            choosefileButton.Click += choosefileButton_Click;
            // 
            // sendfileButton
            // 
            sendfileButton.Location = new Point(265, 603);
            sendfileButton.Margin = new Padding(5);
            sendfileButton.Name = "sendfileButton";
            sendfileButton.Size = new Size(130, 48);
            sendfileButton.TabIndex = 9;
            sendfileButton.Text = "send file";
            sendfileButton.UseVisualStyleBackColor = true;
            sendfileButton.Click += sendfileButton_Click;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 238);
            label3.Location = new Point(68, 314);
            label3.Margin = new Padding(5, 0, 5, 0);
            label3.Name = "label3";
            label3.Size = new Size(161, 32);
            label3.TabIndex = 10;
            label3.Text = "Devices info:";
            // 
            // nameTextBox
            // 
            nameTextBox.Location = new Point(78, 410);
            nameTextBox.Margin = new Padding(5);
            nameTextBox.Name = "nameTextBox";
            nameTextBox.Size = new Size(246, 39);
            nameTextBox.TabIndex = 11;
            // 
            // isPairedLabel
            // 
            isPairedLabel.AutoSize = true;
            isPairedLabel.Location = new Point(208, 485);
            isPairedLabel.Margin = new Padding(5, 0, 5, 0);
            isPairedLabel.Name = "isPairedLabel";
            isPairedLabel.Size = new Size(42, 32);
            isPairedLabel.TabIndex = 13;
            isPairedLabel.Text = "no";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(80, 485);
            label5.Margin = new Padding(5, 0, 5, 0);
            label5.Name = "label5";
            label5.Size = new Size(115, 32);
            label5.TabIndex = 14;
            label5.Text = "Is paired?";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(78, 373);
            label6.Margin = new Padding(5, 0, 5, 0);
            label6.Name = "label6";
            label6.Size = new Size(79, 32);
            label6.TabIndex = 15;
            label6.Text = "name:";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(265, 485);
            label7.Margin = new Padding(5, 0, 5, 0);
            label7.Name = "label7";
            label7.Size = new Size(160, 32);
            label7.TabIndex = 16;
            label7.Text = "Is connected?";
            // 
            // isConnectedLabel
            // 
            isConnectedLabel.AutoSize = true;
            isConnectedLabel.Location = new Point(436, 485);
            isConnectedLabel.Margin = new Padding(5, 0, 5, 0);
            isConnectedLabel.Name = "isConnectedLabel";
            isConnectedLabel.Size = new Size(42, 32);
            isConnectedLabel.TabIndex = 17;
            isConnectedLabel.Text = "no";
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Location = new Point(377, 373);
            label9.Margin = new Padding(5, 0, 5, 0);
            label9.Name = "label9";
            label9.Size = new Size(98, 32);
            label9.TabIndex = 18;
            label9.Text = "Address";
            // 
            // addressTextBox
            // 
            addressTextBox.Location = new Point(377, 410);
            addressTextBox.Margin = new Padding(5);
            addressTextBox.Name = "addressTextBox";
            addressTextBox.Size = new Size(246, 39);
            addressTextBox.TabIndex = 19;
            // 
            // statusLabel
            // 
            statusLabel.AutoSize = true;
            statusLabel.Location = new Point(177, 87);
            statusLabel.Margin = new Padding(5, 0, 5, 0);
            statusLabel.Name = "statusLabel";
            statusLabel.Size = new Size(90, 32);
            statusLabel.TabIndex = 20;
            statusLabel.Text = "[status]";
            
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(78, 87);
            label8.Margin = new Padding(5, 0, 5, 0);
            label8.Name = "label8";
            label8.Size = new Size(105, 32);
            label8.TabIndex = 22;
            label8.Text = "STATUS: ";
           
            // 
            // listBox2
            // 
            listBox2.FormattingEnabled = true;
            listBox2.Location = new Point(651, 560);
            listBox2.Margin = new Padding(5);
            listBox2.Name = "listBox2";
            listBox2.Size = new Size(635, 164);
            listBox2.TabIndex = 23;
            listBox2.SelectedIndexChanged += listBox2_SelectedIndexChanged;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(651, 511);
            label4.Margin = new Padding(5, 0, 5, 0);
            label4.Name = "label4";
            label4.Size = new Size(165, 32);
            label4.TabIndex = 24;
            label4.Text = "Paired devices";
            // 
            // connectButton
            // 
            connectButton.Location = new Point(265, 547);
            connectButton.Margin = new Padding(5);
            connectButton.Name = "connectButton";
            connectButton.Size = new Size(130, 46);
            connectButton.TabIndex = 25;
            connectButton.Text = "connect";
            connectButton.UseVisualStyleBackColor = true;
            connectButton.Click += button3_Click_1;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(13F, 32F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1443, 757);
            Controls.Add(connectButton);
            Controls.Add(label4);
            Controls.Add(listBox2);
            Controls.Add(label8);
            Controls.Add(statusLabel);
            Controls.Add(addressTextBox);
            Controls.Add(label9);
            Controls.Add(isConnectedLabel);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(isPairedLabel);
            Controls.Add(nameTextBox);
            Controls.Add(label3);
            Controls.Add(sendfileButton);
            Controls.Add(choosefileButton);
            Controls.Add(pairButton);
            Controls.Add(scanButton);
            Controls.Add(label2);
            Controls.Add(pbStatus);
            Controls.Add(label1);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(listBox1);
            Margin = new Padding(5);
            Name = "Form1";
            Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)pbStatus).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private ListBox listBox1;
        private Button button1;
        private Button button2;
        private Label label1;
        private PictureBox pbStatus;
        private Label label2;
        private Button scanButton;
        private Button pairButton;
        private Button choosefileButton;
        private Button sendfileButton;
        private Label label3;
        private TextBox nameTextBox;
        private Label isPairedLabel;
        private Label label5;
        private Label label6;
        private Label label7;
        private Label isConnectedLabel;
        private Label label9;
        private TextBox addressTextBox;
        private Label statusLabel;
        private Label label8;
        private ListBox listBox2;
        private Label label4;
        private Button connectButton;
    }
}
