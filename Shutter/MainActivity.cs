using Android.App;
using Android.OS;
using Android.Provider;
using Android.Runtime;
using Android.Widget;
using AndroidX.AppCompat.App;
using Android.Content;
using Android.Graphics;
using AndroidX.Core.Graphics;
using System;
using Android.Net;
using Android.Views;
using Java.Lang;
using Android.Graphics.Drawables;
using System.IO;
using Android.Content.PM;
using Bumptech.Glide;

namespace Shutter
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    public class MainActivity : AppCompatActivity, View.IOnClickListener
    {
        private Button btnCapture, btnSelect;
        private ImageView imgView;

        const int REQUEST_CAMERA_PERMISSION = 1;
        const int REQUEST_MEDIA_PERMISSION = 2;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.activity_main);



            btnCapture = FindViewById<Button>(Resource.Id.btnCapture);
            btnSelect = FindViewById<Button>(Resource.Id.btnSelect);
            imgView = FindViewById<ImageView>(Resource.Id.imgView);

            imgView.SetImageResource(Resource.Drawable.my_image);



            btnCapture.Click += BtnCapture_Click;
            btnSelect.Click += BtnSelect_Click;


            imgView.SetOnClickListener(this);

        }

        public void OnClick(View v)
        {
            // Launch a new activity to display the image in fullscreen
            var intent = new Intent(this, typeof(FullScreenImageActivity));
           

            // Get the URI of the selected image
            Bitmap bitmap = ((BitmapDrawable)imgView.Drawable).Bitmap;
            string fileName = "temp_image.png";
            Java.IO.File file = new Java.IO.File(CacheDir, fileName);
            using (var stream = new FileStream(file.Path, FileMode.Create))
            {
                bitmap.Compress(Bitmap.CompressFormat.Png, 100, stream);
            }
            Android.Net.Uri selectedImageUri = Android.Net.Uri.FromFile(file);
            intent.PutExtra("selectedImageUri", selectedImageUri.ToString());

            StartActivity(intent);
        }

        private void BtnSelect_Click(object sender, EventArgs e)
        {
            if (CheckSelfPermission(Android.Manifest.Permission.ReadExternalStorage) == Permission.Granted)
            {
                Intent intent = new Intent(Intent.ActionPick, MediaStore.Images.Media.ExternalContentUri);
                intent.SetType("image/*");
                StartActivityForResult(Intent.CreateChooser(intent, "Select Image"), 1);
            }
            else
            {
                // Permission not yet granted, request for permission
                RequestPermissions(new string[] { Android.Manifest.Permission.ReadExternalStorage }, REQUEST_MEDIA_PERMISSION);
            }
        }

        private void BtnCapture_Click(object sender, EventArgs e)
        {
            if (CheckSelfPermission(Android.Manifest.Permission.Camera) == Permission.Granted)
            {
                Intent intent = new Intent(MediaStore.ActionImageCapture);
                StartActivityForResult(intent, 0);
            }
            else
            {
                // Permission not yet granted, request for permission
                RequestPermissions(new string[] { Android.Manifest.Permission.Camera }, REQUEST_CAMERA_PERMISSION);
            }
        }
        protected override void OnActivityResult(int requestCode, Result resultCode, Intent data)
        {
            base.OnActivityResult(requestCode, resultCode, data);

            if (requestCode == 0 && resultCode == Result.Ok)
            {
                //Bitmap bitmap = (Bitmap)data.Extras.Get("data");
                //Bitmap resizedBitmap = Bitmap.CreateScaledBitmap(bitmap, Resources.DisplayMetrics.WidthPixels, Resources.DisplayMetrics.HeightPixels, true);
                //imgView.SetImageBitmap(resizedBitmap);

                //Bitmap bitmap = (Bitmap)data.Extras.Get("data");
                //imgView.SetImageBitmap(bitmap);


                Bitmap bitmap = (Bitmap)data.Extras.Get("data");
                RequestBuilder requestBuilder = Glide.With(this).AsBitmap().Load(bitmap);
                requestBuilder.Into(imgView);
            }
            else if (requestCode == 1 && resultCode == Result.Ok)
            {

                //Android.Net.Uri uri = data.Data;
                //Bitmap bitmap = MediaStore.Images.Media.GetBitmap(ContentResolver, uri);
                //Bitmap resizedBitmap = Bitmap.CreateScaledBitmap(bitmap, Resources.DisplayMetrics.WidthPixels, Resources.DisplayMetrics.HeightPixels, true);
                //imgView.SetImageBitmap(resizedBitmap);

                //Android.Net.Uri uri = data.Data;
                //imgView.SetImageURI(uri);

                Android.Net.Uri uri = data.Data;
                RequestBuilder requestBuilder = Glide.With(this).AsBitmap().Load(uri);
                requestBuilder.Into(imgView);



            }
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            if (requestCode == REQUEST_CAMERA_PERMISSION)
            {
                if (grantResults[0] == Permission.Granted)
                {
                    BtnCapture_Click(null, null);
                }
                else
                {
                    Toast.MakeText(this, "Camera permission denied", ToastLength.Short).Show();
                }
            }
            else if (requestCode == REQUEST_MEDIA_PERMISSION)
            {
                if (grantResults[0] == Permission.Granted)
                {
                    BtnSelect_Click(null, null);
                }
                else
                {
                    Toast.MakeText(this, "Media permission denied", ToastLength.Short).Show();
                }
            }
        }
    }
}