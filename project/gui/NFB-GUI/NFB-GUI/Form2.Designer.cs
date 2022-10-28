
namespace NFB_GUI
{
    partial class Form2
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
            this.groupBoxTestSetting = new System.Windows.Forms.GroupBox();
            this.buttonSend = new System.Windows.Forms.Button();
            this.numericUpDownTime2 = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownPuffTarget = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownTemp2 = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownTime1 = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownPuffNo = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownTemp1 = new System.Windows.Forms.NumericUpDown();
            this.labelPuffTarget = new System.Windows.Forms.Label();
            this.labelTemp2 = new System.Windows.Forms.Label();
            this.labelTime2 = new System.Windows.Forms.Label();
            this.labelPuffNumber = new System.Windows.Forms.Label();
            this.labelTemp1 = new System.Windows.Forms.Label();
            this.labelTime1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.buttonSend2 = new System.Windows.Forms.Button();
            this.numericUpDownRefTemperature = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownTCR = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownRefResistance = new System.Windows.Forms.NumericUpDown();
            this.labelRefTemperature = new System.Windows.Forms.Label();
            this.labelRefResistance = new System.Windows.Forms.Label();
            this.labelTCR = new System.Windows.Forms.Label();
            this.groupBoxTestSetting.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTime2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownPuffTarget)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTemp2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTime1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownPuffNo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTemp1)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownRefTemperature)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTCR)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownRefResistance)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBoxTestSetting
            // 
            this.groupBoxTestSetting.Controls.Add(this.buttonSend);
            this.groupBoxTestSetting.Controls.Add(this.numericUpDownTime2);
            this.groupBoxTestSetting.Controls.Add(this.numericUpDownPuffTarget);
            this.groupBoxTestSetting.Controls.Add(this.numericUpDownTemp2);
            this.groupBoxTestSetting.Controls.Add(this.numericUpDownTime1);
            this.groupBoxTestSetting.Controls.Add(this.numericUpDownPuffNo);
            this.groupBoxTestSetting.Controls.Add(this.numericUpDownTemp1);
            this.groupBoxTestSetting.Controls.Add(this.labelPuffTarget);
            this.groupBoxTestSetting.Controls.Add(this.labelTemp2);
            this.groupBoxTestSetting.Controls.Add(this.labelTime2);
            this.groupBoxTestSetting.Controls.Add(this.labelPuffNumber);
            this.groupBoxTestSetting.Controls.Add(this.labelTemp1);
            this.groupBoxTestSetting.Controls.Add(this.labelTime1);
            this.groupBoxTestSetting.Location = new System.Drawing.Point(12, 12);
            this.groupBoxTestSetting.Name = "groupBoxTestSetting";
            this.groupBoxTestSetting.Size = new System.Drawing.Size(202, 215);
            this.groupBoxTestSetting.TabIndex = 1;
            this.groupBoxTestSetting.TabStop = false;
            this.groupBoxTestSetting.Text = "Heating Profile Parameter";
            // 
            // buttonSend
            // 
            this.buttonSend.Location = new System.Drawing.Point(9, 182);
            this.buttonSend.Name = "buttonSend";
            this.buttonSend.Size = new System.Drawing.Size(178, 23);
            this.buttonSend.TabIndex = 35;
            this.buttonSend.Text = "SEND";
            this.buttonSend.UseVisualStyleBackColor = true;
            this.buttonSend.Click += new System.EventHandler(this.buttonSend_Click);
            // 
            // numericUpDownTime2
            // 
            this.numericUpDownTime2.Location = new System.Drawing.Point(116, 52);
            this.numericUpDownTime2.Maximum = new decimal(new int[] {
            500,
            0,
            0,
            0});
            this.numericUpDownTime2.Name = "numericUpDownTime2";
            this.numericUpDownTime2.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownTime2.TabIndex = 34;
            // 
            // numericUpDownPuffTarget
            // 
            this.numericUpDownPuffTarget.Location = new System.Drawing.Point(116, 156);
            this.numericUpDownPuffTarget.Maximum = new decimal(new int[] {
            500,
            0,
            0,
            0});
            this.numericUpDownPuffTarget.Name = "numericUpDownPuffTarget";
            this.numericUpDownPuffTarget.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownPuffTarget.TabIndex = 33;
            // 
            // numericUpDownTemp2
            // 
            this.numericUpDownTemp2.Location = new System.Drawing.Point(116, 104);
            this.numericUpDownTemp2.Maximum = new decimal(new int[] {
            500,
            0,
            0,
            0});
            this.numericUpDownTemp2.Name = "numericUpDownTemp2";
            this.numericUpDownTemp2.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownTemp2.TabIndex = 32;
            // 
            // numericUpDownTime1
            // 
            this.numericUpDownTime1.Location = new System.Drawing.Point(116, 26);
            this.numericUpDownTime1.Maximum = new decimal(new int[] {
            500,
            0,
            0,
            0});
            this.numericUpDownTime1.Name = "numericUpDownTime1";
            this.numericUpDownTime1.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownTime1.TabIndex = 31;
            // 
            // numericUpDownPuffNo
            // 
            this.numericUpDownPuffNo.Location = new System.Drawing.Point(116, 130);
            this.numericUpDownPuffNo.Maximum = new decimal(new int[] {
            500,
            0,
            0,
            0});
            this.numericUpDownPuffNo.Name = "numericUpDownPuffNo";
            this.numericUpDownPuffNo.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownPuffNo.TabIndex = 30;
            // 
            // numericUpDownTemp1
            // 
            this.numericUpDownTemp1.Location = new System.Drawing.Point(116, 78);
            this.numericUpDownTemp1.Maximum = new decimal(new int[] {
            500,
            0,
            0,
            0});
            this.numericUpDownTemp1.Name = "numericUpDownTemp1";
            this.numericUpDownTemp1.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownTemp1.TabIndex = 29;
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
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.buttonSend2);
            this.groupBox1.Controls.Add(this.numericUpDownRefTemperature);
            this.groupBox1.Controls.Add(this.numericUpDownTCR);
            this.groupBox1.Controls.Add(this.numericUpDownRefResistance);
            this.groupBox1.Controls.Add(this.labelRefTemperature);
            this.groupBox1.Controls.Add(this.labelRefResistance);
            this.groupBox1.Controls.Add(this.labelTCR);
            this.groupBox1.Location = new System.Drawing.Point(235, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(202, 215);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "TCR Parameter";
            // 
            // buttonSend2
            // 
            this.buttonSend2.Location = new System.Drawing.Point(9, 182);
            this.buttonSend2.Name = "buttonSend2";
            this.buttonSend2.Size = new System.Drawing.Size(169, 23);
            this.buttonSend2.TabIndex = 35;
            this.buttonSend2.Text = "SEND";
            this.buttonSend2.UseVisualStyleBackColor = true;
            this.buttonSend2.Click += new System.EventHandler(this.buttonSend2_Click);
            // 
            // numericUpDownRefTemperature
            // 
            this.numericUpDownRefTemperature.Location = new System.Drawing.Point(125, 52);
            this.numericUpDownRefTemperature.Maximum = new decimal(new int[] {
            500,
            0,
            0,
            0});
            this.numericUpDownRefTemperature.Name = "numericUpDownRefTemperature";
            this.numericUpDownRefTemperature.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownRefTemperature.TabIndex = 34;
            // 
            // numericUpDownTCR
            // 
            this.numericUpDownTCR.Location = new System.Drawing.Point(125, 26);
            this.numericUpDownTCR.Maximum = new decimal(new int[] {
            5000,
            0,
            0,
            0});
            this.numericUpDownTCR.Name = "numericUpDownTCR";
            this.numericUpDownTCR.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownTCR.TabIndex = 31;
            // 
            // numericUpDownRefResistance
            // 
            this.numericUpDownRefResistance.DecimalPlaces = 2;
            this.numericUpDownRefResistance.Location = new System.Drawing.Point(125, 78);
            this.numericUpDownRefResistance.Maximum = new decimal(new int[] {
            500,
            0,
            0,
            0});
            this.numericUpDownRefResistance.Name = "numericUpDownRefResistance";
            this.numericUpDownRefResistance.Size = new System.Drawing.Size(71, 20);
            this.numericUpDownRefResistance.TabIndex = 29;
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
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(444, 237);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBoxTestSetting);
            this.Name = "Form2";
            this.Text = "SETTING";
            this.groupBoxTestSetting.ResumeLayout(false);
            this.groupBoxTestSetting.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTime2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownPuffTarget)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTemp2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTime1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownPuffNo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTemp1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownRefTemperature)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownTCR)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownRefResistance)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxTestSetting;
        private System.Windows.Forms.Button buttonSend;
        private System.Windows.Forms.NumericUpDown numericUpDownTime2;
        private System.Windows.Forms.NumericUpDown numericUpDownPuffTarget;
        private System.Windows.Forms.NumericUpDown numericUpDownTemp2;
        private System.Windows.Forms.NumericUpDown numericUpDownTime1;
        private System.Windows.Forms.NumericUpDown numericUpDownPuffNo;
        private System.Windows.Forms.NumericUpDown numericUpDownTemp1;
        private System.Windows.Forms.Label labelPuffTarget;
        private System.Windows.Forms.Label labelTemp2;
        private System.Windows.Forms.Label labelTime2;
        private System.Windows.Forms.Label labelPuffNumber;
        private System.Windows.Forms.Label labelTemp1;
        private System.Windows.Forms.Label labelTime1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonSend2;
        private System.Windows.Forms.NumericUpDown numericUpDownRefTemperature;
        private System.Windows.Forms.NumericUpDown numericUpDownTCR;
        private System.Windows.Forms.NumericUpDown numericUpDownRefResistance;
        private System.Windows.Forms.Label labelRefTemperature;
        private System.Windows.Forms.Label labelRefResistance;
        private System.Windows.Forms.Label labelTCR;
    }
}