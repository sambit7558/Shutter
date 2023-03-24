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
    public class MyTouchListener : Java.Lang.Object, View.IOnTouchListener
    {
        private readonly ScaleGestureDetector _scaleGestureDetector;

        public MyTouchListener(ScaleGestureDetector scaleGestureDetector)
        {
            _scaleGestureDetector = scaleGestureDetector;
        }

        public bool OnTouch(View v, MotionEvent e)
        {
            _scaleGestureDetector.OnTouchEvent(e);
            return true;
        }
    }
}