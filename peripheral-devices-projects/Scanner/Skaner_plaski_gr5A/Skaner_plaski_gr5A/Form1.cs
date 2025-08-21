using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WIA;
using System.IO;


namespace Skaner_plaski_gr5A
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        DeviceManager devManager = new DeviceManager();
        DeviceInfo devInfo;


        private void scanBtt_Click(object sender, EventArgs e)
        {
            // Parameters
            int resolution = 400;

            //int width = scanImage.Width;
            //int height = scanImage.Height;
            int width = 2481;
            int height = 3508;

            if (half.Checked == true)
            {
                width = width / 2;
                height = height / 2;
            }else if (quarter.Checked)
            {
                width = width / 4;
                height = height / 4;
            }

            int color_mode;

            color_mode = 1;
            if (gray.Checked == true)
            {
                color_mode = 2; 
            } else if (colorBt
                .Checked == true) {
                color_mode = 4; //kolorowy
            }


            // Connecting to the device
            for (int i = 1; i <= devManager.DeviceInfos.Count; i++)
            {
                
                if (devManager.DeviceInfos[i].Type != WiaDeviceType.ScannerDeviceType)
                {
                    continue;
                }

                devInfo = devManager.DeviceInfos[i];

                break;
            }

          
            var connected = devInfo.Connect();
            var scanner = connected.Items[1];

            // Settings
            setSettings(scanner, resolution, 0,0, width, height, 0, 0, color_mode );

            // Image
            var image = (ImageFile)scanner.Transfer();
            byte[] imagebt = (byte[])image.FileData.get_BinaryData();
            MemoryStream savedPicture = new MemoryStream(imagebt);
            Image bitmap = Image.FromStream(savedPicture);

            scanImage.Image = bitmap;
            //scanImage.Height
         

        }

        private void saveBtt_Click(object sender, EventArgs e)
        {

        }
        private static void setSettings(IItem scannnerItem, int scanResolutionDPI, int scanStartLeftPixel, int scanStartTopPixel, int scanWidthPixels, int scanHeightPixels, int brightnessPercents, int contrastPercents, int colorMode)
        {
            const string WIA_SCAN_COLOR_MODE = "6146";
            const string WIA_HORIZONTAL_SCAN_RESOLUTION_DPI = "6147";
            const string WIA_VERTICAL_SCAN_RESOLUTION_DPI = "6148";
            const string WIA_HORIZONTAL_SCAN_START_PIXEL = "6149";
            const string WIA_VERTICAL_SCAN_START_PIXEL = "6150";
            const string WIA_HORIZONTAL_SCAN_SIZE_PIXELS = "6151";
            const string WIA_VERTICAL_SCAN_SIZE_PIXELS = "6152";
            const string WIA_SCAN_BRIGHTNESS_PERCENTS = "6154";
            const string WIA_SCAN_CONTRAST_PERCENTS = "6155";

     
            SetWIAProperty(scannnerItem.Properties, WIA_HORIZONTAL_SCAN_RESOLUTION_DPI, scanResolutionDPI);
            SetWIAProperty(scannnerItem.Properties, WIA_VERTICAL_SCAN_RESOLUTION_DPI, scanResolutionDPI);
            SetWIAProperty(scannnerItem.Properties, WIA_HORIZONTAL_SCAN_START_PIXEL, scanStartLeftPixel);
            SetWIAProperty(scannnerItem.Properties, WIA_VERTICAL_SCAN_START_PIXEL, scanStartTopPixel);
            SetWIAProperty(scannnerItem.Properties, WIA_HORIZONTAL_SCAN_SIZE_PIXELS, scanWidthPixels);
            SetWIAProperty(scannnerItem.Properties, WIA_VERTICAL_SCAN_SIZE_PIXELS, scanHeightPixels);
            SetWIAProperty(scannnerItem.Properties, WIA_SCAN_BRIGHTNESS_PERCENTS, brightnessPercents);
            SetWIAProperty(scannnerItem.Properties, WIA_SCAN_CONTRAST_PERCENTS, contrastPercents);
            SetWIAProperty(scannnerItem.Properties, WIA_SCAN_COLOR_MODE, colorMode);
        }

        private static void SetWIAProperty(IProperties properties, object propertyID, object value)
        {
            Property property = properties.get_Item(propertyID);
            property.set_Value(value);
        }

       
    }
}
