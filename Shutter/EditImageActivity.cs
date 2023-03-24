using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Graphics;
using Android.Graphics.Drawables;
using Android.OS;
using Android.Provider;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using AndroidX.AppCompat.App;
using AndroidX.Core.Content;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Android.Provider.Settings;

namespace Shutter
{
    [Activity(Label = "EditImage")]
    public class EditImageActivity : AppCompatActivity
    {
        private ImageView editimgView;
        private Button rotateButton;
        private Button brightnessButton;
        private Button saveButton;
        private Button cropButton;
        public ScaleGestureDetector _scaleGestureDetector;
        private MyScaleGestureListener _scaleGestureListener;
       
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.edit_view);
            editimgView = FindViewById<ImageView>(Resource.Id.editimgView);

            rotateButton = FindViewById<Button>(Resource.Id.rotatebtn);
            brightnessButton = FindViewById<Button>(Resource.Id.brightbtn);
            saveButton = FindViewById<Button>(Resource.Id.savebtn);
            cropButton = FindViewById<Button>(Resource.Id.cropbtn);
            

            _scaleGestureListener = new MyScaleGestureListener(editimgView);
            _scaleGestureDetector = new ScaleGestureDetector(this, _scaleGestureListener);
            editimgView.SetOnTouchListener(new MyTouchListener(_scaleGestureDetector));

            string imageUri = Intent.GetStringExtra("selectedImageUri");
            if (!string.IsNullOrEmpty(imageUri))
            {

                var uri = Android.Net.Uri.Parse(imageUri);
                var file = new Java.IO.File(uri.Path);
                var contentUri = FileProvider.GetUriForFile(this, "com.companyname.shutter.fileprovider", file);
                editimgView.SetImageURI(contentUri);

            }

            rotateButton.Click += RotateButton_Click;
            brightnessButton.Click += BrightnessButton_Click;
           saveButton.Click += SaveButton_Click;
           cropButton.Click += OnCropClicked;
        }

        private void OnCropClicked(object sender, EventArgs e)
        {
            // Get the screen size
            var screenSize = new Point();
            WindowManager.DefaultDisplay.GetSize(screenSize);

            // Create the crop intent
            var uri = Android.Net.Uri.Parse(Intent.GetStringExtra("selectedImageUri"));
            var file = new Java.IO.File(uri.Path);
            var contentUri = FileProvider.GetUriForFile(this, "com.companyname.shutter.fileprovider", file);

            Intent intent = new Intent("com.android.camera.action.CROP");
            intent.SetDataAndType(contentUri, "image/*");

            // Set the crop options
            intent.PutExtra("crop", "true");
            intent.PutExtra("aspectX", 0);
            intent.PutExtra("aspectY", 0);
            intent.PutExtra("outputX", screenSize.X * 2);
            intent.PutExtra("outputY", screenSize.Y * 2);
            intent.PutExtra("outputFormat", Bitmap.CompressFormat.Png.ToString());
            intent.PutExtra("return-data", true);

            // Grant permissions to the intent
            intent.AddFlags(ActivityFlags.GrantReadUriPermission | ActivityFlags.GrantWriteUriPermission);
            var resInfoList = PackageManager.QueryIntentActivities(intent, PackageInfoFlags.MatchDefaultOnly);
            foreach (var resolveInfo in resInfoList)
            {
                var packageName = resolveInfo.ActivityInfo.PackageName;
                GrantUriPermission(packageName, contentUri, ActivityFlags.GrantWriteUriPermission | ActivityFlags.GrantReadUriPermission);
            }

            // Start the crop intent
            StartActivityForResult(intent, 2);
        }



        protected override void OnActivityResult(int requestCode, Result resultCode, Intent data)
        {
            base.OnActivityResult(requestCode, resultCode, data);

            if (resultCode == Result.Ok)
            {
                if (requestCode == 2)
                {
                    // Get the cropped image
                    var croppedImage = data.GetParcelableExtra("data") as Bitmap;

                    // Display the cropped image in the ImageView
                    var imageView = FindViewById<ImageView>(Resource.Id.editimgView);
                    imageView.SetImageBitmap(croppedImage);

                }
            }
        }

        private void RotateButton_Click(object sender, EventArgs e)
        {
            // Get the current image Bitmap
            var bitmap = ((BitmapDrawable)editimgView.Drawable).Bitmap;

            // Create a matrix with the rotation angle
            var matrix = new Matrix();
            matrix.PostRotate(90);

            // Create a new Bitmap with the rotated image
            var rotatedBitmap = Bitmap.CreateBitmap(bitmap, 0, 0, bitmap.Width, bitmap.Height, matrix, true);

            // Set the rotated Bitmap to the ImageView
            editimgView.SetImageBitmap(rotatedBitmap);
        }
        private async void BrightnessButton_Click(object sender, EventArgs e)
        {
            // Get the current image Bitmap
            var bitmap = ((BitmapDrawable)editimgView.Drawable).Bitmap;

            // Inflate the layout that contains the seekbar and the buttons
            var brightnesView = LayoutInflater.Inflate(Resource.Layout.brightness_layout, null);

            // Find the Cancel button,OK button and the seekbar
            var cancelButton = brightnesView.FindViewById<Button>(Resource.Id.cancel_button);
            var okButton = brightnesView.FindViewById<Button>(Resource.Id.ok_button);
            var seekBar = brightnesView.FindViewById<SeekBar>(Resource.Id.brightnessSeekBar);

            // Show a dialog with the SeekBar
            var builder = new Android.App.AlertDialog.Builder(this);
            builder.SetTitle("Adjust brightness");

            // Set the button layout as the view of the AlertDialog
            builder.SetView(brightnesView);

            var dialog = builder.Create();

            // Listen to changes in the SeekBar and update the brightness value
            seekBar.ProgressChanged += (s, ev) =>
            {
                var maxBrightness = seekBar.Max / 2;
                var brightnessValue = ev.Progress - maxBrightness;
                var brightnessText = $"Brightness: {brightnessValue}";
                dialog.SetTitle(brightnessText);
            };

            // Set the click listeners for the buttons
            cancelButton.Click += (s, ev) => {

                // Dismiss the dialog
                dialog.Dismiss();
            };
            okButton.Click += async (s, ev) => {

                // Get the brightness value to adjust by
                var maxBrightness = seekBar.Max / 2;
                var brightness = seekBar.Progress - maxBrightness;

                // Create a new Bitmap with the adjusted brightness
                var adjustedBitmap = Bitmap.CreateBitmap(bitmap.Width, bitmap.Height, bitmap.GetConfig());
                var canvas = new Canvas(adjustedBitmap);
                var paint = new Paint();
                var colorMatrix = new ColorMatrix(new float[] {
                                                1, 0, 0, 0, brightness,
                                                0, 1, 0, 0, brightness,
                                                0, 0, 1, 0, brightness,
                                                0, 0, 0, 1, 0
                                                });

                paint.SetColorFilter(new ColorMatrixColorFilter(colorMatrix));
                canvas.DrawBitmap(bitmap, 0, 0, paint);

                // Set the adjusted Bitmap to the ImageView
                editimgView.SetImageBitmap(adjustedBitmap);

                // Dismiss the dialog
                dialog.Dismiss();
            };

            dialog.Show();

        }
        private async void SaveButton_Click(object sender, EventArgs e)
        {
            // Get the current image Bitmap
            var bitmap = ((BitmapDrawable)editimgView.Drawable).Bitmap;

            // Save the bitmap to the gallery
            var uri = await savebitmaptogallery(bitmap);

            // Show a message to confirm that the image was saved
            Toast.MakeText(this, "Image saved to the gallery"/* $"Saved to {uri}"*/, ToastLength.Short).Show();
        }
        private async Task<Android.Net.Uri> savebitmaptogallery(Bitmap bitmap)
        {
            // Save the bitmap to the device's gallery
            var filename = "edited_image_" + DateTime.Now.ToString("yyyyMMdd_HHmmss") + ".jpg";
            var folderPath = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures).AbsolutePath;
            var filePath = System.IO.Path.Combine(folderPath, filename);
            using (var stream = new System.IO.FileStream(filePath, System.IO.FileMode.Create))
            {
                bitmap.Compress(Bitmap.CompressFormat.Jpeg, 100, stream);
                stream.Flush();
            }

            // Notify the MediaScanner about the new file so it can be added to the gallery
            var mediaScanIntent = new Intent(Intent.ActionMediaScannerScanFile);
            mediaScanIntent.SetData(Android.Net.Uri.FromFile(new Java.IO.File(filePath)));
            SendBroadcast(mediaScanIntent);

            // Return the URI of the saved file
            return Android.Net.Uri.Parse(filePath);
        }

    }
}