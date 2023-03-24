using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace Shutter
{
    public class MyScaleGestureListener : ScaleGestureDetector.SimpleOnScaleGestureListener
    {
        private const float MIN_SCALE_FACTOR = 1.0f;
        private const float MAX_SCALE_FACTOR = 5.0f;

        private ImageView _imageView;

        public MyScaleGestureListener(ImageView imageView)
        {
            _imageView = imageView;
        }
        public override bool OnScale(ScaleGestureDetector detector)
        {
            float scaleFactor = detector.ScaleFactor;
            float newScaleX = _imageView.ScaleX * scaleFactor;
            float newScaleY = _imageView.ScaleY * scaleFactor;
            if (newScaleX < MIN_SCALE_FACTOR || newScaleX > MAX_SCALE_FACTOR)
            {
                return false;
            }
            _imageView.ScaleX = newScaleX;
            _imageView.ScaleY = newScaleY;
            return true;
        }
    }
}