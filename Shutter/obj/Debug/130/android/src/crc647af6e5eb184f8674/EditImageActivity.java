package crc647af6e5eb184f8674;


public class EditImageActivity
	extends androidx.appcompat.app.AppCompatActivity
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"n_onActivityResult:(IILandroid/content/Intent;)V:GetOnActivityResult_IILandroid_content_Intent_Handler\n" +
			"";
		mono.android.Runtime.register ("Shutter.EditImageActivity, Shutter", EditImageActivity.class, __md_methods);
	}


	public EditImageActivity ()
	{
		super ();
		if (getClass () == EditImageActivity.class) {
			mono.android.TypeManager.Activate ("Shutter.EditImageActivity, Shutter", "", this, new java.lang.Object[] {  });
		}
	}


	public EditImageActivity (int p0)
	{
		super (p0);
		if (getClass () == EditImageActivity.class) {
			mono.android.TypeManager.Activate ("Shutter.EditImageActivity, Shutter", "System.Int32, mscorlib", this, new java.lang.Object[] { p0 });
		}
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);


	public void onActivityResult (int p0, int p1, android.content.Intent p2)
	{
		n_onActivityResult (p0, p1, p2);
	}

	private native void n_onActivityResult (int p0, int p1, android.content.Intent p2);

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
