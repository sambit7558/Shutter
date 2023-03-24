; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [70 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 25
	i32 134690465, ; 1: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 29
	i32 165246403, ; 2: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 13
	i32 318968648, ; 3: Xamarin.AndroidX.Activity.dll => 0x13031348 => 11
	i32 321597661, ; 4: System.Numerics => 0x132b30dd => 6
	i32 342366114, ; 5: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 18
	i32 442521989, ; 6: Xamarin.Essentials => 0x1a605985 => 24
	i32 450948140, ; 7: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 17
	i32 465846621, ; 8: mscorlib => 0x1bc4415d => 3
	i32 469710990, ; 9: System.dll => 0x1bff388e => 5
	i32 527452488, ; 10: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 29
	i32 627609679, ; 11: Xamarin.AndroidX.CustomView => 0x2568904f => 15
	i32 691348768, ; 12: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 31
	i32 700284507, ; 13: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 26
	i32 720511267, ; 14: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 30
	i32 755313932, ; 15: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 7
	i32 928116545, ; 16: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 25
	i32 956575887, ; 17: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 30
	i32 967690846, ; 18: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 18
	i32 1012816738, ; 19: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 22
	i32 1035644815, ; 20: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 12
	i32 1052210849, ; 21: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 20
	i32 1084122840, ; 22: Xamarin.Kotlin.StdLib => 0x409e66d8 => 28
	i32 1098259244, ; 23: System => 0x41761b2c => 5
	i32 1175144683, ; 24: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 23
	i32 1275534314, ; 25: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 31
	i32 1293217323, ; 26: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 16
	i32 1376866003, ; 27: Xamarin.AndroidX.SavedState => 0x52114ed3 => 22
	i32 1622152042, ; 28: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 21
	i32 1639515021, ; 29: System.Net.Http.dll => 0x61b9038d => 33
	i32 1698840827, ; 30: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 27
	i32 1776026572, ; 31: System.Core.dll => 0x69dc03cc => 4
	i32 1788241197, ; 32: Xamarin.AndroidX.Fragment => 0x6a96652d => 17
	i32 1808609942, ; 33: Xamarin.AndroidX.Loader => 0x6bcd3296 => 21
	i32 1813058853, ; 34: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 28
	i32 1847515442, ; 35: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 7
	i32 1867746548, ; 36: Xamarin.Essentials.dll => 0x6f538cf4 => 24
	i32 1983156543, ; 37: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 27
	i32 1985761444, ; 38: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 10
	i32 2019465201, ; 39: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 20
	i32 2031763787, ; 40: Xamarin.Android.Glide => 0x791a414b => 9
	i32 2055257422, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 19
	i32 2201107256, ; 42: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 32
	i32 2201231467, ; 43: System.Net.Http => 0x8334206b => 33
	i32 2217644978, ; 44: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 23
	i32 2267999099, ; 45: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 8
	i32 2475788418, ; 46: Java.Interop.dll => 0x93918882 => 1
	i32 2522472828, ; 47: Xamarin.Android.Glide.dll => 0x9659e17c => 9
	i32 2605712449, ; 48: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 32
	i32 2663391936, ; 49: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 8
	i32 2732626843, ; 50: Xamarin.AndroidX.Activity => 0xa2e0939b => 11
	i32 2770495804, ; 51: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 26
	i32 2905242038, ; 52: mscorlib.dll => 0xad2a79b6 => 3
	i32 2978675010, ; 53: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 16
	i32 3247949154, ; 54: Mono.Security => 0xc197c562 => 34
	i32 3317135071, ; 55: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 15
	i32 3362522851, ; 56: Xamarin.AndroidX.Core => 0xc86c06e3 => 14
	i32 3366347497, ; 57: Java.Interop => 0xc8a662e9 => 1
	i32 3476120550, ; 58: Mono.Android => 0xcf3163e6 => 2
	i32 3487409479, ; 59: Shutter => 0xcfdda547 => 0
	i32 3597029428, ; 60: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 10
	i32 3597464792, ; 61: Shutter.dll => 0xd66cf4d8 => 0
	i32 3641597786, ; 62: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 19
	i32 3672681054, ; 63: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3786282454, ; 64: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 13
	i32 3829621856, ; 65: System.Numerics.dll => 0xe4436460 => 6
	i32 3896760992, ; 66: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 14
	i32 3955647286, ; 67: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 12
	i32 4105002889, ; 68: Mono.Security.dll => 0xf4ad5f89 => 34
	i32 4151237749 ; 69: System.Core => 0xf76edc75 => 4
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [70 x i32] [
	i32 25, i32 29, i32 13, i32 11, i32 6, i32 18, i32 24, i32 17, ; 0..7
	i32 3, i32 5, i32 29, i32 15, i32 31, i32 26, i32 30, i32 7, ; 8..15
	i32 25, i32 30, i32 18, i32 22, i32 12, i32 20, i32 28, i32 5, ; 16..23
	i32 23, i32 31, i32 16, i32 22, i32 21, i32 33, i32 27, i32 4, ; 24..31
	i32 17, i32 21, i32 28, i32 7, i32 24, i32 27, i32 10, i32 20, ; 32..39
	i32 9, i32 19, i32 32, i32 33, i32 23, i32 8, i32 1, i32 9, ; 40..47
	i32 32, i32 8, i32 11, i32 26, i32 3, i32 16, i32 34, i32 15, ; 48..55
	i32 14, i32 1, i32 2, i32 0, i32 10, i32 0, i32 19, i32 2, ; 56..63
	i32 13, i32 6, i32 14, i32 12, i32 34, i32 4 ; 64..69
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
