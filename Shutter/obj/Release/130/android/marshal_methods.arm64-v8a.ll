; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [70 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 2
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 13
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 22
	i64 872800313462103108, ; 3: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 16
	i64 1000557547492888992, ; 4: Mono.Security.dll => 0xde2b1c9cba651a0 => 34
	i64 1529368840615769955, ; 5: Shutter.dll => 0x153968db8b743763 => 0
	i64 1795316252682057001, ; 6: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 12
	i64 1836611346387731153, ; 7: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 22
	i64 1981742497975770890, ; 8: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 20
	i64 2064708342624596306, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 29
	i64 2165310824878145998, ; 10: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 10
	i64 2262844636196693701, ; 11: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 16
	i64 2329709569556905518, ; 12: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 19
	i64 2479423007379663237, ; 13: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 23
	i64 2547086958574651984, ; 14: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 11
	i64 2624866290265602282, ; 15: mscorlib.dll => 0x246d65fbde2db8ea => 3
	i64 3289520064315143713, ; 16: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 18
	i64 3344514922410554693, ; 17: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 32
	i64 3531994851595924923, ; 18: System.Numerics => 0x31042a9aade235bb => 6
	i64 3659371656528649588, ; 19: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 7
	i64 4794310189461587505, ; 20: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 11
	i64 5203618020066742981, ; 21: Xamarin.Essentials => 0x4836f704f0e652c5 => 24
	i64 5376510917114486089, ; 22: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 23
	i64 5507995362134886206, ; 23: System.Core.dll => 0x4c705499688c873e => 4
	i64 6401687960814735282, ; 24: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 19
	i64 6548213210057960872, ; 25: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 15
	i64 7192745174564810625, ; 26: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 10
	i64 7349431895026339542, ; 27: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 8
	i64 7637365915383206639, ; 28: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 24
	i64 7654504624184590948, ; 29: System.Net.Http => 0x6a3a4366801b8264 => 33
	i64 7735352534559001595, ; 30: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 28
	i64 8083354569033831015, ; 31: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 18
	i64 8167236081217502503, ; 32: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8187640529827139739, ; 33: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 31
	i64 8626175481042262068, ; 34: Java.Interop => 0x77b654e585b55834 => 1
	i64 8853378295825400934, ; 35: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 27
	i64 9324707631942237306, ; 36: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 12
	i64 9662334977499516867, ; 37: System.Numerics.dll => 0x8617827802b0cfc3 => 6
	i64 9808709177481450983, ; 38: Mono.Android.dll => 0x881f890734e555e7 => 2
	i64 9998632235833408227, ; 39: Mono.Security => 0x8ac2470b209ebae3 => 34
	i64 10038780035334861115, ; 40: System.Net.Http.dll => 0x8b50e941206af13b => 33
	i64 10226222362177979215, ; 41: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 29
	i64 10229024438826829339, ; 42: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 15
	i64 10321854143672141184, ; 43: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 26
	i64 10406448008575299332, ; 44: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 32
	i64 10430153318873392755, ; 45: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 14
	i64 11023048688141570732, ; 46: System.Core => 0x98f9bc61168392ac => 4
	i64 11510932699283733548, ; 47: Shutter => 0x9fbf0c4d6e3c3c2c => 0
	i64 12191646537372739477, ; 48: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 9
	i64 12451044538927396471, ; 49: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 17
	i64 12466513435562512481, ; 50: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 21
	i64 12700543734426720211, ; 51: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 13
	i64 12828192437253469131, ; 52: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 30
	i64 13454009404024712428, ; 53: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 25
	i64 13465488254036897740, ; 54: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 28
	i64 13828521679616088467, ; 55: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 27
	i64 13959074834287824816, ; 56: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 17
	i64 14178052285788134900, ; 57: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 7
	i64 14331727281556788554, ; 58: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 8
	i64 14792063746108907174, ; 59: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 25
	i64 15279429628684179188, ; 60: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 31
	i64 15370334346939861994, ; 61: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 14
	i64 15609085926864131306, ; 62: System.dll => 0xd89e9cf3334914ea => 5
	i64 16154507427712707110, ; 63: System => 0xe03056ea4e39aa26 => 5
	i64 16423015068819898779, ; 64: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 30
	i64 16833383113903931215, ; 65: mscorlib => 0xe99c30c1484d7f4f => 3
	i64 17590473451926037903, ; 66: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 9
	i64 17704177640604968747, ; 67: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 21
	i64 17710060891934109755, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 20
	i64 17891337867145587222 ; 69: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 26
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [70 x i32] [
	i32 2, i32 13, i32 22, i32 16, i32 34, i32 0, i32 12, i32 22, ; 0..7
	i32 20, i32 29, i32 10, i32 16, i32 19, i32 23, i32 11, i32 3, ; 8..15
	i32 18, i32 32, i32 6, i32 7, i32 11, i32 24, i32 23, i32 4, ; 16..23
	i32 19, i32 15, i32 10, i32 8, i32 24, i32 33, i32 28, i32 18, ; 24..31
	i32 1, i32 31, i32 1, i32 27, i32 12, i32 6, i32 2, i32 34, ; 32..39
	i32 33, i32 29, i32 15, i32 26, i32 32, i32 14, i32 4, i32 0, ; 40..47
	i32 9, i32 17, i32 21, i32 13, i32 30, i32 25, i32 28, i32 27, ; 48..55
	i32 17, i32 7, i32 8, i32 25, i32 31, i32 14, i32 5, i32 5, ; 56..63
	i32 30, i32 3, i32 9, i32 21, i32 20, i32 26 ; 64..69
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
