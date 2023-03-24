package crc647af6e5eb184f8674;


public class MyScaleGestureListener
	extends android.view.ScaleGestureDetector.SimpleOnScaleGestureListener
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onScale:(Landroid/view/ScaleGestureDetector;)Z:GetOnScale_Landroid_view_ScaleGestureDetector_Handler\n" +
			"";
		mono.android.Runtime.register ("Shutter.MyScaleGestureListener, Shutter", MyScaleGestureListener.class, __md_methods);
	}


	public MyScaleGestureListener ()
	{
		super ();
		if (getClass () == MyScaleGestureListener.class) {
			mono.android.TypeManager.Activate ("Shutter.MyScaleGestureListener, Shutter", "", this, new java.lang.Object[] {  });
		}
	}

	public MyScaleGestureListener (android.widget.ImageView p0)
	{
		super ();
		if (getClass () == MyScaleGestureListener.class) {
			mono.android.TypeManager.Activate ("Shutter.MyScaleGestureListener, Shutter", "Android.Widget.ImageView, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public boolean onScale (android.view.ScaleGestureDetector p0)
	{
		return n_onScale (p0);
	}

	private native boolean n_onScale (android.view.ScaleGestureDetector p0);

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
