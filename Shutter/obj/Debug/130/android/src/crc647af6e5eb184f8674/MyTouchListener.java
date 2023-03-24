package crc647af6e5eb184f8674;


public class MyTouchListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.view.View.OnTouchListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onTouch:(Landroid/view/View;Landroid/view/MotionEvent;)Z:GetOnTouch_Landroid_view_View_Landroid_view_MotionEvent_Handler:Android.Views.View/IOnTouchListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Shutter.MyTouchListener, Shutter", MyTouchListener.class, __md_methods);
	}


	public MyTouchListener ()
	{
		super ();
		if (getClass () == MyTouchListener.class) {
			mono.android.TypeManager.Activate ("Shutter.MyTouchListener, Shutter", "", this, new java.lang.Object[] {  });
		}
	}

	public MyTouchListener (android.view.ScaleGestureDetector p0)
	{
		super ();
		if (getClass () == MyTouchListener.class) {
			mono.android.TypeManager.Activate ("Shutter.MyTouchListener, Shutter", "Android.Views.ScaleGestureDetector, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public boolean onTouch (android.view.View p0, android.view.MotionEvent p1)
	{
		return n_onTouch (p0, p1);
	}

	private native boolean n_onTouch (android.view.View p0, android.view.MotionEvent p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
