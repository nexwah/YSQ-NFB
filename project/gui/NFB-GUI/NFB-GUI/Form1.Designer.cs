
namespace NFB_GUI
{
    partial class FormNFB
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormNFB));
            this.labelTemperature = new System.Windows.Forms.Label();
            this.textBoxTemperature = new System.Windows.Forms.TextBox();
            this.labelComPort = new System.Windows.Forms.Label();
            this.labelBaudRate = new System.Windows.Forms.Label();
            this.comboBoxComPort = new System.Windows.Forms.ComboBox();
            this.comboBoxBaudRate = new System.Windows.Forms.ComboBox();
            this.buttonOpen = new System.Windows.Forms.Button();
            this.buttonClose = new System.Windows.Forms.Button();
            this.buttonScan = new System.Windows.Forms.Button();
            this.groupBoxComPortSetting = new System.Windows.Forms.GroupBox();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.labelPuffNo = new System.Windows.Forms.Label();
            this.textBoxPuffNo = new System.Windows.Forms.TextBox();
            this.groupBoxDisplay = new System.Windows.Forms.GroupBox();
            this.buttonClear2 = new System.Windows.Forms.Button();
            this.checkBoxShow = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.textBoxTCR = new System.Windows.Forms.TextBox();
            this.textBoxRefResistance = new System.Windows.Forms.TextBox();
            this.textBoxRefTemperature = new System.Windows.Forms.TextBox();
            this.buttonRead2 = new System.Windows.Forms.Button();
            this.labelRefTemperature = new System.Windows.Forms.Label();
            this.labelRefResistance = new System.Windows.Forms.Label();
            this.labelTCR = new System.Windows.Forms.Label();
            this.groupBoxTestSetting = new System.Windows.Forms.GroupBox();
            this.textBoxPuffTarget = new System.Windows.Forms.TextBox();
            this.textBoxPuffNumber = new System.Windows.Forms.TextBox();
            this.textBoxTime2 = new System.Windows.Forms.TextBox();
            this.textBoxTemperature1 = new System.Windows.Forms.TextBox();
            this.textBoxTemperature2 = new System.Windows.Forms.TextBox();
            this.textBoxTime1 = new System.Windows.Forms.TextBox();
            this.buttonRead = new System.Windows.Forms.Button();
            this.labelPuffTarget = new System.Windows.Forms.Label();
            this.labelTemp2 = new System.Windows.Forms.Label();
            this.labelTime2 = new System.Windows.Forms.Label();
            this.labelPuffNumber = new System.Windows.Forms.Label();
            this.labelTemp1 = new System.Windows.Forms.Label();
            this.labelTime1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.buttonSetting = new System.Windows.Forms.Button();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.groupBoxComPortSetting.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).BeginInit();
            this.groupBoxDisplay.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBoxTestSetting.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // labelTemperature
            // 
            this.labelTemperature.AutoSize = true;
            this.labelTemperature.Location = new System.Drawing.Point(11, 21);
            this.labelTemperature.Name = "labelTemperature";
            this.labelTemperature.Size = new System.Drawing.Size(89, 13);
            this.labelTemperature.TabIndex = 38;
            this.labelTemperature.Text = "TEMPERATURE";
            // 
            // textBoxTemperature
            // 
            this.textBoxTemperature.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxTemperature.Location = new System.Drawing.Point(106, 19);
            this.textBoxTemperature.Name = "textBoxTemperature";
            this.textBoxTemperature.ReadOnly = true;
            this.textBoxTemperature.Size = new System.Drawing.Size(60, 20);
            this.textBoxTemperature.TabIndex = 37;
            // 
            // labelComPort
            // 
            this.labelComPort.AutoSize = true;
            this.labelComPort.Location = new System.Drawing.Point(6, 32);
            this.labelComPort.Name = "labelComPort";
            this.labelComPort.Size = new System.Drawing.Size(64, 13);
            this.labelComPort.TabIndex = 2;
            this.labelComPort.Text = "COM PORT";
            // 
            // labelBaudRate
            // 
            this.labelBaudRate.AutoSize = true;
            this.labelBaudRate.Location = new System.Drawing.Point(6, 59);
            this.labelBaudRate.Name = "labelBaudRate";
            this.labelBaudRate.Size = new System.Drawing.Size(69, 13);
            this.labelBaudRate.TabIndex = 3;
            this.labelBaudRate.Text = "BAUD RATE";
            // 
            // comboBoxComPort
            // 
            this.comboBoxComPort.FormattingEnabled = true;
            this.comboBoxComPort.Location = new System.Drawing.Point(81, 29);
            this.comboBoxComPort.Name = "comboBoxComPort";
            this.comboBoxComPort.Size = new System.Drawing.Size(71, 21);
            this.comboBoxComPort.TabIndex = 5;
            // 
            // comboBoxBaudRate
            // 
            this.comboBoxBaudRate.FormattingEnabled = true;
            this.comboBoxBaudRate.Items.AddRange(new object[] {
            "9600",
            "115200"});
            this.comboBoxBaudRate.Location = new System.Drawing.Point(81, 56);
            this.comboBoxBaudRate.Name = "comboBoxBaudRate";
            this.comboBoxBaudRate.Size = new System.Drawing.Size(71, 21);
            this.comboBoxBaudRate.TabIndex = 6;
            // 
            // buttonOpen
            // 
            this.buttonOpen.Location = new System.Drawing.Point(9, 124);
            this.buttonOpen.Name = "buttonOpen";
            this.buttonOpen.Size = new System.Drawing.Size(143, 23);
            this.buttonOpen.TabIndex = 8;
            this.buttonOpen.Text = "OPEN";
            this.buttonOpen.UseVisualStyleBackColor = true;
            this.buttonOpen.Click += new System.EventHandler(this.buttonOpen_Click);
            // 
            // buttonClose
            // 
            this.buttonClose.Location = new System.Drawing.Point(9, 153);
            this.buttonClose.Name = "buttonClose";
            this.buttonClose.Size = new System.Drawing.Size(143, 23);
            this.buttonClose.TabIndex = 9;
            this.buttonClose.Text = "CLOSE";
            this.buttonClose.UseVisualStyleBackColor = true;
            this.buttonClose.Click += new System.EventHandler(this.buttonClose_Click);
            // 
            // buttonScan
            // 
            this.buttonScan.Location = new System.Drawing.Point(9, 182);
            this.buttonScan.Name = "buttonScan";
            this.buttonScan.Size = new System.Drawing.Size(143, 23);
            this.buttonScan.TabIndex = 10;
            this.buttonScan.Text = "SCAN";
            this.buttonScan.UseVisualStyleBackColor = true;
            this.buttonScan.Click += new System.EventHandler(this.buttonScan_Click);
            // 
            // groupBoxComPortSetting
            // 
            this.groupBoxComPortSetting.Controls.Add(this.buttonScan);
            this.groupBoxComPortSetting.Controls.Add(this.buttonClose);
            this.groupBoxComPortSetting.Controls.Add(this.buttonOpen);
            this.groupBoxComPortSetting.Controls.Add(this.comboBoxBaudRate);
            this.groupBoxComPortSetting.Controls.Add(this.comboBoxComPort);
            this.groupBoxComPortSetting.Controls.Add(this.labelBaudRate);
            this.groupBoxComPortSetting.Controls.Add(this.labelComPort);
            this.groupBoxComPortSetting.Location = new System.Drawing.Point(12, 12);
            this.groupBoxComPortSetting.Name = "groupBoxComPortSetting";
            this.groupBoxComPortSetting.Size = new System.Drawing.Size(163, 215);
            this.groupBoxComPortSetting.TabIndex = 0;
            this.groupBoxComPortSetting.TabStop = false;
            this.groupBoxComPortSetting.Text = "COM PORT SETTING";
            // 
            // chart1
            // 
            chartArea1.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.chart1.Legends.Add(legend1);
            this.chart1.Location = new System.Drawing.Point(12, 233);
            this.chart1.Name = "chart1";
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series1.Legend = "Legend1";
            series1.Name = "Temperature";
            this.chart1.Series.Add(series1);
            this.chart1.Size = new System.Drawing.Size(728, 344);
            this.chart1.TabIndex = 28;
            this.chart1.Text = "chart1";
            // 
            // labelPuffNo
            // 
            this.labelPuffNo.AutoSize = true;
            this.labelPuffNo.Location = new System.Drawing.Point(14, 46);
            this.labelPuffNo.Name = "labelPuffNo";
            this.labelPuffNo.Size = new System.Drawing.Size(53, 13);
            this.labelPuffNo.TabIndex = 40;
            this.labelPuffNo.Text = "PUFF NO";
            // 
            // textBoxPuffNo
            // 
            this.textBoxPuffNo.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxPuffNo.Location = new System.Drawing.Point(106, 46);
            this.textBoxPuffNo.Name = "textBoxPuffNo";
            this.textBoxPuffNo.ReadOnly = true;
            this.textBoxPuffNo.Size = new System.Drawing.Size(60, 20);
            this.textBoxPuffNo.TabIndex = 39;
            // 
            // groupBoxDisplay
            // 
            this.groupBoxDisplay.Controls.Add(this.textBoxPuffNo);
            this.groupBoxDisplay.Controls.Add(this.buttonClear2);
            this.groupBoxDisplay.Controls.Add(this.textBoxTemperature);
            this.groupBoxDisplay.Controls.Add(this.labelPuffNo);
            this.groupBoxDisplay.Controls.Add(this.labelTemperature);
            this.groupBoxDisplay.Location = new System.Drawing.Point(565, 80);
            this.groupBoxDisplay.Name = "groupBoxDisplay";
            this.groupBoxDisplay.Size = new System.Drawing.Size(175, 147);
            this.groupBoxDisplay.TabIndex = 36;
            this.groupBoxDisplay.TabStop = false;
            this.groupBoxDisplay.Text = "Display";
            // 
            // buttonClear2
            // 
            this.buttonClear2.Location = new System.Drawing.Point(14, 108);
            this.buttonClear2.Name = "buttonClear2";
            this.buttonClear2.Size = new System.Drawing.Size(152, 28);
            this.buttonClear2.TabIndex = 37;
            this.buttonClear2.Text = "CLEAR";
            this.buttonClear2.UseVisualStyleBackColor = true;
            this.buttonClear2.Click += new System.EventHandler(this.buttonClear2_Click);
            // 
            // checkBoxShow
            // 
            this.checkBoxShow.AutoSize = true;
            this.checkBoxShow.Location = new System.Drawing.Point(663, 536);
            this.checkBoxShow.Name = "checkBoxShow";
            this.checkBoxShow.Size = new System.Drawing.Size(60, 17);
            this.checkBoxShow.TabIndex = 37;
            this.checkBoxShow.Text = "SHOW";
            this.checkBoxShow.UseVisualStyleBackColor = true;
            this.checkBoxShow.CheckedChanged += new System.EventHandler(this.checkBoxShow_CheckedChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.textBoxTCR);
            this.groupBox1.Controls.Add(this.textBoxRefResistance);
            this.groupBox1.Controls.Add(this.textBoxRefTemperature);
            this.groupBox1.Controls.Add(this.buttonRead2);
            this.groupBox1.Controls.Add(this.labelRefTemperature);
            this.groupBox1.Controls.Add(this.labelRefResistance);
            this.groupBox1.Controls.Add(this.labelTCR);
            this.groupBox1.Location = new System.Drawing.Point(364, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(195, 215);
            this.groupBox1.TabIndex = 42;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "TCR Parameter";
            // 
            // textBoxTCR
            // 
            this.textBoxTCR.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxTCR.Location = new System.Drawing.Point(125, 31);
            this.textBoxTCR.Name = "textBoxTCR";
            this.textBoxTCR.ReadOnly = true;
            this.textBoxTCR.Size = new System.Drawing.Size(60, 20);
            this.textBoxTCR.TabIndex = 40;
            // 
            // textBoxRefResistance
            // 
            this.textBoxRefResistance.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxRefResistance.Location = new System.Drawing.Point(125, 83);
            this.textBoxRefResistance.Name = "textBoxRefResistance";
            this.textBoxRefResistance.ReadOnly = true;
            this.textBoxRefResistance.Size = new System.Drawing.Size(60, 20);
            this.textBoxRefResistance.TabIndex = 39;
            // 
            // textBoxRefTemperature
            // 
            this.textBoxRefTemperature.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxRefTemperature.Location = new System.Drawing.Point(125, 57);
            this.textBoxRefTemperature.Name = "textBoxRefTemperature";
            this.textBoxRefTemperature.ReadOnly = true;
            this.textBoxRefTemperature.Size = new System.Drawing.Size(60, 20);
            this.textBoxRefTemperature.TabIndex = 38;
            // 
            // buttonRead2
            // 
            this.buttonRead2.Location = new System.Drawing.Point(9, 182);
            this.buttonRead2.Name = "buttonRead2";
            this.buttonRead2.Size = new System.Drawing.Size(169, 23);
            this.buttonRead2.TabIndex = 35;
            this.buttonRead2.Text = "READ";
            this.buttonRead2.UseVisualStyleBackColor = true;
            this.buttonRead2.Click += new System.EventHandler(this.buttonRead2_Click);
            // 
            // labelRefTemperature
            // 
            this.labelRefTemperature.AutoSize = true;
            this.labelRefTemperature.Location = new System.Drawing.Point(6, 59);
            this.labelRefTemperature.Name = "labelRefTemperature";
            this.labelRefTemperature.Size = new System.Drawing.Size(113, 13);
            this.labelRefTemperature.TabIndex = 22;
            this.labelRefTemperature.Text = "REF TEMPERATURE";
            // 
            // labelRefResistance
            // 
            this.labelRefResistance.AutoSize = true;
            this.labelRefResistance.Location = new System.Drawing.Point(6, 85);
            this.labelRefResistance.Name = "labelRefResistance";
            this.labelRefResistance.Size = new System.Drawing.Size(99, 13);
            this.labelRefResistance.TabIndex = 2;
            this.labelRefResistance.Text = "REF RESISTANCE";
            // 
            // labelTCR
            // 
            this.labelTCR.AutoSize = true;
            this.labelTCR.Location = new System.Drawing.Point(6, 33);
            this.labelTCR.Name = "labelTCR";
            this.labelTCR.Size = new System.Drawing.Size(29, 13);
            this.labelTCR.TabIndex = 0;
            this.labelTCR.Text = "TCR";
            // 
            // groupBoxTestSetting
            // 
            this.groupBoxTestSetting.Controls.Add(this.textBoxPuffTarget);
            this.groupBoxTestSetting.Controls.Add(this.textBoxPuffNumber);
            this.groupBoxTestSetting.Controls.Add(this.textBoxTime2);
            this.groupBoxTestSetting.Controls.Add(this.textBoxTemperature1);
            this.groupBoxTestSetting.Controls.Add(this.textBoxTemperature2);
            this.groupBoxTestSetting.Controls.Add(this.textBoxTime1);
            this.groupBoxTestSetting.Controls.Add(this.buttonRead);
            this.groupBoxTestSetting.Controls.Add(this.labelPuffTarget);
            this.groupBoxTestSetting.Controls.Add(this.labelTemp2);
            this.groupBoxTestSetting.Controls.Add(this.labelTime2);
            this.groupBoxTestSetting.Controls.Add(this.labelPuffNumber);
            this.groupBoxTestSetting.Controls.Add(this.labelTemp1);
            this.groupBoxTestSetting.Controls.Add(this.labelTime1);
            this.groupBoxTestSetting.Location = new System.Drawing.Point(181, 12);
            this.groupBoxTestSetting.Name = "groupBoxTestSetting";
            this.groupBoxTestSetting.Size = new System.Drawing.Size(177, 215);
            this.groupBoxTestSetting.TabIndex = 41;
            this.groupBoxTestSetting.TabStop = false;
            this.groupBoxTestSetting.Text = "Heating Profile Parameter";
            // 
            // textBoxPuffTarget
            // 
            this.textBoxPuffTarget.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxPuffTarget.Location = new System.Drawing.Point(107, 161);
            this.textBoxPuffTarget.Name = "textBoxPuffTarget";
            this.textBoxPuffTarget.ReadOnly = true;
            this.textBoxPuffTarget.Size = new System.Drawing.Size(60, 20);
            this.textBoxPuffTarget.TabIndex = 46;
            // 
            // textBoxPuffNumber
            // 
            this.textBoxPuffNumber.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxPuffNumber.Location = new System.Drawing.Point(107, 137);
            this.textBoxPuffNumber.Name = "textBoxPuffNumber";
            this.textBoxPuffNumber.ReadOnly = true;
            this.textBoxPuffNumber.Size = new System.Drawing.Size(60, 20);
            this.textBoxPuffNumber.TabIndex = 45;
            // 
            // textBoxTime2
            // 
            this.textBoxTime2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxTime2.Location = new System.Drawing.Point(107, 59);
            this.textBoxTime2.Name = "textBoxTime2";
            this.textBoxTime2.ReadOnly = true;
            this.textBoxTime2.Size = new System.Drawing.Size(60, 20);
            this.textBoxTime2.TabIndex = 44;
            // 
            // textBoxTemperature1
            // 
            this.textBoxTemperature1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxTemperature1.Location = new System.Drawing.Point(107, 82);
            this.textBoxTemperature1.Name = "textBoxTemperature1";
            this.textBoxTemperature1.ReadOnly = true;
            this.textBoxTemperature1.Size = new System.Drawing.Size(60, 20);
            this.textBoxTemperature1.TabIndex = 43;
            // 
            // textBoxTemperature2
            // 
            this.textBoxTemperature2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxTemperature2.Location = new System.Drawing.Point(107, 108);
            this.textBoxTemperature2.Name = "textBoxTemperature2";
            this.textBoxTemperature2.ReadOnly = true;
            this.textBoxTemperature2.Size = new System.Drawing.Size(60, 20);
            this.textBoxTemperature2.TabIndex = 42;
            // 
            // textBoxTime1
            // 
            this.textBoxTime1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxTime1.Location = new System.Drawing.Point(107, 33);
            this.textBoxTime1.Name = "textBoxTime1";
            this.textBoxTime1.ReadOnly = true;
            this.textBoxTime1.Size = new System.Drawing.Size(60, 20);
            this.textBoxTime1.TabIndex = 41;
            // 
            // buttonRead
            // 
            this.buttonRead.Location = new System.Drawing.Point(9, 186);
            this.buttonRead.Name = "buttonRead";
            this.buttonRead.Size = new System.Drawing.Size(158, 23);
            this.buttonRead.TabIndex = 35;
            this.buttonRead.Text = "READ";
            this.buttonRead.UseVisualStyleBackColor = true;
            this.buttonRead.Click += new System.EventHandler(this.buttonRead_Click);
            // 
            // labelPuffTarget
            // 
            this.labelPuffTarget.AutoSize = true;
            this.labelPuffTarget.Location = new System.Drawing.Point(6, 163);
            this.labelPuffTarget.Name = "labelPuffTarget";
            this.labelPuffTarget.Size = new System.Drawing.Size(78, 13);
            this.labelPuffTarget.TabIndex = 26;
            this.labelPuffTarget.Text = "PUFFTARGET";
            // 
            // labelTemp2
            // 
            this.labelTemp2.AutoSize = true;
            this.labelTemp2.Location = new System.Drawing.Point(6, 111);
            this.labelTemp2.Name = "labelTemp2";
            this.labelTemp2.Size = new System.Drawing.Size(95, 13);
            this.labelTemp2.TabIndex = 23;
            this.labelTemp2.Text = "TEMPERATURE2";
            // 
            // labelTime2
            // 
            this.labelTime2.AutoSize = true;
            this.labelTime2.Location = new System.Drawing.Point(6, 59);
            this.labelTime2.Name = "labelTime2";
            this.labelTime2.Size = new System.Drawing.Size(39, 13);
            this.labelTime2.TabIndex = 22;
            this.labelTime2.Text = "TIME2";
            // 
            // labelPuffNumber
            // 
            this.labelPuffNumber.AutoSize = true;
            this.labelPuffNumber.Location = new System.Drawing.Point(6, 137);
            this.labelPuffNumber.Name = "labelPuffNumber";
            this.labelPuffNumber.Size = new System.Drawing.Size(81, 13);
            this.labelPuffNumber.TabIndex = 17;
            this.labelPuffNumber.Text = "PUFFNUMBER";
            // 
            // labelTemp1
            // 
            this.labelTemp1.AutoSize = true;
            this.labelTemp1.Location = new System.Drawing.Point(6, 85);
            this.labelTemp1.Name = "labelTemp1";
            this.labelTemp1.Size = new System.Drawing.Size(95, 13);
            this.labelTemp1.TabIndex = 2;
            this.labelTemp1.Text = "TEMPERATURE1";
            // 
            // labelTime1
            // 
            this.labelTime1.AutoSize = true;
            this.labelTime1.Location = new System.Drawing.Point(6, 33);
            this.labelTime1.Name = "labelTime1";
            this.labelTime1.Size = new System.Drawing.Size(39, 13);
            this.labelTime1.TabIndex = 0;
            this.labelTime1.Text = "TIME1";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.buttonSetting);
            this.groupBox2.Location = new System.Drawing.Point(565, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(175, 62);
            this.groupBox2.TabIndex = 41;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Setting";
            // 
            // buttonSetting
            // 
            this.buttonSetting.Location = new System.Drawing.Point(14, 19);
            this.buttonSetting.Name = "buttonSetting";
            this.buttonSetting.Size = new System.Drawing.Size(152, 28);
            this.buttonSetting.TabIndex = 38;
            this.buttonSetting.Text = "SETTING";
            this.buttonSetting.UseVisualStyleBackColor = true;
            this.buttonSetting.Click += new System.EventHandler(this.buttonSetting_Click);
            // 
            // serialPort1
            // 
            this.serialPort1.DtrEnable = true;
            this.serialPort1.RtsEnable = true;
            this.serialPort1.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.serialPort1_DataReceived);
            // 
            // FormNFB
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(750, 587);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBoxDisplay);
            this.Controls.Add(this.groupBoxTestSetting);
            this.Controls.Add(this.checkBoxShow);
            this.Controls.Add(this.chart1);
            this.Controls.Add(this.groupBoxComPortSetting);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormNFB";
            this.Text = "NFB-GUI";
            this.Load += new System.EventHandler(this.FormNFB_Load);
            this.groupBoxComPortSetting.ResumeLayout(false);
            this.groupBoxComPortSetting.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            this.groupBoxDisplay.ResumeLayout(false);
            this.groupBoxDisplay.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBoxTestSetting.ResumeLayout(false);
            this.groupBoxTestSetting.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label labelComPort;
        private System.Windows.Forms.Label labelBaudRate;
        private System.Windows.Forms.ComboBox comboBoxComPort;
        private System.Windows.Forms.ComboBox comboBoxBaudRate;
        private System.Windows.Forms.Button buttonOpen;
        private System.Windows.Forms.Button buttonClose;
        private System.Windows.Forms.Button buttonScan;
        private System.Windows.Forms.GroupBox groupBoxComPortSetting;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;
        private System.Windows.Forms.Label labelTemperature;
        private System.Windows.Forms.TextBox textBoxTemperature;
        private System.Windows.Forms.Label labelPuffNo;
        private System.Windows.Forms.TextBox textBoxPuffNo;
        private System.Windows.Forms.GroupBox groupBoxDisplay;
        private System.Windows.Forms.Button buttonClear2;
        private System.Windows.Forms.CheckBox checkBoxShow;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox textBoxTCR;
        private System.Windows.Forms.TextBox textBoxRefResistance;
        private System.Windows.Forms.TextBox textBoxRefTemperature;
        private System.Windows.Forms.Button buttonRead2;
        private System.Windows.Forms.Label labelRefTemperature;
        private System.Windows.Forms.Label labelRefResistance;
        private System.Windows.Forms.Label labelTCR;
        private System.Windows.Forms.GroupBox groupBoxTestSetting;
        private System.Windows.Forms.TextBox textBoxPuffTarget;
        private System.Windows.Forms.TextBox textBoxPuffNumber;
        private System.Windows.Forms.TextBox textBoxTime2;
        private System.Windows.Forms.TextBox textBoxTemperature1;
        private System.Windows.Forms.TextBox textBoxTemperature2;
        private System.Windows.Forms.TextBox textBoxTime1;
        private System.Windows.Forms.Button buttonRead;
        private System.Windows.Forms.Label labelPuffTarget;
        private System.Windows.Forms.Label labelTemp2;
        private System.Windows.Forms.Label labelTime2;
        private System.Windows.Forms.Label labelPuffNumber;
        private System.Windows.Forms.Label labelTemp1;
        private System.Windows.Forms.Label labelTime1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button buttonSetting;
        private System.IO.Ports.SerialPort serialPort1;
    }
}

