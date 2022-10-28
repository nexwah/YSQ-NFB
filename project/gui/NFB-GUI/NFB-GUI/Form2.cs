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
    public partial class Form2 : Form
    {
        SerialPort mySerialPort;
        //bool CheckBoxReceiveFlag = false;

        public Form2()
        {
            InitializeComponent();
        }

        public void setSerialPort(SerialPort port)
        {
            mySerialPort = port;
        }

        private void buttonSend_Click(object sender, EventArgs e)
        {
            try
            {
                if (mySerialPort.IsOpen)
                {
                    string dataTime1 = "t1:" + numericUpDownTime1.Text + "\r\n";
                    char[] chars1 = dataTime1.ToCharArray();
                    mySerialPort.Write(chars1, 0, dataTime1.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataTime2 = "t2:" + numericUpDownTime2.Text + "\r\n";
                    char[] chars2 = dataTime2.ToCharArray();
                    mySerialPort.Write(chars2, 0, dataTime2.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataTemp1 = "T1:" + numericUpDownTemp1.Text + "\r\n";
                    char[] chars3 = dataTemp1.ToCharArray();
                    mySerialPort.Write(chars3, 0, dataTemp1.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataTemp2 = "T2:" + numericUpDownTemp2.Text + "\r\n";
                    char[] chars4 = dataTemp2.ToCharArray();
                    mySerialPort.Write(chars4, 0, dataTemp2.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataPuffNo = "pf:" + numericUpDownPuffNo.Text + "\r\n";
                    char[] chars5 = dataPuffNo.ToCharArray();
                    mySerialPort.Write(chars5, 0, dataPuffNo.Length);
                    System.Threading.Thread.Sleep(100);
                    mySerialPort.Write(chars5, 0, dataPuffNo.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataPuffTarget = "pt:" + numericUpDownPuffTarget.Text + "\r\n";
                    char[] chars6 = dataPuffTarget.ToCharArray();
                    mySerialPort.Write(chars6, 0, dataPuffTarget.Length);
                    System.Threading.Thread.Sleep(100);

                    mySerialPort.Write(chars1, 0, dataTime1.Length);
                    System.Threading.Thread.Sleep(100);
                    mySerialPort.Write(chars2, 0, dataTime2.Length);
                    System.Threading.Thread.Sleep(100);
                    mySerialPort.Write(chars3, 0, dataTemp1.Length);
                    System.Threading.Thread.Sleep(100);
                    mySerialPort.Write(chars4, 0, dataTemp2.Length);
                    System.Threading.Thread.Sleep(100);
                    mySerialPort.Write(chars5, 0, dataPuffNo.Length);
                    System.Threading.Thread.Sleep(100);
                    mySerialPort.Write(chars6, 0, dataPuffTarget.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataOut = "rd1\r\n";
                    char[] chars = dataOut.ToCharArray();
                    mySerialPort.Write(chars, 0, dataOut.Length);
                }
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void buttonSend2_Click(object sender, EventArgs e)
        {
            try
            {
                if (mySerialPort.IsOpen)
                {
                    string dataT0 = "T0:" + numericUpDownTCR.Text + "\r\n";
                    char[] chars1 = dataT0.ToCharArray();
                    mySerialPort.Write(chars1, 0, dataT0.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataTr = "Tr:" + numericUpDownRefTemperature.Text + "\r\n";
                    char[] chars2 = dataTr.ToCharArray();
                    mySerialPort.Write(chars2, 0, dataTr.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataR0 = "R0:" + numericUpDownRefResistance.Text + "\r\n";
                    char[] chars3 = dataR0.ToCharArray();
                    mySerialPort.Write(chars3, 0, dataR0.Length);
                    System.Threading.Thread.Sleep(100);

                    mySerialPort.Write(chars1, 0, dataT0.Length);
                    System.Threading.Thread.Sleep(100);
                    mySerialPort.Write(chars2, 0, dataTr.Length);
                    System.Threading.Thread.Sleep(100);
                    mySerialPort.Write(chars3, 0, dataR0.Length);
                    System.Threading.Thread.Sleep(100);

                    string dataOut = "rd2\r\n";
                    char[] chars = dataOut.ToCharArray();
                    mySerialPort.Write(chars, 0, dataOut.Length);
                }
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}