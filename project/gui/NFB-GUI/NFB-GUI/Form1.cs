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

namespace NFB_GUI
{
    public partial class FormNFB : Form
    {
        string dataIn;
        bool CheckBoxShowFlag = false;

        public FormNFB()
        {
            InitializeComponent();
        }

        private void FormNFB_Load(object sender, EventArgs e)
        {
            buttonOpen.Enabled = true;
            buttonScan.Enabled = true;
            buttonClose.Enabled = false;
            comboBoxBaudRate.Text = "9600";

            try
            {
                string[] ports = SerialPort.GetPortNames();
                comboBoxComPort.Items.AddRange(ports);
                comboBoxComPort.Text = ports[0];
            }
            catch (Exception err)
            {
                MessageBox.Show("No ComPort Found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void buttonOpen_Click(object sender, EventArgs e)
        {
            try
            {
                serialPort1.PortName = comboBoxComPort.Text;
                serialPort1.BaudRate = Convert.ToInt32(comboBoxBaudRate.Text);
                serialPort1.Open();
                buttonOpen.Enabled = false;
                buttonScan.Enabled = false;
                buttonClose.Enabled = true;
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void buttonScan_Click(object sender, EventArgs e)
        {
            try
            {
                string[] ports = SerialPort.GetPortNames();
                comboBoxComPort.Items.Clear();
                comboBoxComPort.Items.AddRange(ports);
                comboBoxComPort.Text = "";
                if (ports[0] != "")
                {
                    comboBoxComPort.Text = ports[0];
                }
            }
            catch (Exception err)
            {
                MessageBox.Show("No ComPort Found", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void buttonClose_Click(object sender, EventArgs e)
        {
            try
            {
                if (serialPort1.IsOpen)
                {
                    serialPort1.Close();
                    buttonClose.Enabled = false;
                    buttonOpen.Enabled = true;
                    buttonScan.Enabled = true;
                }
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void serialPort1_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            string str = serialPort1.ReadExisting();
            dataIn += str;
            sbyte indexOf_N = (sbyte)dataIn.IndexOf("\r\n");
            if (indexOf_N != -1)
            {
                this.Invoke(new EventHandler(ShowData));
            }
        }

        private void ShowData(object sender, EventArgs e)
        {
            if (CheckBoxShowFlag)
            {
                sbyte indexOf_T = (sbyte)dataIn.IndexOf("T:");
                sbyte indexOf_N = (sbyte)dataIn.IndexOf("\r\n");
                sbyte indexOf_D = (sbyte)dataIn.IndexOf("D");
                sbyte indexOf_C = (sbyte)dataIn.IndexOf(",");
                if (indexOf_D != -1 && indexOf_C != -1)
                {
                    string str_puffno = dataIn.Substring(indexOf_D + 1, indexOf_C-1);
                    textBoxPuffNo.Text = Convert.ToString(str_puffno);

                }
                if (indexOf_T != -1 && indexOf_N != -1)
                {
                    string str_temperature = dataIn.Substring(indexOf_T + 2, indexOf_N-2);
                    textBoxTemperature.Text = str_temperature;
                    double temperature = Convert.ToDouble(str_temperature);
                    chart1.Series["Temperature"].Points.Add(temperature);
                }
            }
            sbyte indexOf_HTP = (sbyte)dataIn.IndexOf("HTP");
            if (indexOf_HTP != -1)
            {
                String[] strs = new string[6];
                int strCount = 0;
                String str = dataIn.Substring(indexOf_HTP + 3);
                while (str.Length > 0)
                {
                    sbyte index = (sbyte)str.IndexOf(",");
                    if (index != -1)
                    {
                        strs[strCount++] = str.Substring(0, index);
                        str = str.Substring(index + 1);
                    }
                    else
                    {
                        strs[strCount++] = str;
                        break;
                    }
                }
                textBoxTime1.Text = strs[0];
                textBoxTime2.Text = strs[1];
                textBoxTemperature1.Text = strs[2];
                textBoxTemperature2.Text = strs[3];
                textBoxPuffNumber.Text = strs[4];
                textBoxPuffTarget.Text = strs[5];
            }
            sbyte indexOf_TCR = (sbyte)dataIn.IndexOf("TCR");
            if (indexOf_TCR != -1)
            {
                String[] strs = new string[6];
                int strCount = 0;
                String str = dataIn.Substring(indexOf_TCR + 3);
                while (str.Length > 0)
                {
                    sbyte index = (sbyte)str.IndexOf(",");
                    if (index != -1)
                    {
                        strs[strCount++] = str.Substring(0, index);
                        str = str.Substring(index + 1);
                    }
                    else
                    {
                        strs[strCount++] = str;
                        break;
                    }
                }
                textBoxTCR.Text = strs[0];
                textBoxRefTemperature.Text = strs[1];
                textBoxRefResistance.Text = strs[2];
            }
            dataIn = "";
        }

        private void checkBoxShow_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxShow.Checked == true)
            {
                CheckBoxShowFlag = true;
            }
            else
            {
                CheckBoxShowFlag = false;
            }
        }

        private void buttonClear2_Click(object sender, EventArgs e)
        {
            textBoxTemperature.Text = "";
            textBoxPuffNo.Text = "";
            chart1.Series["Temperature"].Points.Clear();
        }

        private void buttonRead_Click(object sender, EventArgs e)
        {
            string dataOut = "rd1\r\n";
            char[] chars = dataOut.ToCharArray();
            serialPort1.Write(chars, 0, dataOut.Length);
        }

        private void buttonRead2_Click(object sender, EventArgs e)
        {
            string dataOut = "rd2\r\n";
            char[] chars = dataOut.ToCharArray();
            serialPort1.Write(chars, 0, dataOut.Length);
        }

        private void buttonSetting_Click(object sender, EventArgs e)
        {
            Form2 F2 = new Form2();
            F2.setSerialPort(serialPort1);
            F2.Show();
        }
    }
}
