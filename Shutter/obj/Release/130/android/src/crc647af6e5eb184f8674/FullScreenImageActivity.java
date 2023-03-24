package crc647af6e5eb184f8674;


public class FullScreenImageActivity
	extends androidx.appcompat.app.AppCompatActivity
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"";
		mono.android.Runtime.register ("Shutter.FullScreenImageActivity, Shutter", FullScreenImageActivity.class, __md_methods);
	}


	public FullScreenImageActivity ()
	{
		super ();
		if (getClass () == FullScreenImageActivity.class) {
			mono.android.TypeManager.Activate ("Shutter.FullScreenImageActivity, Shutter", "", this, new java.lang.Object[] {  });
		}
	}


	public FullScreenImageActivity (int p0)
	{
		super (p0);
		if (getClass () == FullScreenImageActivity.class) {
			mono.android.TypeManager.Activate ("Shutter.FullScreenImageActivity, Shutter", "System.Int32, mscorlib", this, new java.lang.Object[] { p0 });
		}
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);

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
