using Android.App;
using Android.Content;
using Android.Graphics;
using Android.Graphics.Drawables;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AndroidX.AppCompat.App;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Shutter
{
    [Activity(Label = "FullScreenImage")]
    public class FullScreenImageActivity : AppCompatActivity
    {
        private ImageView fullscreenImageView;
        private Button editbtn1;
        public ScaleGestureDetector _scaleGestureDetector;
        private MyScaleGestureListener _scaleGestureListener;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.full_view);

            fullscreenImageView = FindViewById<ImageView>(Resource.Id.fullScreenImageView);
            
            _scaleGestureListener = new MyScaleGestureListener(fullscreenImageView);
            _scaleGestureDetector = new ScaleGestureDetector(this, _scaleGestureListener);
            fullscreenImageView.SetOnTouchListener(new MyTouchListener(_scaleGestureDetector));

            string imageUri = Intent.GetStringExtra("selectedImageUri");
            if (!string.IsNullOrEmpty(imageUri))
            {
                fullscreenImageView.SetImageURI(Android.Net.Uri.Parse(imageUri));
            }
            editbtn1 = FindViewById<Button>(Resource.Id.editbtn);

            editbtn1.Click += MyButton_Click;

           
        }
        private void MyButton_Click(object sender, EventArgs e)
        {
            // Create an Intent object for the new activity page
            var intent = new Intent(this, typeof(EditImageActivity));
            Bitmap bitmap = ((BitmapDrawable)fullscreenImageView.Drawable).Bitmap;
            string fileName = "temp_image.png";
            Java.IO.File file = new Java.IO.File(CacheDir, fileName);
            using (var stream = new FileStream(file.Path, FileMode.Create))
            {
                bitmap.Compress(Bitmap.CompressFormat.Png, 100, stream);
            }
            Android.Net.Uri selectedImageUri = Android.Net.Uri.FromFile(file);
            intent.PutExtra("selectedImageUri", selectedImageUri.ToString());
            // Navigate to the new activity page
            StartActivity(intent);
        }

    }
}