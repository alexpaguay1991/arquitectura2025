; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [410 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [820 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 67
	i32 3921707, ; 1: fr\System.ServiceModel.NetFramingBase.resources => 0x3bd72b => 357
	i32 10166715, ; 2: System.Net.NameResolution.dll => 0x9b21bb => 66
	i32 15721112, ; 3: System.Runtime.Intrinsics.dll => 0xefe298 => 107
	i32 17613696, ; 4: es\System.ServiceModel.NetTcp.resources => 0x10cc380 => 382
	i32 28923068, ; 5: tr\System.ServiceModel.Federation.resources => 0x1b954bc => 338
	i32 32687329, ; 6: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 252
	i32 34715100, ; 7: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 286
	i32 34839235, ; 8: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 47
	i32 39485524, ; 9: System.Net.WebSockets.dll => 0x25a8054 => 79
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 144
	i32 53472207, ; 11: System.ServiceModel.Duplex.dll => 0x32febcf => 203
	i32 66541672, ; 12: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 13: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 327
	i32 68219467, ; 14: System.Security.Cryptography.Primitives => 0x410f24b => 123
	i32 71084978, ; 15: cs\System.ServiceModel.NetNamedPipe.resources => 0x43cabb2 => 367
	i32 72070932, ; 16: Microsoft.Maui.Graphics.dll => 0x44bb714 => 199
	i32 82292897, ; 17: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 101
	i32 85813540, ; 18: ja/System.ServiceModel.Primitives.resources.dll => 0x51d6924 => 398
	i32 98325684, ; 19: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 180
	i32 101534019, ; 20: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 270
	i32 117431740, ; 21: System.Runtime.InteropServices => 0x6ffddbc => 106
	i32 120558881, ; 22: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 270
	i32 122350210, ; 23: System.Threading.Channels.dll => 0x74aea82 => 138
	i32 134690465, ; 24: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 290
	i32 142721839, ; 25: System.Net.WebHeaderCollection => 0x881c32f => 76
	i32 149972175, ; 26: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 123
	i32 159306688, ; 27: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 28: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 226
	i32 166617380, ; 29: de/System.ServiceModel.NetFramingBase.resources.dll => 0x9ee6124 => 355
	i32 176265551, ; 30: System.ServiceProcess => 0xa81994f => 131
	i32 182336117, ; 31: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 272
	i32 184328833, ; 32: System.ValueTuple.dll => 0xafca281 => 150
	i32 192921502, ; 33: fr\System.ServiceModel.Http.resources => 0xb7fbf9e => 344
	i32 193868653, ; 34: de\System.ServiceModel.NetNamedPipe.resources => 0xb8e336d => 368
	i32 195452805, ; 35: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 324
	i32 199333315, ; 36: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 325
	i32 205061960, ; 37: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 38: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 224
	i32 209580789, ; 39: ko\System.ServiceModel.Federation.resources => 0xc7df2f5 => 334
	i32 220171995, ; 40: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 41: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 179
	i32 230216969, ; 42: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 246
	i32 230752869, ; 43: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 230884747, ; 44: ru/System.ServiceModel.Primitives.resources.dll => 0xdc3058b => 402
	i32 231409092, ; 45: System.Linq.Parallel => 0xdcb05c4 => 58
	i32 231814094, ; 46: System.Globalization => 0xdd133ce => 41
	i32 246610117, ; 47: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 90
	i32 247181326, ; 48: es/System.ServiceModel.NetNamedPipe.resources.dll => 0xebbb00e => 369
	i32 261689757, ; 49: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 229
	i32 276479776, ; 50: System.Threading.Timer.dll => 0x107abf20 => 146
	i32 278686392, ; 51: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 248
	i32 280482487, ; 52: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 245
	i32 280992041, ; 53: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 296
	i32 285314186, ; 54: it\System.ServiceModel.Primitives.resources => 0x11018c8a => 397
	i32 291076382, ; 55: System.IO.Pipes.AccessControl.dll => 0x1159791e => 53
	i32 291275502, ; 56: Microsoft.Extensions.Http.dll => 0x115c82ee => 181
	i32 296834212, ; 57: zh-Hans\System.ServiceModel.Http.resources => 0x11b154a4 => 352
	i32 298918909, ; 58: System.Net.Ping.dll => 0x11d123fd => 68
	i32 316078633, ; 59: pl\System.ServiceModel.Http.resources => 0x12d6fa29 => 348
	i32 317674968, ; 60: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 324
	i32 318968648, ; 61: Xamarin.AndroidX.Activity.dll => 0x13031348 => 215
	i32 320721186, ; 62: ko/System.ServiceModel.NetTcp.resources.dll => 0x131dd122 => 386
	i32 321597661, ; 63: System.Numerics => 0x132b30dd => 82
	i32 324831035, ; 64: ja/System.ServiceModel.NetFramingBase.resources.dll => 0x135c873b => 359
	i32 336156722, ; 65: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 309
	i32 342366114, ; 66: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 247
	i32 356389973, ; 67: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 308
	i32 360082299, ; 68: System.ServiceModel.Web => 0x15766b7b => 130
	i32 361065771, ; 69: cs/System.ServiceModel.NetTcp.resources.dll => 0x15856d2b => 380
	i32 367780167, ; 70: System.IO.Pipes => 0x15ebe147 => 54
	i32 374914964, ; 71: System.Transactions.Local => 0x1658bf94 => 148
	i32 375677976, ; 72: System.Net.ServicePoint.dll => 0x16646418 => 73
	i32 379916513, ; 73: System.Threading.Thread.dll => 0x16a510e1 => 144
	i32 385762202, ; 74: System.Memory.dll => 0x16fe439a => 61
	i32 392610295, ; 75: System.Threading.ThreadPool.dll => 0x1766c1f7 => 145
	i32 395744057, ; 76: _Microsoft.Android.Resource.Designer => 0x17969339 => 409
	i32 403441872, ; 77: WindowsBase => 0x180c08d0 => 164
	i32 420389340, ; 78: es\System.ServiceModel.NetNamedPipe.resources => 0x190ea1dc => 369
	i32 435591531, ; 79: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 320
	i32 441335492, ; 80: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 230
	i32 442565967, ; 81: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 82: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 243
	i32 451504562, ; 83: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 124
	i32 456096849, ; 84: zh-Hans/System.ServiceModel.Primitives.resources.dll => 0x1b2f7c51 => 404
	i32 456227837, ; 85: System.Web.HttpUtility.dll => 0x1b317bfd => 151
	i32 459347974, ; 86: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 112
	i32 465846621, ; 87: mscorlib => 0x1bc4415d => 165
	i32 469710990, ; 88: System.dll => 0x1bff388e => 163
	i32 476646585, ; 89: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 245
	i32 482736244, ; 90: fr/System.ServiceModel.NetNamedPipe.resources.dll => 0x1cc5f874 => 370
	i32 486703764, ; 91: Material.Icons => 0x1d028294 => 173
	i32 486930444, ; 92: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 258
	i32 498788369, ; 93: System.ObjectModel => 0x1dbae811 => 83
	i32 500358224, ; 94: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 307
	i32 500534657, ; 95: tr/System.ServiceModel.Http.resources.dll => 0x1dd58d81 => 351
	i32 503918385, ; 96: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 301
	i32 513247710, ; 97: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 188
	i32 520748051, ; 98: ja\System.ServiceModel.NetTcp.resources => 0x1f09fc13 => 385
	i32 525250519, ; 99: de/System.ServiceModel.NetTcp.resources.dll => 0x1f4eafd7 => 381
	i32 526420162, ; 100: System.Transactions.dll => 0x1f6088c2 => 149
	i32 527452488, ; 101: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 290
	i32 530272170, ; 102: System.Linq.Queryable => 0x1f9b4faa => 59
	i32 531014212, ; 103: ja\System.ServiceModel.Primitives.resources => 0x1fa6a244 => 398
	i32 535122277, ; 104: tr/System.ServiceModel.NetNamedPipe.resources.dll => 0x1fe55165 => 377
	i32 539058512, ; 105: Microsoft.Extensions.Logging => 0x20216150 => 182
	i32 540030774, ; 106: System.IO.FileSystem.dll => 0x20303736 => 50
	i32 545304856, ; 107: System.Runtime.Extensions => 0x2080b118 => 102
	i32 546455878, ; 108: System.Runtime.Serialization.Xml => 0x20924146 => 113
	i32 549171840, ; 109: System.Globalization.Calendars => 0x20bbb280 => 39
	i32 557405415, ; 110: Jsr305Binding => 0x213954e7 => 283
	i32 569334933, ; 111: tr/System.ServiceModel.Federation.resources.dll => 0x21ef5c95 => 338
	i32 569601784, ; 112: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 281
	i32 577335427, ; 113: System.Security.Cryptography.Cng => 0x22697083 => 119
	i32 580569086, ; 114: zh-Hans\System.ServiceModel.NetTcp.resources => 0x229ac7fe => 391
	i32 592146354, ; 115: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 315
	i32 601371474, ; 116: System.IO.IsolatedStorage.dll => 0x23d83352 => 51
	i32 605376203, ; 117: System.IO.Compression.FileSystem => 0x24154ecb => 43
	i32 613668793, ; 118: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 118
	i32 625044127, ; 119: es/System.ServiceModel.NetTcp.resources.dll => 0x25416a9f => 382
	i32 627609679, ; 120: Xamarin.AndroidX.CustomView => 0x2568904f => 235
	i32 627931235, ; 121: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 313
	i32 634015394, ; 122: tr\System.ServiceModel.Primitives.resources => 0x25ca4ea2 => 403
	i32 635078218, ; 123: de\System.ServiceModel.Primitives.resources => 0x25da864a => 394
	i32 639843206, ; 124: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 241
	i32 643868501, ; 125: System.Net => 0x2660a755 => 80
	i32 643983915, ; 126: System.ServiceModel.Security => 0x26626a2b => 210
	i32 648503046, ; 127: de\System.ServiceModel.Federation.resources => 0x26a75f06 => 329
	i32 662205335, ; 128: System.Text.Encodings.Web.dll => 0x27787397 => 135
	i32 663517072, ; 129: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 277
	i32 666292255, ; 130: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 222
	i32 672442732, ; 131: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 132: System.Net.Security => 0x28bdabca => 72
	i32 688181140, ; 133: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 295
	i32 690569205, ; 134: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 691348768, ; 135: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 292
	i32 693804605, ; 136: System.Windows => 0x295a9e3d => 153
	i32 699345723, ; 137: System.Reflection.Emit => 0x29af2b3b => 91
	i32 700069175, ; 138: cs/System.ServiceModel.NetNamedPipe.resources.dll => 0x29ba3537 => 367
	i32 700284507, ; 139: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 287
	i32 700358131, ; 140: System.IO.Compression.ZipFile => 0x29be9df3 => 44
	i32 706645707, ; 141: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 310
	i32 709152836, ; 142: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 201
	i32 709557578, ; 143: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 298
	i32 710880553, ; 144: fr/System.ServiceModel.Primitives.resources.dll => 0x2a5f2d29 => 396
	i32 720511267, ; 145: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 291
	i32 722857257, ; 146: System.Runtime.Loader.dll => 0x2b15ed29 => 108
	i32 731701662, ; 147: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 187
	i32 735137430, ; 148: System.Security.SecureString.dll => 0x2bd14e96 => 128
	i32 752232764, ; 149: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 150: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 212
	i32 759454413, ; 151: System.Net.Requests => 0x2d445acd => 71
	i32 762598435, ; 152: System.IO.Pipes.dll => 0x2d745423 => 54
	i32 767064363, ; 153: it/System.ServiceModel.NetNamedPipe.resources.dll => 0x2db8792b => 371
	i32 775507847, ; 154: System.IO.Compression => 0x2e394f87 => 45
	i32 777317022, ; 155: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 319
	i32 789151979, ; 156: Microsoft.Extensions.Options => 0x2f0980eb => 186
	i32 790371945, ; 157: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 236
	i32 804715423, ; 158: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 159: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 250
	i32 823281589, ; 160: System.Private.Uri.dll => 0x311247b5 => 85
	i32 823444754, ; 161: zh-Hant\System.ServiceModel.Http.resources => 0x3114c512 => 353
	i32 828535308, ; 162: System.ServiceModel.NetNamedPipe => 0x3162720c => 207
	i32 830298997, ; 163: System.IO.Compression.Brotli => 0x317d5b75 => 42
	i32 832635846, ; 164: System.Xml.XPath.dll => 0x31a103c6 => 159
	i32 834051424, ; 165: System.Net.Quic => 0x31b69d60 => 70
	i32 843511501, ; 166: Xamarin.AndroidX.Print => 0x3246f6cd => 263
	i32 852919649, ; 167: pt-BR/System.ServiceModel.Primitives.resources.dll => 0x32d68561 => 401
	i32 873119928, ; 168: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 169: System.Globalization.dll => 0x34505120 => 41
	i32 878954865, ; 170: System.Net.Http.Json => 0x3463c971 => 62
	i32 904024072, ; 171: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 172: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 52
	i32 926902833, ; 173: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 322
	i32 928116545, ; 174: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 286
	i32 952186615, ; 175: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 104
	i32 956575887, ; 176: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 291
	i32 959135198, ; 177: fr/System.ServiceModel.NetFramingBase.resources.dll => 0x392b3dde => 357
	i32 966729478, ; 178: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 284
	i32 967690846, ; 179: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 247
	i32 972805734, ; 180: System.ServiceModel.Http => 0x39fbd666 => 205
	i32 975236339, ; 181: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 182: System.Xml.XDocument => 0x3a2aaa1d => 157
	i32 980852653, ; 183: pl\System.ServiceModel.Federation.resources => 0x3a769fad => 335
	i32 986514023, ; 184: System.Private.DataContractSerialization.dll => 0x3acd0267 => 84
	i32 987214855, ; 185: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 186: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 187: System.IO.FileSystem => 0x3b45fb35 => 50
	i32 1001831731, ; 188: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 55
	i32 1012816738, ; 189: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 267
	i32 1019214401, ; 190: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 191: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 178
	i32 1029334545, ; 192: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 297
	i32 1031528504, ; 193: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 285
	i32 1033084130, ; 194: cs/System.ServiceModel.NetFramingBase.resources.dll => 0x3d939ce2 => 354
	i32 1035644815, ; 195: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 220
	i32 1036536393, ; 196: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 197: System.Linq.Expressions.dll => 0x3e444eb4 => 57
	i32 1047490775, ; 198: ru/System.ServiceModel.Http.resources.dll => 0x3e6f70d7 => 350
	i32 1048992957, ; 199: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 180
	i32 1052210849, ; 200: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 254
	i32 1067306892, ; 201: GoogleGson => 0x3f9dcf8c => 172
	i32 1081414353, ; 202: System.ServiceModel.Http.dll => 0x407512d1 => 205
	i32 1082857460, ; 203: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 204: Xamarin.Kotlin.StdLib => 0x409e66d8 => 288
	i32 1095172895, ; 205: it/System.ServiceModel.NetTcp.resources.dll => 0x4147031f => 384
	i32 1098259244, ; 206: System => 0x41761b2c => 163
	i32 1117830343, ; 207: ru/System.ServiceModel.Federation.resources.dll => 0x42a0bcc7 => 337
	i32 1118262833, ; 208: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 310
	i32 1121599056, ; 209: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 253
	i32 1127624469, ; 210: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 184
	i32 1131748925, ; 211: ru\System.ServiceModel.Http.resources => 0x43751e3d => 350
	i32 1137475283, ; 212: fr\System.ServiceModel.Federation.resources => 0x43cc7ed3 => 331
	i32 1142243660, ; 213: zh-Hant/System.ServiceModel.Http.resources.dll => 0x4415414c => 353
	i32 1149092582, ; 214: Xamarin.AndroidX.Window => 0x447dc2e6 => 280
	i32 1168523401, ; 215: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 316
	i32 1170634674, ; 216: System.Web.dll => 0x45c677b2 => 152
	i32 1175144683, ; 217: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 276
	i32 1178241025, ; 218: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 261
	i32 1203215381, ; 219: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 314
	i32 1204270330, ; 220: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 222
	i32 1205230995, ; 221: it/System.ServiceModel.Http.resources.dll => 0x47d65d93 => 345
	i32 1207862497, ; 222: System.ServiceModel.NetTcp.dll => 0x47fe84e1 => 208
	i32 1208641965, ; 223: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 224: System.IO.IsolatedStorage => 0x48aa6be3 => 51
	i32 1234928153, ; 225: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 312
	i32 1243150071, ; 226: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 281
	i32 1253011324, ; 227: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 228: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 296
	i32 1264511973, ; 229: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 271
	i32 1267360935, ; 230: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 275
	i32 1273260888, ; 231: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 227
	i32 1275534314, ; 232: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 292
	i32 1278448581, ; 233: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 219
	i32 1293217323, ; 234: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 238
	i32 1296184643, ; 235: pl\System.ServiceModel.NetFramingBase.resources => 0x4d423543 => 361
	i32 1307310235, ; 236: pl/System.ServiceModel.Http.resources.dll => 0x4debf89b => 348
	i32 1309188875, ; 237: System.Private.DataContractSerialization => 0x4e08a30b => 84
	i32 1314523075, ; 238: fr/System.ServiceModel.NetTcp.resources.dll => 0x4e5a07c3 => 383
	i32 1322716291, ; 239: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 280
	i32 1324164729, ; 240: System.Linq => 0x4eed2679 => 60
	i32 1324212547, ; 241: pt-BR\System.ServiceModel.NetTcp.resources => 0x4eede143 => 388
	i32 1335329327, ; 242: System.Runtime.Serialization.Json.dll => 0x4f97822f => 111
	i32 1360479413, ; 243: it\System.ServiceModel.Federation.resources => 0x511744b5 => 332
	i32 1361525254, ; 244: ru\System.ServiceModel.NetNamedPipe.resources => 0x51273a06 => 376
	i32 1364015309, ; 245: System.IO => 0x514d38cd => 56
	i32 1373134921, ; 246: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 326
	i32 1376866003, ; 247: Xamarin.AndroidX.SavedState => 0x52114ed3 => 267
	i32 1379779777, ; 248: System.Resources.ResourceManager => 0x523dc4c1 => 98
	i32 1394641819, ; 249: System.ServiceModel.Primitives => 0x53208b9b => 209
	i32 1397695725, ; 250: Microsoft.IdentityModel.Xml => 0x534f24ed => 193
	i32 1402170036, ; 251: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 252: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 231
	i32 1408764838, ; 253: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1411638395, ; 254: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 100
	i32 1422545099, ; 255: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 101
	i32 1423907884, ; 256: zh-Hant/System.ServiceModel.Primitives.resources.dll => 0x54df1c2c => 405
	i32 1430672901, ; 257: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 294
	i32 1430830959, ; 258: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x5548bf6f => 366
	i32 1434145427, ; 259: System.Runtime.Handles => 0x557b5293 => 103
	i32 1435222561, ; 260: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 284
	i32 1439761251, ; 261: System.Net.Quic.dll => 0x55d10363 => 70
	i32 1442844750, ; 262: cs/System.ServiceModel.Primitives.resources.dll => 0x5600104e => 393
	i32 1452070440, ; 263: System.Formats.Asn1.dll => 0x568cd628 => 37
	i32 1453312822, ; 264: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 265: System.Runtime.Extensions.dll => 0x56e36530 => 102
	i32 1458022317, ; 266: System.Net.Security.dll => 0x56e7a7ad => 72
	i32 1461004990, ; 267: es\Microsoft.Maui.Controls.resources => 0x57152abe => 300
	i32 1461234159, ; 268: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 269: System.Security.Cryptography.OpenSsl => 0x57201017 => 122
	i32 1462112819, ; 270: System.IO.Compression.dll => 0x57261233 => 45
	i32 1469204771, ; 271: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 221
	i32 1470490898, ; 272: Microsoft.Extensions.Primitives => 0x57a5e912 => 188
	i32 1479771757, ; 273: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 274: System.IO.Compression.Brotli.dll => 0x583e844f => 42
	i32 1487239319, ; 275: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 276: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 268
	i32 1493001747, ; 277: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 304
	i32 1496356098, ; 278: pt-BR\System.ServiceModel.NetFramingBase.resources => 0x59309502 => 362
	i32 1505131794, ; 279: Microsoft.Extensions.Http => 0x59b67d12 => 181
	i32 1514721132, ; 280: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 299
	i32 1536373174, ; 281: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 282: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 137
	i32 1543355203, ; 283: System.Reflection.Emit.dll => 0x5bfdbb43 => 91
	i32 1550322496, ; 284: System.Reflection.Extensions.dll => 0x5c680b40 => 92
	i32 1551623176, ; 285: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 319
	i32 1552155078, ; 286: System.ServiceModel.NetFramingBase => 0x5c8401c6 => 206
	i32 1565862583, ; 287: System.IO.FileSystem.Primitives => 0x5d552ab7 => 48
	i32 1566207040, ; 288: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 140
	i32 1573704789, ; 289: System.Runtime.Serialization.Json => 0x5dccd455 => 111
	i32 1580037396, ; 290: System.Threading.Overlapped => 0x5e2d7514 => 139
	i32 1582372066, ; 291: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 237
	i32 1590860858, ; 292: System.ServiceModel.NetTcp => 0x5ed29c3a => 208
	i32 1592978981, ; 293: System.Runtime.Serialization.dll => 0x5ef2ee25 => 114
	i32 1597949149, ; 294: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 285
	i32 1601112923, ; 295: System.Xml.Serialization => 0x5f6f0b5b => 156
	i32 1603525486, ; 296: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 406
	i32 1604827217, ; 297: System.Net.WebClient => 0x5fa7b851 => 75
	i32 1618516317, ; 298: System.Net.WebSockets.Client.dll => 0x6078995d => 78
	i32 1622152042, ; 299: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 257
	i32 1622358360, ; 300: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 301: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 279
	i32 1626255391, ; 302: Microsoft.IdentityModel.Protocols.WsTrust => 0x60eeb01f => 190
	i32 1628529952, ; 303: pt-BR/System.ServiceModel.Http.resources.dll => 0x61116520 => 349
	i32 1629788937, ; 304: cs\System.ServiceModel.Primitives.resources => 0x61249b09 => 393
	i32 1635184631, ; 305: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 241
	i32 1636350590, ; 306: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 234
	i32 1639515021, ; 307: System.Net.Http.dll => 0x61b9038d => 63
	i32 1639986890, ; 308: System.Text.RegularExpressions => 0x61c036ca => 137
	i32 1641389582, ; 309: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1656530436, ; 310: ja/System.ServiceModel.NetNamedPipe.resources.dll => 0x62bca604 => 372
	i32 1657153582, ; 311: System.Runtime => 0x62c6282e => 115
	i32 1658241508, ; 312: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 273
	i32 1658251792, ; 313: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 282
	i32 1661950287, ; 314: ru/System.ServiceModel.NetNamedPipe.resources.dll => 0x630f594f => 376
	i32 1670060433, ; 315: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 229
	i32 1675553242, ; 316: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 47
	i32 1677501392, ; 317: System.Net.Primitives.dll => 0x63fca3d0 => 69
	i32 1678508291, ; 318: System.Net.WebSockets => 0x640c0103 => 79
	i32 1679769178, ; 319: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1691477237, ; 320: System.Reflection.Metadata => 0x64d1e4f5 => 93
	i32 1696967625, ; 321: System.Security.Cryptography.Csp => 0x6525abc9 => 120
	i32 1698840827, ; 322: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 289
	i32 1701541528, ; 323: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1717748983, ; 324: ko/System.ServiceModel.Federation.resources.dll => 0x6662c4f7 => 334
	i32 1720223769, ; 325: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 250
	i32 1726116996, ; 326: System.Reflection.dll => 0x66e27484 => 96
	i32 1728033016, ; 327: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 328: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 225
	i32 1736233607, ; 329: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 317
	i32 1743415430, ; 330: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 295
	i32 1744735666, ; 331: System.Transactions.Local.dll => 0x67fe8db2 => 148
	i32 1746316138, ; 332: Mono.Android.Export => 0x6816ab6a => 168
	i32 1749969296, ; 333: it/System.ServiceModel.Federation.resources.dll => 0x684e6990 => 332
	i32 1750313021, ; 334: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 335: System.Resources.Reader.dll => 0x68cc9d1e => 97
	i32 1763938596, ; 336: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 337: System.Reflection.Extensions => 0x6942234e => 92
	i32 1766324549, ; 338: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 272
	i32 1770582343, ; 339: Microsoft.Extensions.Logging.dll => 0x6988f147 => 182
	i32 1775568156, ; 340: de/System.ServiceModel.Primitives.resources.dll => 0x69d5051c => 394
	i32 1776026572, ; 341: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 342: System.Globalization.Extensions.dll => 0x69ec0683 => 40
	i32 1780572499, ; 343: Mono.Android.Runtime.dll => 0x6a216153 => 169
	i32 1782862114, ; 344: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 311
	i32 1787719884, ; 345: tr/System.ServiceModel.NetFramingBase.resources.dll => 0x6a8e70cc => 364
	i32 1788241197, ; 346: Xamarin.AndroidX.Fragment => 0x6a96652d => 243
	i32 1792213857, ; 347: ru\System.ServiceModel.Federation.resources => 0x6ad30361 => 337
	i32 1793755602, ; 348: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 303
	i32 1808609942, ; 349: Xamarin.AndroidX.Loader => 0x6bcd3296 => 257
	i32 1813058853, ; 350: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 288
	i32 1813201214, ; 351: Xamarin.Google.Android.Material => 0x6c13413e => 282
	i32 1818569960, ; 352: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 262
	i32 1818787751, ; 353: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 354: System.Text.Encoding.Extensions => 0x6cbab720 => 133
	i32 1824722060, ; 355: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1827118058, ; 356: pl\System.ServiceModel.NetNamedPipe.resources => 0x6ce79bea => 374
	i32 1827303595, ; 357: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 408
	i32 1828688058, ; 358: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 183
	i32 1834522491, ; 359: pt-BR\System.ServiceModel.Http.resources => 0x6d58977b => 349
	i32 1842015223, ; 360: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 323
	i32 1847515442, ; 361: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 212
	i32 1852096909, ; 362: tr/System.ServiceModel.NetTcp.resources.dll => 0x6e64c18d => 390
	i32 1853025655, ; 363: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 320
	i32 1858542181, ; 364: System.Linq.Expressions => 0x6ec71a65 => 57
	i32 1870090363, ; 365: ko/System.ServiceModel.NetNamedPipe.resources.dll => 0x6f77507b => 373
	i32 1870277092, ; 366: System.Reflection.Primitives => 0x6f7a29e4 => 94
	i32 1875935024, ; 367: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 302
	i32 1879696579, ; 368: System.Formats.Tar.dll => 0x7009e4c3 => 38
	i32 1882505209, ; 369: tr/System.ServiceModel.Primitives.resources.dll => 0x7034bff9 => 403
	i32 1885316902, ; 370: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 223
	i32 1885918049, ; 371: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 408
	i32 1888955245, ; 372: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 373: System.Reflection.Metadata.dll => 0x70a66bdd => 93
	i32 1898237753, ; 374: System.Reflection.DispatchProxy => 0x7124cf39 => 88
	i32 1900610850, ; 375: System.Resources.ResourceManager.dll => 0x71490522 => 98
	i32 1910275211, ; 376: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1922109462, ; 377: System.ServiceModel.Primitives.dll => 0x72911016 => 209
	i32 1932085498, ; 378: fr\System.ServiceModel.Primitives.resources => 0x732948fa => 396
	i32 1939592360, ; 379: System.Private.Xml.Linq => 0x739bd4a8 => 86
	i32 1946106882, ; 380: es\System.ServiceModel.NetFramingBase.resources => 0x73ff3c02 => 356
	i32 1954170934, ; 381: fr/System.ServiceModel.Federation.resources.dll => 0x747a4836 => 331
	i32 1956758971, ; 382: System.Resources.Writer => 0x74a1c5bb => 99
	i32 1960645073, ; 383: ko\System.ServiceModel.NetTcp.resources => 0x74dd11d1 => 386
	i32 1961813231, ; 384: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 269
	i32 1968388702, ; 385: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1973329537, ; 386: ru/System.ServiceModel.NetFramingBase.resources.dll => 0x759e9e81 => 363
	i32 1983156543, ; 387: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 289
	i32 1985761444, ; 388: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 214
	i32 1986222447, ; 389: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 191
	i32 1999793157, ; 390: ja/System.ServiceModel.NetTcp.resources.dll => 0x77326c05 => 385
	i32 2003115576, ; 391: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 299
	i32 2011961780, ; 392: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 393: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 254
	i32 2025202353, ; 394: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 294
	i32 2031763787, ; 395: Xamarin.Android.Glide => 0x791a414b => 211
	i32 2045470958, ; 396: System.Private.Xml => 0x79eb68ee => 87
	i32 2048278909, ; 397: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 176
	i32 2055257422, ; 398: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 249
	i32 2060060697, ; 399: System.Windows.dll => 0x7aca0819 => 153
	i32 2066184531, ; 400: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 298
	i32 2070888862, ; 401: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2078280433, ; 402: zh-Hans/System.ServiceModel.NetFramingBase.resources.dll => 0x7be00af1 => 365
	i32 2079903147, ; 403: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2085039813, ; 404: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 202
	i32 2086675053, ; 405: System.ServiceModel.NetFramingBase.dll => 0x7c60226d => 206
	i32 2090596640, ; 406: System.Numerics.Vectors => 0x7c9bf920 => 81
	i32 2093814594, ; 407: Microsoft.IdentityModel.Tokens.Saml.dll => 0x7ccd1342 => 192
	i32 2098812199, ; 408: de/System.ServiceModel.Http.resources.dll => 0x7d195527 => 342
	i32 2118004960, ; 409: fr\System.ServiceModel.NetNamedPipe.resources => 0x7e3e30e0 => 370
	i32 2127167465, ; 410: System.Console => 0x7ec9ffe9 => 20
	i32 2132115774, ; 411: zh-Hant/System.ServiceModel.NetFramingBase.resources.dll => 0x7f15813e => 366
	i32 2142473426, ; 412: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 413: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 161
	i32 2146852085, ; 414: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 415: Microsoft.Maui => 0x80bd55ad => 197
	i32 2169148018, ; 416: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 306
	i32 2181898931, ; 417: Microsoft.Extensions.Options.dll => 0x820d22b3 => 186
	i32 2192057212, ; 418: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 183
	i32 2193016926, ; 419: System.ObjectModel.dll => 0x82b6c85e => 83
	i32 2201107256, ; 420: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 293
	i32 2201231467, ; 421: System.Net.Http => 0x8334206b => 63
	i32 2204417087, ; 422: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 185
	i32 2207618523, ; 423: it\Microsoft.Maui.Controls.resources => 0x839595db => 308
	i32 2217644978, ; 424: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 276
	i32 2222056684, ; 425: System.Threading.Tasks.Parallel => 0x8471e4ec => 142
	i32 2223829768, ; 426: ko/System.ServiceModel.Primitives.resources.dll => 0x848cf308 => 399
	i32 2224792570, ; 427: zh-Hant/System.ServiceModel.NetTcp.resources.dll => 0x849ba3fa => 392
	i32 2227276228, ; 428: cs\System.ServiceModel.NetFramingBase.resources => 0x84c189c4 => 354
	i32 2244775296, ; 429: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 258
	i32 2252106437, ; 430: System.Xml.Serialization.dll => 0x863c6ac5 => 156
	i32 2256313426, ; 431: System.Globalization.Extensions => 0x867c9c52 => 40
	i32 2265110946, ; 432: System.Security.AccessControl.dll => 0x8702d9a2 => 116
	i32 2266799131, ; 433: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 434: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 213
	i32 2270573516, ; 435: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 302
	i32 2279755925, ; 436: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 265
	i32 2292263403, ; 437: zh-Hant\System.ServiceModel.Primitives.resources => 0x88a129eb => 405
	i32 2293034957, ; 438: System.ServiceModel.Web.dll => 0x88acefcd => 130
	i32 2294984242, ; 439: pl/System.ServiceModel.NetFramingBase.resources.dll => 0x88caae32 => 361
	i32 2295906218, ; 440: System.Net.Sockets => 0x88d8bfaa => 74
	i32 2298471582, ; 441: System.Net.Mail => 0x88ffe49e => 65
	i32 2303942373, ; 442: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 312
	i32 2305521784, ; 443: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2306840234, ; 444: cs\System.ServiceModel.Federation.resources => 0x897f96aa => 328
	i32 2315684594, ; 445: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 217
	i32 2320631194, ; 446: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 142
	i32 2333576127, ; 447: pt-BR/System.ServiceModel.NetTcp.resources.dll => 0x8b178bbf => 388
	i32 2340441535, ; 448: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 105
	i32 2344264397, ; 449: System.ValueTuple => 0x8bbaa2cd => 150
	i32 2348932370, ; 450: Microsoft.IdentityModel.Tokens.Saml => 0x8c01dd12 => 192
	i32 2353062107, ; 451: System.Net.Primitives => 0x8c40e0db => 69
	i32 2368005991, ; 452: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2369706906, ; 453: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 189
	i32 2371007202, ; 454: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 455: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 120
	i32 2383496789, ; 456: System.Security.Principal.Windows.dll => 0x8e114655 => 126
	i32 2393708825, ; 457: es\System.ServiceModel.Http.resources => 0x8ead1919 => 343
	i32 2395872292, ; 458: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 307
	i32 2401565422, ; 459: System.Web.HttpUtility => 0x8f24faee => 151
	i32 2403452196, ; 460: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 240
	i32 2409983638, ; 461: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 407
	i32 2421380589, ; 462: System.Threading.Tasks.Dataflow => 0x905355ed => 140
	i32 2423080555, ; 463: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 227
	i32 2427813419, ; 464: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 304
	i32 2435356389, ; 465: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 466: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 467: System.Text.Encoding.dll => 0x924edee6 => 134
	i32 2454894271, ; 468: pl/System.ServiceModel.NetTcp.resources.dll => 0x9252b6bf => 387
	i32 2458678730, ; 469: System.Net.Sockets.dll => 0x928c75ca => 74
	i32 2459001652, ; 470: System.Linq.Parallel.dll => 0x92916334 => 58
	i32 2465532216, ; 471: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 230
	i32 2466230705, ; 472: fr/System.ServiceModel.Http.resources.dll => 0x92ffb1b1 => 344
	i32 2471841756, ; 473: netstandard.dll => 0x93554fdc => 166
	i32 2475788418, ; 474: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 475: Microsoft.Maui.Controls => 0x93dba8a1 => 195
	i32 2483903535, ; 476: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 477: System.Net.ServicePoint => 0x94147f61 => 73
	i32 2490993605, ; 478: System.AppContext.dll => 0x94798bc5 => 6
	i32 2491939797, ; 479: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x9487fbd5 => 375
	i32 2501346920, ; 480: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503402960, ; 481: de\System.ServiceModel.NetFramingBase.resources => 0x9536e5d0 => 355
	i32 2505896520, ; 482: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 252
	i32 2522472828, ; 483: Xamarin.Android.Glide.dll => 0x9659e17c => 211
	i32 2538310050, ; 484: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 90
	i32 2539621919, ; 485: es/System.ServiceModel.Federation.resources.dll => 0x975f8e1f => 330
	i32 2550873716, ; 486: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 305
	i32 2562349572, ; 487: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 488: System.Text.Encodings.Web => 0x9930ee42 => 135
	i32 2574359397, ; 489: tr\System.ServiceModel.NetFramingBase.resources => 0x99719b65 => 364
	i32 2577645437, ; 490: ko/System.ServiceModel.NetFramingBase.resources.dll => 0x99a3bf7d => 360
	i32 2581783588, ; 491: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 253
	i32 2581819634, ; 492: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 275
	i32 2585220780, ; 493: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 133
	i32 2585805581, ; 494: System.Net.Ping => 0x9a20430d => 68
	i32 2589602615, ; 495: System.Threading.ThreadPool => 0x9a5a3337 => 145
	i32 2591523840, ; 496: it/System.ServiceModel.Primitives.resources.dll => 0x9a778400 => 397
	i32 2593496499, ; 497: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 314
	i32 2605712449, ; 498: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 293
	i32 2615233544, ; 499: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 244
	i32 2616218305, ; 500: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 184
	i32 2617129537, ; 501: System.Private.Xml.dll => 0x9bfe3a41 => 87
	i32 2618712057, ; 502: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 95
	i32 2620871830, ; 503: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 234
	i32 2624644809, ; 504: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 239
	i32 2626831493, ; 505: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 309
	i32 2627185994, ; 506: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2629843544, ; 507: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 44
	i32 2633051222, ; 508: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 248
	i32 2640290731, ; 509: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 189
	i32 2654295266, ; 510: ru/System.ServiceModel.NetTcp.resources.dll => 0x9e3554e2 => 389
	i32 2659772221, ; 511: es\System.ServiceModel.Federation.resources => 0x9e88e73d => 330
	i32 2663391936, ; 512: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 213
	i32 2663698177, ; 513: System.Runtime.Loader => 0x9ec4cf01 => 108
	i32 2664396074, ; 514: System.Xml.XDocument.dll => 0x9ecf752a => 157
	i32 2665622720, ; 515: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 516: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 517: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 113
	i32 2693849962, ; 518: System.IO.dll => 0xa090e36a => 56
	i32 2701096212, ; 519: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 273
	i32 2705927368, ; 520: zh-Hant/System.ServiceModel.Federation.resources.dll => 0xa1492cc8 => 340
	i32 2712765783, ; 521: pl/System.ServiceModel.Primitives.resources.dll => 0xa1b18557 => 400
	i32 2715334215, ; 522: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2717744543, ; 523: System.Security.Claims => 0xa1fd7d9f => 117
	i32 2719963679, ; 524: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 119
	i32 2724373263, ; 525: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2724977475, ; 526: pt-BR/System.ServiceModel.Federation.resources.dll => 0xa26bdb43 => 336
	i32 2732626843, ; 527: Xamarin.AndroidX.Activity => 0xa2e0939b => 215
	i32 2735172069, ; 528: System.Threading.Channels => 0xa30769e5 => 138
	i32 2737747696, ; 529: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 221
	i32 2740877318, ; 530: it\System.ServiceModel.NetTcp.resources => 0xa35e7806 => 384
	i32 2740948882, ; 531: System.IO.Pipes.AccessControl => 0xa35f8f92 => 53
	i32 2742465751, ; 532: zh-Hans/System.ServiceModel.NetTcp.resources.dll => 0xa376b4d7 => 391
	i32 2748088231, ; 533: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 104
	i32 2752995522, ; 534: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 315
	i32 2753493119, ; 535: System.ServiceModel.Security.dll => 0xa41ef87f => 210
	i32 2756478476, ; 536: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa44c860c => 392
	i32 2758225723, ; 537: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 196
	i32 2764765095, ; 538: Microsoft.Maui.dll => 0xa4caf7a7 => 197
	i32 2765824710, ; 539: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2770495804, ; 540: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 287
	i32 2778768386, ; 541: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 278
	i32 2779977773, ; 542: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 266
	i32 2780661947, ; 543: pl/System.ServiceModel.NetNamedPipe.resources.dll => 0xa5bd88bb => 374
	i32 2785988530, ; 544: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 321
	i32 2788224221, ; 545: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 244
	i32 2801831435, ; 546: Microsoft.Maui.Graphics => 0xa7008e0b => 199
	i32 2803228030, ; 547: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 158
	i32 2806116107, ; 548: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 300
	i32 2810250172, ; 549: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 231
	i32 2819470561, ; 550: System.Xml.dll => 0xa80db4e1 => 162
	i32 2821205001, ; 551: System.ServiceProcess.dll => 0xa8282c09 => 131
	i32 2821294376, ; 552: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 266
	i32 2822016028, ; 553: zh-Hans/System.ServiceModel.NetNamedPipe.resources.dll => 0xa8348c1c => 378
	i32 2824502124, ; 554: System.Xml.XmlDocument => 0xa85a7b6c => 160
	i32 2831556043, ; 555: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 313
	i32 2838993487, ; 556: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 255
	i32 2849599387, ; 557: System.Threading.Overlapped.dll => 0xa9d96f9b => 139
	i32 2853208004, ; 558: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 278
	i32 2855708567, ; 559: Xamarin.AndroidX.Transition => 0xaa36a797 => 274
	i32 2861098320, ; 560: Mono.Android.Export.dll => 0xaa88e550 => 168
	i32 2861189240, ; 561: Microsoft.Maui.Essentials => 0xaa8a4878 => 198
	i32 2870099610, ; 562: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 216
	i32 2875164099, ; 563: Jsr305Binding.dll => 0xab5f85c3 => 283
	i32 2875220617, ; 564: System.Globalization.Calendars.dll => 0xab606289 => 39
	i32 2884993177, ; 565: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 242
	i32 2887636118, ; 566: System.Net.dll => 0xac1dd496 => 80
	i32 2899241291, ; 567: it\System.ServiceModel.Http.resources => 0xaccee94b => 345
	i32 2899753641, ; 568: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 55
	i32 2900621748, ; 569: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 570: System.Reflection => 0xacf080de => 96
	i32 2905242038, ; 571: mscorlib.dll => 0xad2a79b6 => 165
	i32 2909740682, ; 572: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2916838712, ; 573: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 279
	i32 2917500511, ; 574: zh-Hant/System.ServiceModel.NetNamedPipe.resources.dll => 0xade5865f => 379
	i32 2919462931, ; 575: System.Numerics.Vectors.dll => 0xae037813 => 81
	i32 2921128767, ; 576: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 218
	i32 2921417940, ; 577: System.Security.Cryptography.Xml => 0xae214cd4 => 202
	i32 2936416060, ; 578: System.Resources.Reader => 0xaf06273c => 97
	i32 2940926066, ; 579: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 580: System.Xml.XPath.XDocument => 0xaf624531 => 158
	i32 2958066338, ; 581: pl\System.ServiceModel.Primitives.resources => 0xb05082a2 => 400
	i32 2958246600, ; 582: de\System.ServiceModel.Http.resources => 0xb05342c8 => 342
	i32 2959614098, ; 583: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 584: System.Security.Principal.Windows => 0xb0ed41f3 => 126
	i32 2971004615, ; 585: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 187
	i32 2972252294, ; 586: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 118
	i32 2978675010, ; 587: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 238
	i32 2985026235, ; 588: ja\System.ServiceModel.NetNamedPipe.resources => 0xb1ebe2bb => 372
	i32 2987532451, ; 589: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 269
	i32 2996846495, ; 590: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 251
	i32 3016983068, ; 591: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 271
	i32 3020703001, ; 592: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 179
	i32 3022610030, ; 593: ja\System.ServiceModel.Http.resources => 0xb4295e6e => 346
	i32 3023353419, ; 594: WindowsBase.dll => 0xb434b64b => 164
	i32 3024354802, ; 595: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 246
	i32 3038032645, ; 596: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 409
	i32 3046511124, ; 597: es/System.ServiceModel.Primitives.resources.dll => 0xb5961214 => 395
	i32 3049900938, ; 598: pt-BR/System.ServiceModel.NetNamedPipe.resources.dll => 0xb5c9cb8a => 375
	i32 3056245963, ; 599: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 268
	i32 3057625584, ; 600: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 259
	i32 3059408633, ; 601: Mono.Android.Runtime => 0xb65adef9 => 169
	i32 3059793426, ; 602: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 603: System.Threading.Tasks => 0xb755818f => 143
	i32 3077302341, ; 604: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 306
	i32 3084678329, ; 605: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 191
	i32 3090735792, ; 606: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 124
	i32 3099732863, ; 607: System.Security.Claims.dll => 0xb8c22b7f => 117
	i32 3103600923, ; 608: System.Formats.Asn1 => 0xb8fd311b => 37
	i32 3111772706, ; 609: System.Runtime.Serialization => 0xb979e222 => 114
	i32 3121463068, ; 610: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 46
	i32 3123044289, ; 611: System.ServiceModel.Duplex => 0xba25dfc1 => 203
	i32 3123119788, ; 612: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xba2706ac => 190
	i32 3124832203, ; 613: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3132293585, ; 614: System.Security.AccessControl => 0xbab301d1 => 116
	i32 3147165239, ; 615: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 616: GoogleGson.dll => 0xbba64c02 => 172
	i32 3157052235, ; 617: System.ServiceModel.Federation.dll => 0xbc2ccb4b => 204
	i32 3159123045, ; 618: System.Reflection.Primitives.dll => 0xbc4c6465 => 94
	i32 3159587175, ; 619: cs/System.ServiceModel.Http.resources.dll => 0xbc537967 => 341
	i32 3160747431, ; 620: System.IO.MemoryMappedFiles => 0xbc652da7 => 52
	i32 3178803400, ; 621: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 260
	i32 3184440510, ; 622: pt-BR\System.ServiceModel.Federation.resources => 0xbdceb4be => 336
	i32 3192346100, ; 623: System.Security.SecureString => 0xbe4755f4 => 128
	i32 3193515020, ; 624: System.Web => 0xbe592c0c => 152
	i32 3204380047, ; 625: System.Data.dll => 0xbefef58f => 24
	i32 3206733304, ; 626: ja/System.ServiceModel.Federation.resources.dll => 0xbf22ddf8 => 333
	i32 3209718065, ; 627: System.Xml.XmlDocument.dll => 0xbf506931 => 160
	i32 3211777861, ; 628: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 237
	i32 3220365878, ; 629: System.Threading => 0xbff2e236 => 147
	i32 3226221578, ; 630: System.Runtime.Handles.dll => 0xc04c3c0a => 103
	i32 3241028803, ; 631: it\System.ServiceModel.NetNamedPipe.resources => 0xc12e2cc3 => 371
	i32 3251039220, ; 632: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 88
	i32 3257085460, ; 633: 02_DotnetClienteMovil.dll => 0xc2232e14 => 0
	i32 3258312781, ; 634: Xamarin.AndroidX.CardView => 0xc235e84d => 225
	i32 3265493905, ; 635: System.Linq.Queryable.dll => 0xc2a37b91 => 59
	i32 3265893370, ; 636: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3266548221, ; 637: Material.Icons.dll => 0xc2b391fd => 173
	i32 3277815716, ; 638: System.Resources.Writer.dll => 0xc35f7fa4 => 99
	i32 3278332997, ; 639: zh-Hans/System.ServiceModel.Http.resources.dll => 0xc3676445 => 352
	i32 3279906254, ; 640: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 641: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 642: System.Security.Cryptography.Encoding => 0xc4251ff9 => 121
	i32 3291006565, ; 643: fr\System.ServiceModel.NetTcp.resources => 0xc428c665 => 383
	i32 3299363146, ; 644: System.Text.Encoding => 0xc4a8494a => 134
	i32 3303498502, ; 645: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 646: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 301
	i32 3316684772, ; 647: System.Net.Requests.dll => 0xc5b097e4 => 71
	i32 3317135071, ; 648: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 235
	i32 3317144872, ; 649: System.Data => 0xc5b79d28 => 24
	i32 3340202976, ; 650: tr\System.ServiceModel.NetNamedPipe.resources => 0xc71773e0 => 377
	i32 3340431453, ; 651: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 223
	i32 3345895724, ; 652: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 264
	i32 3346324047, ; 653: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 261
	i32 3347128195, ; 654: tr\System.ServiceModel.Http.resources => 0xc7811f83 => 351
	i32 3357674450, ; 655: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 318
	i32 3358260929, ; 656: System.Text.Json => 0xc82afec1 => 136
	i32 3362336904, ; 657: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 216
	i32 3362522851, ; 658: Xamarin.AndroidX.Core => 0xc86c06e3 => 232
	i32 3366347497, ; 659: Java.Interop => 0xc8a662e9 => 167
	i32 3374999561, ; 660: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 265
	i32 3381016424, ; 661: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 297
	i32 3395150330, ; 662: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 100
	i32 3403906625, ; 663: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 122
	i32 3405233483, ; 664: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 236
	i32 3406727474, ; 665: zh-Hant\System.ServiceModel.Federation.resources => 0xcb0e8932 => 340
	i32 3421170118, ; 666: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 176
	i32 3428513518, ; 667: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 177
	i32 3429136800, ; 668: System.Xml => 0xcc6479a0 => 162
	i32 3430777524, ; 669: netstandard => 0xcc7d82b4 => 166
	i32 3441283291, ; 670: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 239
	i32 3445260447, ; 671: System.Formats.Tar => 0xcd5a809f => 38
	i32 3447165740, ; 672: ja/System.ServiceModel.Http.resources.dll => 0xcd77932c => 346
	i32 3450008806, ; 673: ja\System.ServiceModel.Federation.resources => 0xcda2f4e6 => 333
	i32 3452344032, ; 674: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 194
	i32 3453180490, ; 675: ko\System.ServiceModel.Primitives.resources => 0xcdd35a4a => 399
	i32 3463511458, ; 676: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 305
	i32 3471940407, ; 677: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 678: Mono.Android => 0xcf3163e6 => 170
	i32 3479583265, ; 679: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 318
	i32 3482217531, ; 680: cs\System.ServiceModel.Http.resources => 0xcf8e6c3b => 341
	i32 3483609038, ; 681: es/System.ServiceModel.Http.resources.dll => 0xcfa3a7ce => 343
	i32 3484440000, ; 682: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 317
	i32 3485117614, ; 683: System.Text.Json.dll => 0xcfbaacae => 136
	i32 3486566296, ; 684: System.Transactions => 0xcfd0c798 => 149
	i32 3493954962, ; 685: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 228
	i32 3509114376, ; 686: System.Xml.Linq => 0xd128d608 => 154
	i32 3515174580, ; 687: System.Security.dll => 0xd1854eb4 => 129
	i32 3521184679, ; 688: ru\System.ServiceModel.NetFramingBase.resources => 0xd1e103a7 => 363
	i32 3530912306, ; 689: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 690: System.Net.HttpListener => 0xd2ff69f1 => 64
	i32 3548480101, ; 691: de/System.ServiceModel.Federation.resources.dll => 0xd3818265 => 329
	i32 3560100363, ; 692: System.Threading.Timer => 0xd432d20b => 146
	i32 3570554715, ; 693: System.IO.FileSystem.AccessControl => 0xd4d2575b => 46
	i32 3580333612, ; 694: zh-Hans\System.ServiceModel.Federation.resources => 0xd5678e2c => 339
	i32 3580758918, ; 695: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 325
	i32 3597029428, ; 696: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 214
	i32 3598340787, ; 697: System.Net.WebSockets.Client => 0xd67a52b3 => 78
	i32 3605274052, ; 698: ja\System.ServiceModel.NetFramingBase.resources => 0xd6e41dc4 => 359
	i32 3605918211, ; 699: tr\System.ServiceModel.NetTcp.resources => 0xd6edf203 => 390
	i32 3608519521, ; 700: System.Linq.dll => 0xd715a361 => 60
	i32 3624195450, ; 701: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 105
	i32 3627220390, ; 702: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 263
	i32 3632773286, ; 703: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xd887b8a6 => 378
	i32 3633644679, ; 704: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 218
	i32 3638233600, ; 705: ru\System.ServiceModel.Primitives.resources => 0xd8db0a00 => 402
	i32 3638274909, ; 706: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 48
	i32 3641597786, ; 707: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 249
	i32 3641688426, ; 708: it/System.ServiceModel.NetFramingBase.resources.dll => 0xd90fc16a => 358
	i32 3643446276, ; 709: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 322
	i32 3643854240, ; 710: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 260
	i32 3645089577, ; 711: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 712: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 713: System.Net.NetworkInformation => 0xda2f27df => 67
	i32 3664118907, ; 714: pt-BR\System.ServiceModel.Primitives.resources => 0xda66047b => 401
	i32 3672681054, ; 715: Mono.Android.dll => 0xdae8aa5e => 170
	i32 3675849680, ; 716: cs\System.ServiceModel.NetTcp.resources => 0xdb1903d0 => 380
	i32 3676670898, ; 717: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 406
	i32 3680281109, ; 718: ko/System.ServiceModel.Http.resources.dll => 0xdb5ca215 => 347
	i32 3682565725, ; 719: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 224
	i32 3684561358, ; 720: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 228
	i32 3685718856, ; 721: pl/System.ServiceModel.Federation.resources.dll => 0xdbaf9b48 => 335
	i32 3690488555, ; 722: pl\System.ServiceModel.NetTcp.resources => 0xdbf862eb => 387
	i32 3697841164, ; 723: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 327
	i32 3700619798, ; 724: pt-BR/System.ServiceModel.NetFramingBase.resources.dll => 0xdc92fa16 => 362
	i32 3700866549, ; 725: System.Net.WebProxy.dll => 0xdc96bdf5 => 77
	i32 3705132617, ; 726: it\System.ServiceModel.NetFramingBase.resources => 0xdcd7d649 => 358
	i32 3706696989, ; 727: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 233
	i32 3709546624, ; 728: ru\System.ServiceModel.NetTcp.resources => 0xdd1b3080 => 389
	i32 3716563718, ; 729: System.Runtime.Intrinsics => 0xdd864306 => 107
	i32 3718780102, ; 730: Xamarin.AndroidX.Annotation => 0xdda814c6 => 217
	i32 3724971120, ; 731: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 259
	i32 3732100267, ; 732: System.Net.NameResolution => 0xde7354ab => 66
	i32 3737834244, ; 733: System.Net.Http.Json.dll => 0xdecad304 => 62
	i32 3743991391, ; 734: de\System.ServiceModel.NetTcp.resources => 0xdf28c65f => 381
	i32 3748608112, ; 735: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 200
	i32 3751444290, ; 736: System.Xml.XPath => 0xdf9a7f42 => 159
	i32 3765508441, ; 737: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 185
	i32 3786282454, ; 738: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 226
	i32 3792276235, ; 739: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 740: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 194
	i32 3802395368, ; 741: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 742: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 201
	i32 3813989096, ; 743: ko\System.ServiceModel.NetFramingBase.resources => 0xe354dae8 => 360
	i32 3819260425, ; 744: System.Net.WebProxy => 0xe3a54a09 => 77
	i32 3823082795, ; 745: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3829621856, ; 746: System.Numerics.dll => 0xe4436460 => 82
	i32 3831382396, ; 747: es\System.ServiceModel.Primitives.resources => 0xe45e417c => 395
	i32 3836405899, ; 748: cs/System.ServiceModel.Federation.resources.dll => 0xe4aae88b => 328
	i32 3841636137, ; 749: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 178
	i32 3844307129, ; 750: System.Net.Mail.dll => 0xe52378b9 => 65
	i32 3849253459, ; 751: System.Runtime.InteropServices.dll => 0xe56ef253 => 106
	i32 3870376305, ; 752: System.Net.HttpListener.dll => 0xe6b14171 => 64
	i32 3873536506, ; 753: System.Security.Principal => 0xe6e179fa => 127
	i32 3875112723, ; 754: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 121
	i32 3876601672, ; 755: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0xe7103f48 => 365
	i32 3885497537, ; 756: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 76
	i32 3885922214, ; 757: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 274
	i32 3888767677, ; 758: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 264
	i32 3889960447, ; 759: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 326
	i32 3896106733, ; 760: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 761: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 232
	i32 3901907137, ; 762: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3917319797, ; 763: System.ServiceModel.Federation => 0xe97d8e75 => 204
	i32 3920810846, ; 764: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 43
	i32 3921031405, ; 765: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 277
	i32 3928044579, ; 766: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3930554604, ; 767: System.Security.Principal.dll => 0xea4780ec => 127
	i32 3931092270, ; 768: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 262
	i32 3945713374, ; 769: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3948719759, ; 770: es/System.ServiceModel.NetFramingBase.resources.dll => 0xeb5cae8f => 356
	i32 3953953790, ; 771: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 772: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 220
	i32 3959773229, ; 773: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 251
	i32 3971291721, ; 774: System.ServiceModel.NetNamedPipe.dll => 0xecb51a49 => 207
	i32 3980434154, ; 775: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 321
	i32 3987592930, ; 776: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 303
	i32 4003436829, ; 777: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 778: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 219
	i32 4025784931, ; 779: System.Memory => 0xeff49a63 => 61
	i32 4043772061, ; 780: zh-Hans/System.ServiceModel.Federation.resources.dll => 0xf107109d => 339
	i32 4046471985, ; 781: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 196
	i32 4054681211, ; 782: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 89
	i32 4068434129, ; 783: System.Private.Xml.Linq.dll => 0xf27f60d1 => 86
	i32 4073602200, ; 784: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4081805871, ; 785: zh-Hans\System.ServiceModel.Primitives.resources => 0xf34b6a2f => 404
	i32 4094352644, ; 786: Microsoft.Maui.Essentials.dll => 0xf40add04 => 198
	i32 4099507663, ; 787: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 788: System.Private.Uri => 0xf462c30d => 85
	i32 4101593132, ; 789: Xamarin.AndroidX.Emoji2 => 0xf479582c => 240
	i32 4102112229, ; 790: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 316
	i32 4120300202, ; 791: de/System.ServiceModel.NetNamedPipe.resources.dll => 0xf596caaa => 368
	i32 4125707920, ; 792: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 311
	i32 4126470640, ; 793: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 177
	i32 4127667938, ; 794: System.IO.FileSystem.Watcher => 0xf60736e2 => 49
	i32 4130442656, ; 795: System.AppContext => 0xf6318da0 => 6
	i32 4137271634, ; 796: Microsoft.IdentityModel.Xml.dll => 0xf699c152 => 193
	i32 4147710070, ; 797: ko\System.ServiceModel.NetNamedPipe.resources => 0xf7390876 => 373
	i32 4147896353, ; 798: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 89
	i32 4150914736, ; 799: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 323
	i32 4151237749, ; 800: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 801: System.Xml.XmlSerializer => 0xf7e95c85 => 161
	i32 4161255271, ; 802: System.Reflection.TypeExtensions => 0xf807b767 => 95
	i32 4164802419, ; 803: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 49
	i32 4181436372, ; 804: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 112
	i32 4182413190, ; 805: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 256
	i32 4182880526, ; 806: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 407
	i32 4185676441, ; 807: System.Security => 0xf97c5a99 => 129
	i32 4196529839, ; 808: System.Net.WebClient.dll => 0xfa21f6af => 75
	i32 4213026141, ; 809: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 200
	i32 4256097574, ; 810: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 233
	i32 4258378803, ; 811: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 255
	i32 4260525087, ; 812: System.Buffers => 0xfdf2741f => 7
	i32 4261754524, ; 813: ko\System.ServiceModel.Http.resources => 0xfe05369c => 347
	i32 4266814471, ; 814: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0xfe526c07 => 379
	i32 4269568403, ; 815: 02_DotnetClienteMovil => 0xfe7c7193 => 0
	i32 4271975918, ; 816: Microsoft.Maui.Controls.dll => 0xfea12dee => 195
	i32 4274976490, ; 817: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4292120959, ; 818: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 256
	i32 4294763496 ; 819: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 242
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [820 x i32] [
	i32 67, ; 0
	i32 357, ; 1
	i32 66, ; 2
	i32 107, ; 3
	i32 382, ; 4
	i32 338, ; 5
	i32 252, ; 6
	i32 286, ; 7
	i32 47, ; 8
	i32 79, ; 9
	i32 144, ; 10
	i32 203, ; 11
	i32 29, ; 12
	i32 327, ; 13
	i32 123, ; 14
	i32 367, ; 15
	i32 199, ; 16
	i32 101, ; 17
	i32 398, ; 18
	i32 180, ; 19
	i32 270, ; 20
	i32 106, ; 21
	i32 270, ; 22
	i32 138, ; 23
	i32 290, ; 24
	i32 76, ; 25
	i32 123, ; 26
	i32 13, ; 27
	i32 226, ; 28
	i32 355, ; 29
	i32 131, ; 30
	i32 272, ; 31
	i32 150, ; 32
	i32 344, ; 33
	i32 368, ; 34
	i32 324, ; 35
	i32 325, ; 36
	i32 18, ; 37
	i32 224, ; 38
	i32 334, ; 39
	i32 26, ; 40
	i32 179, ; 41
	i32 246, ; 42
	i32 1, ; 43
	i32 402, ; 44
	i32 58, ; 45
	i32 41, ; 46
	i32 90, ; 47
	i32 369, ; 48
	i32 229, ; 49
	i32 146, ; 50
	i32 248, ; 51
	i32 245, ; 52
	i32 296, ; 53
	i32 397, ; 54
	i32 53, ; 55
	i32 181, ; 56
	i32 352, ; 57
	i32 68, ; 58
	i32 348, ; 59
	i32 324, ; 60
	i32 215, ; 61
	i32 386, ; 62
	i32 82, ; 63
	i32 359, ; 64
	i32 309, ; 65
	i32 247, ; 66
	i32 308, ; 67
	i32 130, ; 68
	i32 380, ; 69
	i32 54, ; 70
	i32 148, ; 71
	i32 73, ; 72
	i32 144, ; 73
	i32 61, ; 74
	i32 145, ; 75
	i32 409, ; 76
	i32 164, ; 77
	i32 369, ; 78
	i32 320, ; 79
	i32 230, ; 80
	i32 12, ; 81
	i32 243, ; 82
	i32 124, ; 83
	i32 404, ; 84
	i32 151, ; 85
	i32 112, ; 86
	i32 165, ; 87
	i32 163, ; 88
	i32 245, ; 89
	i32 370, ; 90
	i32 173, ; 91
	i32 258, ; 92
	i32 83, ; 93
	i32 307, ; 94
	i32 351, ; 95
	i32 301, ; 96
	i32 188, ; 97
	i32 385, ; 98
	i32 381, ; 99
	i32 149, ; 100
	i32 290, ; 101
	i32 59, ; 102
	i32 398, ; 103
	i32 377, ; 104
	i32 182, ; 105
	i32 50, ; 106
	i32 102, ; 107
	i32 113, ; 108
	i32 39, ; 109
	i32 283, ; 110
	i32 338, ; 111
	i32 281, ; 112
	i32 119, ; 113
	i32 391, ; 114
	i32 315, ; 115
	i32 51, ; 116
	i32 43, ; 117
	i32 118, ; 118
	i32 382, ; 119
	i32 235, ; 120
	i32 313, ; 121
	i32 403, ; 122
	i32 394, ; 123
	i32 241, ; 124
	i32 80, ; 125
	i32 210, ; 126
	i32 329, ; 127
	i32 135, ; 128
	i32 277, ; 129
	i32 222, ; 130
	i32 8, ; 131
	i32 72, ; 132
	i32 295, ; 133
	i32 154, ; 134
	i32 292, ; 135
	i32 153, ; 136
	i32 91, ; 137
	i32 367, ; 138
	i32 287, ; 139
	i32 44, ; 140
	i32 310, ; 141
	i32 201, ; 142
	i32 298, ; 143
	i32 396, ; 144
	i32 291, ; 145
	i32 108, ; 146
	i32 187, ; 147
	i32 128, ; 148
	i32 25, ; 149
	i32 212, ; 150
	i32 71, ; 151
	i32 54, ; 152
	i32 371, ; 153
	i32 45, ; 154
	i32 319, ; 155
	i32 186, ; 156
	i32 236, ; 157
	i32 22, ; 158
	i32 250, ; 159
	i32 85, ; 160
	i32 353, ; 161
	i32 207, ; 162
	i32 42, ; 163
	i32 159, ; 164
	i32 70, ; 165
	i32 263, ; 166
	i32 401, ; 167
	i32 3, ; 168
	i32 41, ; 169
	i32 62, ; 170
	i32 16, ; 171
	i32 52, ; 172
	i32 322, ; 173
	i32 286, ; 174
	i32 104, ; 175
	i32 291, ; 176
	i32 357, ; 177
	i32 284, ; 178
	i32 247, ; 179
	i32 205, ; 180
	i32 33, ; 181
	i32 157, ; 182
	i32 335, ; 183
	i32 84, ; 184
	i32 31, ; 185
	i32 12, ; 186
	i32 50, ; 187
	i32 55, ; 188
	i32 267, ; 189
	i32 35, ; 190
	i32 178, ; 191
	i32 297, ; 192
	i32 285, ; 193
	i32 354, ; 194
	i32 220, ; 195
	i32 34, ; 196
	i32 57, ; 197
	i32 350, ; 198
	i32 180, ; 199
	i32 254, ; 200
	i32 172, ; 201
	i32 205, ; 202
	i32 17, ; 203
	i32 288, ; 204
	i32 384, ; 205
	i32 163, ; 206
	i32 337, ; 207
	i32 310, ; 208
	i32 253, ; 209
	i32 184, ; 210
	i32 350, ; 211
	i32 331, ; 212
	i32 353, ; 213
	i32 280, ; 214
	i32 316, ; 215
	i32 152, ; 216
	i32 276, ; 217
	i32 261, ; 218
	i32 314, ; 219
	i32 222, ; 220
	i32 345, ; 221
	i32 208, ; 222
	i32 28, ; 223
	i32 51, ; 224
	i32 312, ; 225
	i32 281, ; 226
	i32 5, ; 227
	i32 296, ; 228
	i32 271, ; 229
	i32 275, ; 230
	i32 227, ; 231
	i32 292, ; 232
	i32 219, ; 233
	i32 238, ; 234
	i32 361, ; 235
	i32 348, ; 236
	i32 84, ; 237
	i32 383, ; 238
	i32 280, ; 239
	i32 60, ; 240
	i32 388, ; 241
	i32 111, ; 242
	i32 332, ; 243
	i32 376, ; 244
	i32 56, ; 245
	i32 326, ; 246
	i32 267, ; 247
	i32 98, ; 248
	i32 209, ; 249
	i32 193, ; 250
	i32 19, ; 251
	i32 231, ; 252
	i32 110, ; 253
	i32 100, ; 254
	i32 101, ; 255
	i32 405, ; 256
	i32 294, ; 257
	i32 366, ; 258
	i32 103, ; 259
	i32 284, ; 260
	i32 70, ; 261
	i32 393, ; 262
	i32 37, ; 263
	i32 31, ; 264
	i32 102, ; 265
	i32 72, ; 266
	i32 300, ; 267
	i32 9, ; 268
	i32 122, ; 269
	i32 45, ; 270
	i32 221, ; 271
	i32 188, ; 272
	i32 9, ; 273
	i32 42, ; 274
	i32 4, ; 275
	i32 268, ; 276
	i32 304, ; 277
	i32 362, ; 278
	i32 181, ; 279
	i32 299, ; 280
	i32 30, ; 281
	i32 137, ; 282
	i32 91, ; 283
	i32 92, ; 284
	i32 319, ; 285
	i32 206, ; 286
	i32 48, ; 287
	i32 140, ; 288
	i32 111, ; 289
	i32 139, ; 290
	i32 237, ; 291
	i32 208, ; 292
	i32 114, ; 293
	i32 285, ; 294
	i32 156, ; 295
	i32 406, ; 296
	i32 75, ; 297
	i32 78, ; 298
	i32 257, ; 299
	i32 36, ; 300
	i32 279, ; 301
	i32 190, ; 302
	i32 349, ; 303
	i32 393, ; 304
	i32 241, ; 305
	i32 234, ; 306
	i32 63, ; 307
	i32 137, ; 308
	i32 15, ; 309
	i32 372, ; 310
	i32 115, ; 311
	i32 273, ; 312
	i32 282, ; 313
	i32 376, ; 314
	i32 229, ; 315
	i32 47, ; 316
	i32 69, ; 317
	i32 79, ; 318
	i32 125, ; 319
	i32 93, ; 320
	i32 120, ; 321
	i32 289, ; 322
	i32 26, ; 323
	i32 334, ; 324
	i32 250, ; 325
	i32 96, ; 326
	i32 27, ; 327
	i32 225, ; 328
	i32 317, ; 329
	i32 295, ; 330
	i32 148, ; 331
	i32 168, ; 332
	i32 332, ; 333
	i32 4, ; 334
	i32 97, ; 335
	i32 32, ; 336
	i32 92, ; 337
	i32 272, ; 338
	i32 182, ; 339
	i32 394, ; 340
	i32 21, ; 341
	i32 40, ; 342
	i32 169, ; 343
	i32 311, ; 344
	i32 364, ; 345
	i32 243, ; 346
	i32 337, ; 347
	i32 303, ; 348
	i32 257, ; 349
	i32 288, ; 350
	i32 282, ; 351
	i32 262, ; 352
	i32 2, ; 353
	i32 133, ; 354
	i32 110, ; 355
	i32 374, ; 356
	i32 408, ; 357
	i32 183, ; 358
	i32 349, ; 359
	i32 323, ; 360
	i32 212, ; 361
	i32 390, ; 362
	i32 320, ; 363
	i32 57, ; 364
	i32 373, ; 365
	i32 94, ; 366
	i32 302, ; 367
	i32 38, ; 368
	i32 403, ; 369
	i32 223, ; 370
	i32 408, ; 371
	i32 25, ; 372
	i32 93, ; 373
	i32 88, ; 374
	i32 98, ; 375
	i32 10, ; 376
	i32 209, ; 377
	i32 396, ; 378
	i32 86, ; 379
	i32 356, ; 380
	i32 331, ; 381
	i32 99, ; 382
	i32 386, ; 383
	i32 269, ; 384
	i32 174, ; 385
	i32 363, ; 386
	i32 289, ; 387
	i32 214, ; 388
	i32 191, ; 389
	i32 385, ; 390
	i32 299, ; 391
	i32 7, ; 392
	i32 254, ; 393
	i32 294, ; 394
	i32 211, ; 395
	i32 87, ; 396
	i32 176, ; 397
	i32 249, ; 398
	i32 153, ; 399
	i32 298, ; 400
	i32 32, ; 401
	i32 365, ; 402
	i32 115, ; 403
	i32 202, ; 404
	i32 206, ; 405
	i32 81, ; 406
	i32 192, ; 407
	i32 342, ; 408
	i32 370, ; 409
	i32 20, ; 410
	i32 366, ; 411
	i32 11, ; 412
	i32 161, ; 413
	i32 3, ; 414
	i32 197, ; 415
	i32 306, ; 416
	i32 186, ; 417
	i32 183, ; 418
	i32 83, ; 419
	i32 293, ; 420
	i32 63, ; 421
	i32 185, ; 422
	i32 308, ; 423
	i32 276, ; 424
	i32 142, ; 425
	i32 399, ; 426
	i32 392, ; 427
	i32 354, ; 428
	i32 258, ; 429
	i32 156, ; 430
	i32 40, ; 431
	i32 116, ; 432
	i32 175, ; 433
	i32 213, ; 434
	i32 302, ; 435
	i32 265, ; 436
	i32 405, ; 437
	i32 130, ; 438
	i32 361, ; 439
	i32 74, ; 440
	i32 65, ; 441
	i32 312, ; 442
	i32 171, ; 443
	i32 328, ; 444
	i32 217, ; 445
	i32 142, ; 446
	i32 388, ; 447
	i32 105, ; 448
	i32 150, ; 449
	i32 192, ; 450
	i32 69, ; 451
	i32 155, ; 452
	i32 189, ; 453
	i32 174, ; 454
	i32 120, ; 455
	i32 126, ; 456
	i32 343, ; 457
	i32 307, ; 458
	i32 151, ; 459
	i32 240, ; 460
	i32 407, ; 461
	i32 140, ; 462
	i32 227, ; 463
	i32 304, ; 464
	i32 20, ; 465
	i32 14, ; 466
	i32 134, ; 467
	i32 387, ; 468
	i32 74, ; 469
	i32 58, ; 470
	i32 230, ; 471
	i32 344, ; 472
	i32 166, ; 473
	i32 167, ; 474
	i32 195, ; 475
	i32 15, ; 476
	i32 73, ; 477
	i32 6, ; 478
	i32 375, ; 479
	i32 23, ; 480
	i32 355, ; 481
	i32 252, ; 482
	i32 211, ; 483
	i32 90, ; 484
	i32 330, ; 485
	i32 305, ; 486
	i32 1, ; 487
	i32 135, ; 488
	i32 364, ; 489
	i32 360, ; 490
	i32 253, ; 491
	i32 275, ; 492
	i32 133, ; 493
	i32 68, ; 494
	i32 145, ; 495
	i32 397, ; 496
	i32 314, ; 497
	i32 293, ; 498
	i32 244, ; 499
	i32 184, ; 500
	i32 87, ; 501
	i32 95, ; 502
	i32 234, ; 503
	i32 239, ; 504
	i32 309, ; 505
	i32 30, ; 506
	i32 44, ; 507
	i32 248, ; 508
	i32 189, ; 509
	i32 389, ; 510
	i32 330, ; 511
	i32 213, ; 512
	i32 108, ; 513
	i32 157, ; 514
	i32 34, ; 515
	i32 22, ; 516
	i32 113, ; 517
	i32 56, ; 518
	i32 273, ; 519
	i32 340, ; 520
	i32 400, ; 521
	i32 143, ; 522
	i32 117, ; 523
	i32 119, ; 524
	i32 109, ; 525
	i32 336, ; 526
	i32 215, ; 527
	i32 138, ; 528
	i32 221, ; 529
	i32 384, ; 530
	i32 53, ; 531
	i32 391, ; 532
	i32 104, ; 533
	i32 315, ; 534
	i32 210, ; 535
	i32 392, ; 536
	i32 196, ; 537
	i32 197, ; 538
	i32 132, ; 539
	i32 287, ; 540
	i32 278, ; 541
	i32 266, ; 542
	i32 374, ; 543
	i32 321, ; 544
	i32 244, ; 545
	i32 199, ; 546
	i32 158, ; 547
	i32 300, ; 548
	i32 231, ; 549
	i32 162, ; 550
	i32 131, ; 551
	i32 266, ; 552
	i32 378, ; 553
	i32 160, ; 554
	i32 313, ; 555
	i32 255, ; 556
	i32 139, ; 557
	i32 278, ; 558
	i32 274, ; 559
	i32 168, ; 560
	i32 198, ; 561
	i32 216, ; 562
	i32 283, ; 563
	i32 39, ; 564
	i32 242, ; 565
	i32 80, ; 566
	i32 345, ; 567
	i32 55, ; 568
	i32 36, ; 569
	i32 96, ; 570
	i32 165, ; 571
	i32 171, ; 572
	i32 279, ; 573
	i32 379, ; 574
	i32 81, ; 575
	i32 218, ; 576
	i32 202, ; 577
	i32 97, ; 578
	i32 29, ; 579
	i32 158, ; 580
	i32 400, ; 581
	i32 342, ; 582
	i32 18, ; 583
	i32 126, ; 584
	i32 187, ; 585
	i32 118, ; 586
	i32 238, ; 587
	i32 372, ; 588
	i32 269, ; 589
	i32 251, ; 590
	i32 271, ; 591
	i32 179, ; 592
	i32 346, ; 593
	i32 164, ; 594
	i32 246, ; 595
	i32 409, ; 596
	i32 395, ; 597
	i32 375, ; 598
	i32 268, ; 599
	i32 259, ; 600
	i32 169, ; 601
	i32 16, ; 602
	i32 143, ; 603
	i32 306, ; 604
	i32 191, ; 605
	i32 124, ; 606
	i32 117, ; 607
	i32 37, ; 608
	i32 114, ; 609
	i32 46, ; 610
	i32 203, ; 611
	i32 190, ; 612
	i32 141, ; 613
	i32 116, ; 614
	i32 33, ; 615
	i32 172, ; 616
	i32 204, ; 617
	i32 94, ; 618
	i32 341, ; 619
	i32 52, ; 620
	i32 260, ; 621
	i32 336, ; 622
	i32 128, ; 623
	i32 152, ; 624
	i32 24, ; 625
	i32 333, ; 626
	i32 160, ; 627
	i32 237, ; 628
	i32 147, ; 629
	i32 103, ; 630
	i32 371, ; 631
	i32 88, ; 632
	i32 0, ; 633
	i32 225, ; 634
	i32 59, ; 635
	i32 141, ; 636
	i32 173, ; 637
	i32 99, ; 638
	i32 352, ; 639
	i32 5, ; 640
	i32 13, ; 641
	i32 121, ; 642
	i32 383, ; 643
	i32 134, ; 644
	i32 27, ; 645
	i32 301, ; 646
	i32 71, ; 647
	i32 235, ; 648
	i32 24, ; 649
	i32 377, ; 650
	i32 223, ; 651
	i32 264, ; 652
	i32 261, ; 653
	i32 351, ; 654
	i32 318, ; 655
	i32 136, ; 656
	i32 216, ; 657
	i32 232, ; 658
	i32 167, ; 659
	i32 265, ; 660
	i32 297, ; 661
	i32 100, ; 662
	i32 122, ; 663
	i32 236, ; 664
	i32 340, ; 665
	i32 176, ; 666
	i32 177, ; 667
	i32 162, ; 668
	i32 166, ; 669
	i32 239, ; 670
	i32 38, ; 671
	i32 346, ; 672
	i32 333, ; 673
	i32 194, ; 674
	i32 399, ; 675
	i32 305, ; 676
	i32 17, ; 677
	i32 170, ; 678
	i32 318, ; 679
	i32 341, ; 680
	i32 343, ; 681
	i32 317, ; 682
	i32 136, ; 683
	i32 149, ; 684
	i32 228, ; 685
	i32 154, ; 686
	i32 129, ; 687
	i32 363, ; 688
	i32 19, ; 689
	i32 64, ; 690
	i32 329, ; 691
	i32 146, ; 692
	i32 46, ; 693
	i32 339, ; 694
	i32 325, ; 695
	i32 214, ; 696
	i32 78, ; 697
	i32 359, ; 698
	i32 390, ; 699
	i32 60, ; 700
	i32 105, ; 701
	i32 263, ; 702
	i32 378, ; 703
	i32 218, ; 704
	i32 402, ; 705
	i32 48, ; 706
	i32 249, ; 707
	i32 358, ; 708
	i32 322, ; 709
	i32 260, ; 710
	i32 14, ; 711
	i32 175, ; 712
	i32 67, ; 713
	i32 401, ; 714
	i32 170, ; 715
	i32 380, ; 716
	i32 406, ; 717
	i32 347, ; 718
	i32 224, ; 719
	i32 228, ; 720
	i32 335, ; 721
	i32 387, ; 722
	i32 327, ; 723
	i32 362, ; 724
	i32 77, ; 725
	i32 358, ; 726
	i32 233, ; 727
	i32 389, ; 728
	i32 107, ; 729
	i32 217, ; 730
	i32 259, ; 731
	i32 66, ; 732
	i32 62, ; 733
	i32 381, ; 734
	i32 200, ; 735
	i32 159, ; 736
	i32 185, ; 737
	i32 226, ; 738
	i32 10, ; 739
	i32 194, ; 740
	i32 11, ; 741
	i32 201, ; 742
	i32 360, ; 743
	i32 77, ; 744
	i32 125, ; 745
	i32 82, ; 746
	i32 395, ; 747
	i32 328, ; 748
	i32 178, ; 749
	i32 65, ; 750
	i32 106, ; 751
	i32 64, ; 752
	i32 127, ; 753
	i32 121, ; 754
	i32 365, ; 755
	i32 76, ; 756
	i32 274, ; 757
	i32 264, ; 758
	i32 326, ; 759
	i32 8, ; 760
	i32 232, ; 761
	i32 2, ; 762
	i32 204, ; 763
	i32 43, ; 764
	i32 277, ; 765
	i32 155, ; 766
	i32 127, ; 767
	i32 262, ; 768
	i32 23, ; 769
	i32 356, ; 770
	i32 132, ; 771
	i32 220, ; 772
	i32 251, ; 773
	i32 207, ; 774
	i32 321, ; 775
	i32 303, ; 776
	i32 28, ; 777
	i32 219, ; 778
	i32 61, ; 779
	i32 339, ; 780
	i32 196, ; 781
	i32 89, ; 782
	i32 86, ; 783
	i32 147, ; 784
	i32 404, ; 785
	i32 198, ; 786
	i32 35, ; 787
	i32 85, ; 788
	i32 240, ; 789
	i32 316, ; 790
	i32 368, ; 791
	i32 311, ; 792
	i32 177, ; 793
	i32 49, ; 794
	i32 6, ; 795
	i32 193, ; 796
	i32 373, ; 797
	i32 89, ; 798
	i32 323, ; 799
	i32 21, ; 800
	i32 161, ; 801
	i32 95, ; 802
	i32 49, ; 803
	i32 112, ; 804
	i32 256, ; 805
	i32 407, ; 806
	i32 129, ; 807
	i32 75, ; 808
	i32 200, ; 809
	i32 233, ; 810
	i32 255, ; 811
	i32 7, ; 812
	i32 347, ; 813
	i32 379, ; 814
	i32 0, ; 815
	i32 195, ; 816
	i32 109, ; 817
	i32 256, ; 818
	i32 242 ; 819
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
