; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [410 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [820 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 239
	i64 44359872337921045, ; 1: System.ServiceModel.NetTcp => 0x9d9911a0fbc415 => 208
	i64 59393587543438216, ; 2: tr/System.ServiceModel.NetNamedPipe.resources.dll => 0xd3022737767388 => 377
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 188
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 170
	i64 131669012237370309, ; 5: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 198
	i64 162552888780219690, ; 6: ja/System.ServiceModel.NetNamedPipe.resources.dll => 0x24180fdb8f5652a => 372
	i64 176210343261064415, ; 7: System.ServiceModel.NetNamedPipe.dll => 0x272065fa3d34cdf => 207
	i64 189862278688067135, ; 8: es/System.ServiceModel.Primitives.resources.dll => 0x2a286bc8d72ce3f => 395
	i64 196720943101637631, ; 9: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 57
	i64 210515253464952879, ; 10: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 226
	i64 229794953483747371, ; 11: System.ValueTuple.dll => 0x330654aed93802b => 150
	i64 232391251801502327, ; 12: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 267
	i64 233856603507324090, ; 13: System.ServiceModel.Federation.dll => 0x33ed357846ef4ba => 204
	i64 295915112840604065, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 270
	i64 316157742385208084, ; 15: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 233
	i64 329079579674636315, ; 16: pl\System.ServiceModel.Federation.resources => 0x49120225957701b => 335
	i64 350667413455104241, ; 17: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 131
	i64 354178770117062970, ; 18: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0x4ea4bb703cff13a => 187
	i64 368310478436231069, ; 19: tr\System.ServiceModel.NetFramingBase.resources => 0x51c806dc23ee79d => 364
	i64 387140843282343205, ; 20: ko/System.ServiceModel.Federation.resources.dll => 0x55f668bb9e3a525 => 334
	i64 396868157601372792, ; 21: Microsoft.VisualStudio.DesignTools.TapContract => 0x581f57c947e5a78 => 408
	i64 413889318740378791, ; 22: ja/System.ServiceModel.NetFramingBase.resources.dll => 0x5be6e247bd944a7 => 359
	i64 422779754995088667, ; 23: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 55
	i64 435118502366263740, ; 24: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 269
	i64 439161221770931646, ; 25: System.ServiceModel.Security => 0x61836cdeec86dbe => 210
	i64 519948357370865659, ; 26: ru/System.ServiceModel.Primitives.resources.dll => 0x7373a46b6a367fb => 402
	i64 535107122908063503, ; 27: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 185
	i64 545109961164950392, ; 28: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 301
	i64 560278790331054453, ; 29: System.Reflection.Primitives => 0x7c6829760de3975 => 94
	i64 571911706346497508, ; 30: zh-Hant\System.ServiceModel.Primitives.resources => 0x7efd6aab3aba5e4 => 405
	i64 634308326490598313, ; 31: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 252
	i64 649145001856603771, ; 32: System.Security.SecureString => 0x90239f09b62167b => 128
	i64 668723562677762733, ; 33: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 176
	i64 703889276121812442, ; 34: System.ServiceModel.Duplex.dll => 0x9c4b79138728dda => 203
	i64 750875890346172408, ; 35: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 144
	i64 798450721097591769, ; 36: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 227
	i64 799765834175365804, ; 37: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 38: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 304
	i64 872800313462103108, ; 39: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 238
	i64 895210737996778430, ; 40: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 253
	i64 940822596282819491, ; 41: System.Transactions => 0xd0e792aa81923a3 => 149
	i64 960778385402502048, ; 42: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 103
	i64 1010599046655515943, ; 43: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 94
	i64 1049216803855315730, ; 44: zh-Hant/System.ServiceModel.Federation.resources.dll => 0xe8f911fc62ab312 => 340
	i64 1106195547578177592, ; 45: ja\System.ServiceModel.NetNamedPipe.resources => 0xf59fefd59841838 => 372
	i64 1120440138749646132, ; 46: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 282
	i64 1121665720830085036, ; 47: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 312
	i64 1166987153734377595, ; 48: ru/System.ServiceModel.NetTcp.resources.dll => 0x1031f8a223c8207b => 389
	i64 1268860745194512059, ; 49: System.Drawing.dll => 0x119be62002c19ebb => 35
	i64 1301626418029409250, ; 50: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 27
	i64 1315114680217950157, ; 51: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 222
	i64 1320654197929453943, ; 52: Microsoft.IdentityModel.Tokens.Saml => 0x1253e7fef2b6a977 => 192
	i64 1350488117176064860, ; 53: ja\System.ServiceModel.NetTcp.resources => 0x12bde5c991aa5b5c => 385
	i64 1369545283391376210, ; 54: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 260
	i64 1404195534211153682, ; 55: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 49
	i64 1425944114962822056, ; 56: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 114
	i64 1426556759400165484, ; 57: zh-Hans/System.ServiceModel.Http.resources.dll => 0x13cc25d07ffab06c => 352
	i64 1476839205573959279, ; 58: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 69
	i64 1486715745332614827, ; 59: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 195
	i64 1492954217099365037, ; 60: System.Net.HttpListener => 0x14b809f350210aad => 64
	i64 1513467482682125403, ; 61: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 169
	i64 1537168428375924959, ; 62: System.Threading.Thread.dll => 0x15551e8a954ae0df => 144
	i64 1556147632182429976, ; 63: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 310
	i64 1576750169145655260, ; 64: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 281
	i64 1617235198659916586, ; 65: ko\System.ServiceModel.Primitives.resources => 0x167192d83e61f32a => 399
	i64 1624659445732251991, ; 66: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 221
	i64 1628611045998245443, ; 67: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 256
	i64 1636321030536304333, ; 68: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 246
	i64 1651782184287836205, ; 69: System.Globalization.Calendars => 0x16ec4f2524cb982d => 39
	i64 1659332977923810219, ; 70: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 88
	i64 1680559570755486426, ; 71: tr\System.ServiceModel.Http.resources => 0x17528c068ec382da => 351
	i64 1682513316613008342, ; 72: System.Net.dll => 0x17597cf276952bd6 => 80
	i64 1735388228521408345, ; 73: System.Net.Mail.dll => 0x181556663c69b759 => 65
	i64 1743969030606105336, ; 74: System.Memory.dll => 0x1833d297e88f2af8 => 61
	i64 1764797081625604034, ; 75: fr\System.ServiceModel.Federation.resources => 0x187dd1986ef0afc2 => 331
	i64 1767386781656293639, ; 76: System.Private.Uri.dll => 0x188704e9f5582107 => 85
	i64 1795316252682057001, ; 77: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 220
	i64 1813473727062752547, ; 78: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0x192ac0bf1f143d23 => 379
	i64 1825687700144851180, ; 79: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 105
	i64 1835311033149317475, ; 80: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 300
	i64 1836611346387731153, ; 81: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 267
	i64 1840441330330567270, ; 82: zh-Hant/System.ServiceModel.Primitives.resources.dll => 0x198a8fa38c4d0266 => 405
	i64 1854145951182283680, ; 83: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 101
	i64 1875417405349196092, ; 84: System.Drawing.Primitives => 0x1a06d2319b6c713c => 34
	i64 1875917498431009007, ; 85: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 217
	i64 1881198190668717030, ; 86: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 322
	i64 1897575647115118287, ; 87: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 269
	i64 1920760634179481754, ; 88: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 196
	i64 1959996714666907089, ; 89: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 322
	i64 1972385128188460614, ; 90: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 118
	i64 1980725144359361681, ; 91: ru\System.ServiceModel.Federation.resources => 0x1b7cf30643395c91 => 337
	i64 1981742497975770890, ; 92: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 254
	i64 1983698669889758782, ; 93: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 296
	i64 2019660174692588140, ; 94: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 314
	i64 2040001226662520565, ; 95: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 141
	i64 2059469483644638515, ; 96: ru\System.ServiceModel.NetTcp.resources => 0x1c94b49576655533 => 389
	i64 2062890601515140263, ; 97: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 140
	i64 2064708342624596306, ; 98: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 290
	i64 2080945842184875448, ; 99: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 52
	i64 2102659300918482391, ; 100: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 34
	i64 2106033277907880740, ; 101: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 140
	i64 2165310824878145998, ; 102: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 214
	i64 2165725771938924357, ; 103: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 224
	i64 2179947168683658163, ; 104: de\System.ServiceModel.NetNamedPipe.resources => 0x1e40ba666a820bb3 => 368
	i64 2187820665329845162, ; 105: it\System.ServiceModel.NetTcp.resources => 0x1e5cb34db53e83aa => 384
	i64 2200176636225660136, ; 106: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 184
	i64 2262844636196693701, ; 107: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 238
	i64 2284054589560053283, ; 108: ru\System.ServiceModel.Primitives.resources => 0x1fb2978c3a53de23 => 402
	i64 2287834202362508563, ; 109: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 110: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 111: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 318
	i64 2304837677853103545, ; 112: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 266
	i64 2309964453332250390, ; 113: de\System.ServiceModel.NetFramingBase.resources => 0x200ea46e7ca5ef16 => 355
	i64 2315304989185124968, ; 114: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 50
	i64 2329709569556905518, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 249
	i64 2334065076924874282, ; 116: pl\System.ServiceModel.Http.resources => 0x206443d230c07e2a => 348
	i64 2335503487726329082, ; 117: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 135
	i64 2337758774805907496, ; 118: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 100
	i64 2470498323731680442, ; 119: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 231
	i64 2479423007379663237, ; 120: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 276
	i64 2497223385847772520, ; 121: System.Runtime => 0x22a7eb7046413568 => 115
	i64 2547086958574651984, ; 122: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 215
	i64 2592350477072141967, ; 123: System.Xml.dll => 0x23f9e10627330e8f => 162
	i64 2602673633151553063, ; 124: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 321
	i64 2612152650457191105, ; 125: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 191
	i64 2624866290265602282, ; 126: mscorlib.dll => 0x246d65fbde2db8ea => 165
	i64 2632269733008246987, ; 127: System.Net.NameResolution => 0x2487b36034f808cb => 66
	i64 2656907746661064104, ; 128: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 177
	i64 2662981627730767622, ; 129: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 296
	i64 2700519926408562886, ; 130: zh-Hant/System.ServiceModel.NetNamedPipe.resources.dll => 0x257a2c90aa7248c6 => 379
	i64 2706075432581334785, ; 131: System.Net.WebSockets => 0x258de944be6c0701 => 79
	i64 2760160909669527043, ; 132: ja/System.ServiceModel.NetTcp.resources.dll => 0x264e0fb92fc56e03 => 385
	i64 2783046991838674048, ; 133: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 100
	i64 2787234703088983483, ; 134: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 271
	i64 2815524396660695947, ; 135: System.Security.AccessControl => 0x2712c0857f68238b => 116
	i64 2895129759130297543, ; 136: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 301
	i64 2923871038697555247, ; 137: Jsr305Binding => 0x2893ad37e69ec52f => 283
	i64 3017136373564924869, ; 138: System.Net.WebProxy => 0x29df058bd93f63c5 => 77
	i64 3017704767998173186, ; 139: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 282
	i64 3062772059105072826, ; 140: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0x2a8126f5e2f316ba => 407
	i64 3075974917408215435, ; 141: zh-Hant\System.ServiceModel.Http.resources => 0x2ab00ee3e220d18b => 353
	i64 3106100055920985814, ; 142: it/System.ServiceModel.NetFramingBase.resources.dll => 0x2b1b158b45fdc6d6 => 358
	i64 3106852385031680087, ; 143: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 113
	i64 3110390492489056344, ; 144: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 120
	i64 3135773902340015556, ; 145: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 47
	i64 3227901148727174408, ; 146: pl/System.ServiceModel.Primitives.resources.dll => 0x2ccbcefe1bf56508 => 400
	i64 3281594302220646930, ; 147: System.Security.Principal => 0x2d8a90a198ceba12 => 127
	i64 3283174272583324799, ; 148: de/System.ServiceModel.NetNamedPipe.resources.dll => 0x2d902d9b1d07d47f => 368
	i64 3289520064315143713, ; 149: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 247
	i64 3303437397778967116, ; 150: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 218
	i64 3311221304742556517, ; 151: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 81
	i64 3325875462027654285, ; 152: System.Runtime.Numerics => 0x2e27e21c8958b48d => 109
	i64 3328758490895923850, ; 153: ja\System.ServiceModel.Federation.resources => 0x2e32203600eaba8a => 333
	i64 3328853167529574890, ; 154: System.Net.Sockets.dll => 0x2e327651a008c1ea => 74
	i64 3344514922410554693, ; 155: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 293
	i64 3429672777697402584, ; 156: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 198
	i64 3437845325506641314, ; 157: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 52
	i64 3493805808809882663, ; 158: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 273
	i64 3494946837667399002, ; 159: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 174
	i64 3508450208084372758, ; 160: System.Net.Ping => 0x30b084e02d03ad16 => 68
	i64 3522470458906976663, ; 161: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 272
	i64 3531994851595924923, ; 162: System.Numerics => 0x31042a9aade235bb => 82
	i64 3551103847008531295, ; 163: System.Private.CoreLib.dll => 0x31480e226177735f => 171
	i64 3552918255982455594, ; 164: ko\System.ServiceModel.NetTcp.resources => 0x314e805463d5ab2a => 386
	i64 3561390990477819316, ; 165: pl\System.ServiceModel.NetFramingBase.resources => 0x316c9a3c9db4fdb4 => 361
	i64 3567343442040498961, ; 166: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 316
	i64 3571415421602489686, ; 167: System.Runtime.dll => 0x319037675df7e556 => 115
	i64 3638003163729360188, ; 168: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 175
	i64 3647754201059316852, ; 169: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 155
	i64 3655542548057982301, ; 170: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 174
	i64 3656732466067224761, ; 171: Microsoft.IdentityModel.Protocols.WsTrust => 0x32bf52cdbe9338b9 => 190
	i64 3659371656528649588, ; 172: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 212
	i64 3661347406458881470, ; 173: pl/System.ServiceModel.Federation.resources.dll => 0x32cfb811494785be => 335
	i64 3716579019761409177, ; 174: netstandard.dll => 0x3393f0ed5c8c5c99 => 166
	i64 3724788330609220757, ; 175: it\System.ServiceModel.NetNamedPipe.resources => 0x33b11b407d7b9c95 => 371
	i64 3727469159507183293, ; 176: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 265
	i64 3772598417116884899, ; 177: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 239
	i64 3847323185292082162, ; 178: fr\System.ServiceModel.Http.resources => 0x3564700d93757bf2 => 344
	i64 3869221888984012293, ; 179: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 182
	i64 3869649043256705283, ; 180: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 31
	i64 3890352374528606784, ; 181: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 196
	i64 3919223565570527920, ; 182: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 121
	i64 3933965368022646939, ; 183: System.Net.Requests => 0x369840a8bfadc09b => 71
	i64 3937697360741473042, ; 184: zh-Hans/System.ServiceModel.Federation.resources.dll => 0x36a582e303fd1b12 => 339
	i64 3966267475168208030, ; 185: System.Memory => 0x370b03412596249e => 61
	i64 4006972109285359177, ; 186: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 160
	i64 4009997192427317104, ; 187: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 112
	i64 4073500526318903918, ; 188: System.Private.Xml.dll => 0x3887fb25779ae26e => 87
	i64 4073631083018132676, ; 189: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 194
	i64 4119158804516806643, ; 190: ko/System.ServiceModel.Http.resources.dll => 0x392a311bc4a59ff3 => 347
	i64 4120493066591692148, ; 191: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 327
	i64 4148881117810174540, ; 192: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 104
	i64 4154383907710350974, ; 193: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 194: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 145
	i64 4168469861834746866, ; 195: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 117
	i64 4187479170553454871, ; 196: System.Linq.Expressions => 0x3a1cea1e912fa117 => 57
	i64 4201423742386704971, ; 197: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 233
	i64 4205801962323029395, ; 198: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4206559769820211150, ; 199: fr/System.ServiceModel.Primitives.resources.dll => 0x3a60b3d2c69527ce => 396
	i64 4234650624138384307, ; 200: tr\System.ServiceModel.Federation.resources => 0x3ac4804e77a793b3 => 338
	i64 4235503420553921860, ; 201: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 51
	i64 4282138915307457788, ; 202: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 91
	i64 4321177614414309855, ; 203: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x3bf7e8254e88e9df => 407
	i64 4334223412680886043, ; 204: ru/System.ServiceModel.Http.resources.dll => 0x3c26413aea06871b => 350
	i64 4351295671783217625, ; 205: cs\System.ServiceModel.Http.resources => 0x3c62e85bfd5559d9 => 341
	i64 4356591372459378815, ; 206: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 324
	i64 4359441015448386636, ; 207: it/System.ServiceModel.NetNamedPipe.resources.dll => 0x3c7fd8819911bc4c => 371
	i64 4373617458794931033, ; 208: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 54
	i64 4388777479429739993, ; 209: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x3ce811dd63a4d5d9 => 406
	i64 4397634830160618470, ; 210: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 128
	i64 4428882291034034432, ; 211: ja/System.ServiceModel.Primitives.resources.dll => 0x3d768cfa7d1a1100 => 398
	i64 4463560197053177287, ; 212: pl/System.ServiceModel.NetTcp.resources.dll => 0x3df1c059aaed5dc7 => 387
	i64 4477672992252076438, ; 213: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 151
	i64 4484706122338676047, ; 214: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 40
	i64 4533124835995628778, ; 215: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 91
	i64 4560453051006720631, ; 216: it\System.ServiceModel.NetFramingBase.resources => 0x3f49fbe3381a1a77 => 358
	i64 4616101634287018717, ; 217: pt-BR\System.ServiceModel.Primitives.resources => 0x400faffaaec722dd => 401
	i64 4636684751163556186, ; 218: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 277
	i64 4657212095206026001, ; 219: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 181
	i64 4672453897036726049, ; 220: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 49
	i64 4679594760078841447, ; 221: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 294
	i64 4716677666592453464, ; 222: System.Xml.XmlSerializer => 0x417501590542f358 => 161
	i64 4743821336939966868, ; 223: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 224: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 251
	i64 4794310189461587505, ; 225: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 215
	i64 4795410492532947900, ; 226: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 272
	i64 4809057822547766521, ; 227: System.Drawing => 0x42bd349c3145ecf9 => 35
	i64 4814660307502931973, ; 228: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 66
	i64 4853321196694829351, ; 229: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 108
	i64 5055365687667823624, ; 230: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 216
	i64 5071398478759053283, ; 231: ja\System.ServiceModel.Primitives.resources => 0x46613a0c08e3c7e3 => 398
	i64 5081566143765835342, ; 232: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 98
	i64 5096255990897624623, ; 233: it/System.ServiceModel.Federation.resources.dll => 0x46b989d295e8c62f => 332
	i64 5099468265966638712, ; 234: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 98
	i64 5103417709280584325, ; 235: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5178715688604046882, ; 236: ru\System.ServiceModel.Http.resources => 0x47de7e7b13fc9622 => 350
	i64 5182934613077526976, ; 237: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 238: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 258
	i64 5244375036463807528, ; 239: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 240: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 127
	i64 5278787618751394462, ; 241: System.Net.WebClient.dll => 0x4942055efc68329e => 75
	i64 5280980186044710147, ; 242: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 250
	i64 5290786973231294105, ; 243: System.Runtime.Loader => 0x496ca6b869b72699 => 108
	i64 5300219786275769134, ; 244: fr/System.ServiceModel.NetTcp.resources.dll => 0x498e29d05876cb2e => 383
	i64 5375923372247632090, ; 245: ko/System.ServiceModel.NetFramingBase.resources.dll => 0x4a9b1dd2fe8a48da => 360
	i64 5376510917114486089, ; 246: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 276
	i64 5408338804355907810, ; 247: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 274
	i64 5423376490970181369, ; 248: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 105
	i64 5440320908473006344, ; 249: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5445845718793242646, ; 250: de\System.ServiceModel.Primitives.resources => 0x4b9387d3f240c816 => 394
	i64 5446034149219586269, ; 251: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 252: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 229
	i64 5457765010617926378, ; 253: System.Xml.Serialization => 0x4bbde05c557002ea => 156
	i64 5471532531798518949, ; 254: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 320
	i64 5507995362134886206, ; 255: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 256: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 323
	i64 5527431512186326818, ; 257: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 48
	i64 5570799893513421663, ; 258: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 42
	i64 5573260873512690141, ; 259: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 125
	i64 5574231584441077149, ; 260: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 219
	i64 5591791169662171124, ; 261: System.Linq.Parallel => 0x4d9a087135e137f4 => 58
	i64 5650097808083101034, ; 262: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 118
	i64 5650370239627215726, ; 263: System.ServiceModel.Security.dll => 0x4e6a25cbc66b436e => 210
	i64 5692067934154308417, ; 264: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 279
	i64 5724799082821825042, ; 265: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 242
	i64 5757522595884336624, ; 266: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 228
	i64 5783556987928984683, ; 267: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5816864004925684276, ; 268: fr\System.ServiceModel.Primitives.resources => 0x50b9a6fe5059fa34 => 396
	i64 5860375757134996729, ; 269: ru/System.ServiceModel.NetNamedPipe.resources.dll => 0x51543cb39657a4f9 => 376
	i64 5867185805380132584, ; 270: ko/System.ServiceModel.Primitives.resources.dll => 0x516c6e6780e59ee8 => 399
	i64 5896680224035167651, ; 271: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 248
	i64 5938631692456801490, ; 272: tr\System.ServiceModel.NetTcp.resources => 0x526a420f60c3b4d2 => 390
	i64 5952455131197516416, ; 273: cs\System.ServiceModel.Federation.resources => 0x529b5e67847aaa80 => 328
	i64 5959344983920014087, ; 274: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 268
	i64 5975693538080295492, ; 275: pt-BR\System.ServiceModel.NetTcp.resources => 0x52eded9cbfdf8a44 => 388
	i64 5979151488806146654, ; 276: System.Formats.Asn1 => 0x52fa3699a489d25e => 37
	i64 5984759512290286505, ; 277: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 123
	i64 6010974535988770325, ; 278: Microsoft.Extensions.Diagnostics.dll => 0x536b457e33877615 => 179
	i64 6068057819846744445, ; 279: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 317
	i64 6102788177522843259, ; 280: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 268
	i64 6184291411622536774, ; 281: fr\System.ServiceModel.NetTcp.resources => 0x55d30445e942a646 => 383
	i64 6200764641006662125, ; 282: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 317
	i64 6222399776351216807, ; 283: System.Text.Json.dll => 0x565a67a0ffe264a7 => 136
	i64 6251069312384999852, ; 284: System.Transactions.Local => 0x56c0426b870da1ac => 148
	i64 6278736998281604212, ; 285: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 84
	i64 6284145129771520194, ; 286: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 89
	i64 6288213823986309268, ; 287: ko\System.ServiceModel.NetFramingBase.resources => 0x5744392812679894 => 360
	i64 6319713645133255417, ; 288: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 252
	i64 6357457916754632952, ; 289: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 409
	i64 6367018942829578670, ; 290: ja/System.ServiceModel.Federation.resources.dll => 0x585c31fe9d8a49ae => 333
	i64 6401687960814735282, ; 291: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 249
	i64 6457407416161890188, ; 292: es/System.ServiceModel.Federation.resources.dll => 0x599d51d50a4d6f8c => 330
	i64 6478287442656530074, ; 293: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 305
	i64 6504860066809920875, ; 294: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 224
	i64 6506916921333231814, ; 295: ko\System.ServiceModel.Http.resources => 0x5a4d3676ff0bb0c6 => 347
	i64 6548213210057960872, ; 296: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 235
	i64 6557084851308642443, ; 297: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 280
	i64 6560151584539558821, ; 298: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 186
	i64 6589202984700901502, ; 299: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 285
	i64 6591971792923354531, ; 300: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 250
	i64 6617685658146568858, ; 301: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 132
	i64 6703725107163354527, ; 302: tr\System.ServiceModel.NetNamedPipe.resources => 0x5d086a779456d59f => 377
	i64 6713440830605852118, ; 303: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 95
	i64 6739853162153639747, ; 304: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 305: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 313
	i64 6750700927172492327, ; 306: it\System.ServiceModel.Http.resources => 0x5daf4eb9fd043c27 => 345
	i64 6772837112740759457, ; 307: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 104
	i64 6777482997383978746, ; 308: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 316
	i64 6786606130239981554, ; 309: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 32
	i64 6798329586179154312, ; 310: System.Windows => 0x5e5884bd523ca188 => 153
	i64 6814185388980153342, ; 311: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 157
	i64 6869993514317880518, ; 312: de/System.ServiceModel.Federation.resources.dll => 0x5f571eb3d6279cc6 => 329
	i64 6876862101832370452, ; 313: System.Xml.Linq => 0x5f6f85a57d108914 => 154
	i64 6894844156784520562, ; 314: System.Numerics.Vectors => 0x5faf683aead1ad72 => 81
	i64 6994714925497792253, ; 315: cs\System.ServiceModel.NetTcp.resources => 0x6112382a476b36fd => 380
	i64 7011053663211085209, ; 316: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 244
	i64 7041056731259377614, ; 317: pt-BR\System.ServiceModel.Federation.resources => 0x61b6dbcabe1697ce => 336
	i64 7060448593242414269, ; 318: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 202
	i64 7060896174307865760, ; 319: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 142
	i64 7083547580668757502, ; 320: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 86
	i64 7098780445870241465, ; 321: pt-BR/System.ServiceModel.NetNamedPipe.resources.dll => 0x6283ef345e95b6b9 => 375
	i64 7101497697220435230, ; 322: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 323: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 245
	i64 7105430439328552570, ; 324: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 201
	i64 7112547816752919026, ; 325: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 50
	i64 7192745174564810625, ; 326: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 214
	i64 7200517792190262741, ; 327: zh-Hant/System.ServiceModel.NetFramingBase.resources.dll => 0x63ed60c832616dd5 => 366
	i64 7220009545223068405, ; 328: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 320
	i64 7270811800166795866, ; 329: System.Linq => 0x64e71ccf51a90a5a => 60
	i64 7299370801165188114, ; 330: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 53
	i64 7316205155833392065, ; 331: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 332: System.Reflection => 0x65d67f295d0740ad => 96
	i64 7343975498128436721, ; 333: cs/System.ServiceModel.NetTcp.resources.dll => 0x65eb0ace351e2df1 => 380
	i64 7349431895026339542, ; 334: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 213
	i64 7350910574546538092, ; 335: ru\System.ServiceModel.NetNamedPipe.resources => 0x6603ae3883824e6c => 376
	i64 7377312882064240630, ; 336: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7411086746255647294, ; 337: zh-Hans/System.ServiceModel.NetFramingBase.resources.dll => 0x66d978214e2c623e => 365
	i64 7462724204265000896, ; 338: de/System.ServiceModel.Primitives.resources.dll => 0x6790ec1fe3eccfc0 => 394
	i64 7488575175965059935, ; 339: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 154
	i64 7489048572193775167, ; 340: System.ObjectModel => 0x67ee71ff6b419e3f => 83
	i64 7507338075031127501, ; 341: pl\System.ServiceModel.NetNamedPipe.resources => 0x682f6c3422fec5cd => 374
	i64 7592577537120840276, ; 342: System.Diagnostics.Process => 0x695e410af5b2aa54 => 28
	i64 7637303409920963731, ; 343: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 44
	i64 7654504624184590948, ; 344: System.Net.Http => 0x6a3a4366801b8264 => 63
	i64 7694700312542370399, ; 345: System.Net.Mail => 0x6ac9112a7e2cda5f => 65
	i64 7708790323521193081, ; 346: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 311
	i64 7714652370974252055, ; 347: System.Private.CoreLib => 0x6b0ff375198b9c17 => 171
	i64 7725404731275645577, ; 348: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 253
	i64 7735176074855944702, ; 349: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 350: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 288
	i64 7791074099216502080, ; 351: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 46
	i64 7820441508502274321, ; 352: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 353: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 221
	i64 7919757340696389605, ; 354: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 180
	i64 8025517457475554965, ; 355: WindowsBase => 0x6f605d9b4786ce95 => 164
	i64 8031450141206250471, ; 356: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 107
	i64 8046612836032419316, ; 357: ru/System.ServiceModel.NetFramingBase.resources.dll => 0x6fab4fbdd8cf95f4 => 363
	i64 8064050204834738623, ; 358: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 359: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 247
	i64 8085230611270010360, ; 360: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 62
	i64 8087206902342787202, ; 361: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 200
	i64 8103644804370223335, ; 362: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 363: System.Reflection.Extensions => 0x70995ab73cf916ec => 92
	i64 8161788945634753591, ; 364: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x71447fcd9444fc37 => 375
	i64 8167236081217502503, ; 365: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 167
	i64 8174477988419522883, ; 366: zh-Hans\System.ServiceModel.Http.resources => 0x7171946b93fed143 => 352
	i64 8185542183669246576, ; 367: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187568296582843689, ; 368: ru\System.ServiceModel.NetFramingBase.resources => 0x71a015fc74120d29 => 363
	i64 8187640529827139739, ; 369: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 292
	i64 8246048515196606205, ; 370: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 199
	i64 8248431922176115102, ; 371: ru/System.ServiceModel.Federation.resources.dll => 0x72785121934cc19e => 337
	i64 8264926008854159966, ; 372: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 28
	i64 8290740647658429042, ; 373: System.Runtime.Extensions => 0x730ea0b15c929a72 => 102
	i64 8318905602908530212, ; 374: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 375: System.Security.Cryptography => 0x7423997c6fd56140 => 125
	i64 8398329775253868912, ; 376: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 230
	i64 8400357532724379117, ; 377: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 262
	i64 8410671156615598628, ; 378: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 90
	i64 8415323088812168844, ; 379: zh-Hans/System.ServiceModel.NetNamedPipe.resources.dll => 0x74c93bc352cad68c => 378
	i64 8426919725312979251, ; 380: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 251
	i64 8493978365339866546, ; 381: pt-BR/System.ServiceModel.NetTcp.resources.dll => 0x75e0ac51fbef95b2 => 388
	i64 8518412311883997971, ; 382: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8542466152599865324, ; 383: it/System.ServiceModel.Http.resources.dll => 0x768cefb4b38347ec => 345
	i64 8563666267364444763, ; 384: System.Private.Uri => 0x76d841191140ca5b => 85
	i64 8598790081731763592, ; 385: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 241
	i64 8601935802264776013, ; 386: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 274
	i64 8614108721271900878, ; 387: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 315
	i64 8623059219396073920, ; 388: System.Net.Quic.dll => 0x77ab42ac514299c0 => 70
	i64 8626175481042262068, ; 389: Java.Interop => 0x77b654e585b55834 => 167
	i64 8638972117149407195, ; 390: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 391: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 261
	i64 8648495978913578441, ; 392: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8655680948164704764, ; 393: cs/System.ServiceModel.NetFramingBase.resources.dll => 0x781f27f66c7939fc => 354
	i64 8677882282824630478, ; 394: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 315
	i64 8684531736582871431, ; 395: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 43
	i64 8725526185868997716, ; 396: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 200
	i64 8740610862248308472, ; 397: Microsoft.IdentityModel.Tokens.Saml.dll => 0x794ce344fc3b2ef8 => 192
	i64 8750104989811284373, ; 398: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x796e9e20d1131995 => 366
	i64 8816904670177563593, ; 399: Microsoft.Extensions.Diagnostics => 0x7a5bf015646a93c9 => 179
	i64 8840200626854743040, ; 400: it/System.ServiceModel.NetTcp.resources.dll => 0x7aaeb3a1fadccc00 => 384
	i64 8853378295825400934, ; 401: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 289
	i64 8889036152528886433, ; 402: zh-Hans/System.ServiceModel.Primitives.resources.dll => 0x7b5c3348db16daa1 => 404
	i64 8941376889969657626, ; 403: System.Xml.XDocument => 0x7c1626e87187471a => 157
	i64 8951477988056063522, ; 404: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 264
	i64 8954753533646919997, ; 405: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 111
	i64 9016070251403168609, ; 406: tr/System.ServiceModel.Primitives.resources.dll => 0x7d1f841fdcda4b61 => 403
	i64 9018795066006812985, ; 407: de/System.ServiceModel.NetTcp.resources.dll => 0x7d2932543361b939 => 381
	i64 9045785047181495996, ; 408: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 325
	i64 9138683372487561558, ; 409: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 120
	i64 9206439850007503396, ; 410: pl\System.ServiceModel.NetTcp.resources => 0x7fc3d84409b2a224 => 387
	i64 9236758604623169489, ; 411: es\System.ServiceModel.Http.resources => 0x802f8f033098c7d1 => 343
	i64 9312692141327339315, ; 412: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 279
	i64 9313552142646974434, ; 413: fr/System.ServiceModel.NetNamedPipe.resources.dll => 0x81406254138d17e2 => 370
	i64 9324707631942237306, ; 414: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 220
	i64 9427266486299436557, ; 415: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 189
	i64 9429125686736324352, ; 416: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0x82dafbdabc6e0700 => 365
	i64 9468215723722196442, ; 417: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 158
	i64 9488613780052192518, ; 418: cs/System.ServiceModel.Http.resources.dll => 0x83ae53f5cae32d06 => 341
	i64 9554839972845591462, ; 419: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 130
	i64 9575902398040817096, ; 420: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 284
	i64 9584643793929893533, ; 421: System.IO.dll => 0x85037ebfbbd7f69d => 56
	i64 9659729154652888475, ; 422: System.Text.RegularExpressions => 0x860e407c9991dd9b => 137
	i64 9662334977499516867, ; 423: System.Numerics.dll => 0x8617827802b0cfc3 => 82
	i64 9667360217193089419, ; 424: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 29
	i64 9678050649315576968, ; 425: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 231
	i64 9702891218465930390, ; 426: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9724288661446775860, ; 427: it/System.ServiceModel.Primitives.resources.dll => 0x86f39d041ee4d434 => 397
	i64 9733213995311057333, ; 428: es\System.ServiceModel.Federation.resources => 0x8713528f596049b5 => 330
	i64 9780093022148426479, ; 429: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 281
	i64 9808709177481450983, ; 430: Mono.Android.dll => 0x881f890734e555e7 => 170
	i64 9825649861376906464, ; 431: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 228
	i64 9834056768316610435, ; 432: System.Transactions.dll => 0x8879968718899783 => 149
	i64 9836529246295212050, ; 433: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 93
	i64 9907349773706910547, ; 434: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 241
	i64 9913641436950702900, ; 435: pt-BR/System.ServiceModel.Federation.resources.dll => 0x8994545cb80a2b34 => 336
	i64 9933555792566666578, ; 436: System.Linq.Queryable.dll => 0x89db145cf475c552 => 59
	i64 9956195530459977388, ; 437: Microsoft.Maui => 0x8a2b8315b36616ac => 197
	i64 9974604633896246661, ; 438: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 156
	i64 9991543690424095600, ; 439: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 300
	i64 10017511394021241210, ; 440: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 184
	i64 10038780035334861115, ; 441: System.Net.Http.dll => 0x8b50e941206af13b => 63
	i64 10051358222726253779, ; 442: System.Private.Xml => 0x8b7d990c97ccccd3 => 87
	i64 10055713941375345720, ; 443: fr/System.ServiceModel.Http.resources.dll => 0x8b8d128d5e9ee438 => 344
	i64 10078727084704864206, ; 444: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 78
	i64 10089571585547156312, ; 445: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 46
	i64 10092835686693276772, ; 446: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 195
	i64 10096670194649521199, ; 447: System.ServiceModel.Primitives => 0x8c1e940c2e5bdc2f => 209
	i64 10105485790837105934, ; 448: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 142
	i64 10143853363526200146, ; 449: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 297
	i64 10197415184292957254, ; 450: ko\System.ServiceModel.Federation.resources => 0x8d847f14f6f4cc46 => 334
	i64 10205853378024263619, ; 451: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 176
	i64 10226222362177979215, ; 452: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 290
	i64 10229024438826829339, ; 453: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 235
	i64 10236703004850800690, ; 454: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 73
	i64 10245369515835430794, ; 455: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 90
	i64 10252714262739571204, ; 456: Microsoft.Maui.Controls.HotReload.Forms => 0x8e48f54cfe2c5204 => 406
	i64 10321854143672141184, ; 457: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 287
	i64 10360651442923773544, ; 458: System.Text.Encoding => 0x8fc86d98211c1e68 => 134
	i64 10364469296367737616, ; 459: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 89
	i64 10376576884623852283, ; 460: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 273
	i64 10406448008575299332, ; 461: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 293
	i64 10430153318873392755, ; 462: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 232
	i64 10462231721195350770, ; 463: it\System.ServiceModel.Primitives.resources => 0x91315051b3ac2af2 => 397
	i64 10506226065143327199, ; 464: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 295
	i64 10546663366131771576, ; 465: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 111
	i64 10566960649245365243, ; 466: System.Globalization.dll => 0x92a562b96dcd13fb => 41
	i64 10595762989148858956, ; 467: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 158
	i64 10670374202010151210, ; 468: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 469: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 102
	i64 10733493810775535810, ; 470: System.ServiceModel.NetFramingBase.dll => 0x94f507c09e2130c2 => 206
	i64 10785150219063592792, ; 471: System.Net.Primitives => 0x95ac8cfb68830758 => 69
	i64 10809043855025277762, ; 472: Microsoft.Extensions.Options.ConfigurationExtensions => 0x9601701e0c668b42 => 187
	i64 10822644899632537592, ; 473: System.Linq.Queryable => 0x9631c23204ca5ff8 => 59
	i64 10830817578243619689, ; 474: System.Formats.Tar => 0x964ecb340a447b69 => 38
	i64 10847732767863316357, ; 475: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 222
	i64 10899834349646441345, ; 476: System.Web => 0x9743fd975946eb81 => 152
	i64 10943875058216066601, ; 477: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 55
	i64 10964653383833615866, ; 478: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 33
	i64 11002576679268595294, ; 479: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 183
	i64 11009005086950030778, ; 480: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 197
	i64 11018178252090604864, ; 481: Microsoft.IdentityModel.Xml => 0x98e86ebe53cb7d40 => 193
	i64 11019817191295005410, ; 482: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 219
	i64 11023048688141570732, ; 483: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 484: System.Xml => 0x992e31d0412bf7fc => 162
	i64 11071824625609515081, ; 485: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 285
	i64 11103970607964515343, ; 486: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 306
	i64 11136029745144976707, ; 487: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 283
	i64 11157832426039186247, ; 488: System.ServiceModel.NetTcp.dll => 0x9ad8957989669347 => 208
	i64 11162124722117608902, ; 489: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 278
	i64 11163525078381911178, ; 490: es/System.ServiceModel.NetTcp.resources.dll => 0x9aeccee9721e5c8a => 382
	i64 11188319605227840848, ; 491: System.Threading.Overlapped => 0x9b44e5671724e550 => 139
	i64 11191620716034178705, ; 492: cs/System.ServiceModel.Primitives.resources.dll => 0x9b509fbed81ebe91 => 393
	i64 11220793807500858938, ; 493: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 309
	i64 11226290749488709958, ; 494: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 186
	i64 11235648312900863002, ; 495: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 88
	i64 11289176806901695813, ; 496: zh-Hans\System.ServiceModel.Federation.resources => 0x9cab367e45f44545 => 339
	i64 11329751333533450475, ; 497: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 146
	i64 11340910727871153756, ; 498: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 234
	i64 11347436699239206956, ; 499: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 161
	i64 11392833485892708388, ; 500: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 263
	i64 11432101114902388181, ; 501: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 502: Mono.Android.Export => 0x9edabf8623efc131 => 168
	i64 11448276831755070604, ; 503: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 30
	i64 11485890710487134646, ; 504: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 106
	i64 11503653075602048397, ; 505: System.ServiceModel.Http => 0x9fa52f85f697058d => 205
	i64 11508496261504176197, ; 506: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 244
	i64 11518296021396496455, ; 507: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 307
	i64 11529969570048099689, ; 508: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 278
	i64 11530571088791430846, ; 509: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 182
	i64 11580057168383206117, ; 510: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 217
	i64 11591352189662810718, ; 511: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 271
	i64 11597940890313164233, ; 512: netstandard => 0xa0f429ca8d1805c9 => 166
	i64 11672361001936329215, ; 513: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 245
	i64 11692977985522001935, ; 514: System.Threading.Overlapped.dll => 0xa245cd869980680f => 139
	i64 11705530742807338875, ; 515: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 303
	i64 11707554492040141440, ; 516: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 58
	i64 11743665907891708234, ; 517: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 143
	i64 11949116578634023363, ; 518: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa5d3ca38193641c3 => 392
	i64 11991047634523762324, ; 519: System.Net => 0xa668c24ad493ae94 => 80
	i64 12040886584167504988, ; 520: System.Net.ServicePoint => 0xa719d28d8e121c5c => 73
	i64 12063623837170009990, ; 521: System.Security => 0xa76a99f6ce740786 => 129
	i64 12092606066021995775, ; 522: de/System.ServiceModel.Http.resources.dll => 0xa7d19125cdf994ff => 342
	i64 12096697103934194533, ; 523: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 524: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 525: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 92
	i64 12137774235383566651, ; 526: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 275
	i64 12145679461940342714, ; 527: System.Text.Json => 0xa88e1f1ebcb62fba => 136
	i64 12148258109226484831, ; 528: System.ServiceModel.NetFramingBase => 0xa8974862d834045f => 206
	i64 12153312702598915601, ; 529: ja\System.ServiceModel.NetFramingBase.resources => 0xa8a93d8312a6a611 => 359
	i64 12191646537372739477, ; 530: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 211
	i64 12201331334810686224, ; 531: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 112
	i64 12269460666702402136, ; 532: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 533: System.Runtime.Handles => 0xab24db6c07db5dff => 103
	i64 12342184558428949313, ; 534: System.ServiceModel.Primitives.dll => 0xab483f76d5780b41 => 209
	i64 12375446203996702057, ; 535: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12451044538927396471, ; 536: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 243
	i64 12459464620379313219, ; 537: zh-Hans/System.ServiceModel.NetTcp.resources.dll => 0xace8e90f25419443 => 391
	i64 12466513435562512481, ; 538: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 257
	i64 12475113361194491050, ; 539: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 409
	i64 12487638416075308985, ; 540: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 237
	i64 12517810545449516888, ; 541: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 32
	i64 12538491095302438457, ; 542: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 225
	i64 12550732019250633519, ; 543: System.IO.Compression => 0xae2d28465e8e1b2f => 45
	i64 12563362775336008096, ; 544: de\System.ServiceModel.Http.resources => 0xae5a07e17044b9a0 => 342
	i64 12594160867402462460, ; 545: fr\System.ServiceModel.NetNamedPipe.resources => 0xaec7729509a634fc => 370
	i64 12681088699309157496, ; 546: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 308
	i64 12689340720648847063, ; 547: es/System.ServiceModel.NetNamedPipe.resources.dll => 0xb0199827882c7ed7 => 369
	i64 12699999919562409296, ; 548: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 29
	i64 12700543734426720211, ; 549: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 226
	i64 12708238894395270091, ; 550: System.IO => 0xb05cbbf17d3ba3cb => 56
	i64 12708922737231849740, ; 551: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 133
	i64 12717050818822477433, ; 552: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 113
	i64 12753841065332862057, ; 553: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 280
	i64 12823819093633476069, ; 554: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 321
	i64 12828192437253469131, ; 555: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 291
	i64 12835242264250840079, ; 556: System.IO.Pipes => 0xb21ff0d5d6c0740f => 54
	i64 12843321153144804894, ; 557: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 188
	i64 12843770487262409629, ; 558: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 559: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 76
	i64 12883800283815099351, ; 560: 02_DotnetClienteMovil => 0xb2cc7418c9e03bd7 => 0
	i64 12925973142558461920, ; 561: de\System.ServiceModel.NetTcp.resources => 0xb3624816a26fcfe0 => 381
	i64 12982280885948128408, ; 562: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 236
	i64 12986944878231358355, ; 563: ko/System.ServiceModel.NetTcp.resources.dll => 0xb43ae58f188f0b93 => 386
	i64 13068258254871114833, ; 564: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 110
	i64 13113583242634760252, ; 565: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xb5fcce7afdc2903c => 190
	i64 13129914918964716986, ; 566: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 240
	i64 13173818576982874404, ; 567: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 101
	i64 13221551921002590604, ; 568: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 295
	i64 13222659110913276082, ; 569: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 309
	i64 13239552802928723181, ; 570: tr/System.ServiceModel.Federation.resources.dll => 0xb7bc5720cb9804ed => 338
	i64 13343850469010654401, ; 571: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 169
	i64 13370592475155966277, ; 572: System.Runtime.Serialization => 0xb98de304062ea945 => 114
	i64 13381594904270902445, ; 573: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 303
	i64 13401370062847626945, ; 574: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 275
	i64 13404347523447273790, ; 575: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 230
	i64 13431476299110033919, ; 576: System.Net.WebClient => 0xba663087f18829ff => 75
	i64 13450080985297233383, ; 577: pt-BR/System.ServiceModel.Primitives.resources.dll => 0xbaa8496500e0a5e7 => 401
	i64 13454009404024712428, ; 578: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 286
	i64 13463706743370286408, ; 579: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 84
	i64 13465488254036897740, ; 580: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 288
	i64 13467053111158216594, ; 581: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 323
	i64 13491513212026656886, ; 582: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 223
	i64 13540124433173649601, ; 583: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 324
	i64 13545416393490209236, ; 584: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 307
	i64 13572454107664307259, ; 585: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 265
	i64 13578472628727169633, ; 586: System.Xml.XPath => 0xbc706ce9fba5c261 => 159
	i64 13580399111273692417, ; 587: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 588: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 236
	i64 13647894001087880694, ; 589: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 590: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 216
	i64 13702626353344114072, ; 591: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 31
	i64 13710614125866346983, ; 592: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 116
	i64 13713329104121190199, ; 593: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 36
	i64 13717397318615465333, ; 594: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 595: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 302
	i64 13768883594457632599, ; 596: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 51
	i64 13805425092083240321, ; 597: ja/System.ServiceModel.Http.resources.dll => 0xbf96b8fa1ae2cd81 => 346
	i64 13806364379217932032, ; 598: pt-BR/System.ServiceModel.NetFramingBase.resources.dll => 0xbf9a0f40eee42f00 => 362
	i64 13814445057219246765, ; 599: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 305
	i64 13828521679616088467, ; 600: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 289
	i64 13830070810343648044, ; 601: System.ServiceModel.Http.dll => 0xbfee48208d082b2c => 205
	i64 13874392747353528814, ; 602: it\System.ServiceModel.Federation.resources => 0xc08bbeb1ac4359ee => 332
	i64 13881769479078963060, ; 603: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 604: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 122
	i64 13928444506500929300, ; 605: System.Windows.dll => 0xc14bc67b8bba9714 => 153
	i64 13947035440391415689, ; 606: zh-Hans\System.ServiceModel.Primitives.resources => 0xc18dd2d6a6506789 => 404
	i64 13959074834287824816, ; 607: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 243
	i64 14062537208056738663, ; 608: cs\System.ServiceModel.NetNamedPipe.resources => 0xc3282b158eef7367 => 367
	i64 14075334701871371868, ; 609: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 130
	i64 14100563506285742564, ; 610: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 297
	i64 14124974489674258913, ; 611: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 225
	i64 14125464355221830302, ; 612: System.Threading.dll => 0xc407bafdbc707a9e => 147
	i64 14178052285788134900, ; 613: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 212
	i64 14212104595480609394, ; 614: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 119
	i64 14220608275227875801, ; 615: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 27
	i64 14226382999226559092, ; 616: System.ServiceProcess => 0xc56e43f6938e2a74 => 131
	i64 14232023429000439693, ; 617: System.Resources.Writer.dll => 0xc5824de7789ba78d => 99
	i64 14254202117188122242, ; 618: pl/System.ServiceModel.NetNamedPipe.resources.dll => 0xc5d1194db79e7682 => 374
	i64 14254574811015963973, ; 619: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 133
	i64 14261073672896646636, ; 620: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 263
	i64 14298246716367104064, ; 621: System.Web.dll => 0xc66d93a217f4e840 => 152
	i64 14327695147300244862, ; 622: System.Reflection.dll => 0xc6d632d338eb4d7e => 96
	i64 14327709162229390963, ; 623: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 124
	i64 14331727281556788554, ; 624: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 213
	i64 14346402571976470310, ; 625: System.Net.Ping.dll => 0xc718a920f3686f26 => 68
	i64 14461014870687870182, ; 626: System.Net.Requests.dll => 0xc8afd8683afdece6 => 71
	i64 14464374589798375073, ; 627: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 318
	i64 14486659737292545672, ; 628: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 248
	i64 14495724990987328804, ; 629: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 266
	i64 14497605124368440498, ; 630: pt-BR\System.ServiceModel.NetFramingBase.resources => 0xc931d70c8bdd1cb2 => 362
	i64 14522721392235705434, ; 631: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 299
	i64 14551742072151931844, ; 632: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 135
	i64 14561513370130550166, ; 633: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 123
	i64 14574160591280636898, ; 634: System.Net.Quic => 0xca41d1d72ec783e2 => 70
	i64 14622043554576106986, ; 635: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 110
	i64 14644440854989303794, ; 636: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 258
	i64 14669215534098758659, ; 637: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 177
	i64 14690985099581930927, ; 638: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 151
	i64 14705122255218365489, ; 639: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 310
	i64 14741804258040025864, ; 640: es\System.ServiceModel.NetNamedPipe.resources => 0xcc9568de04d11308 => 369
	i64 14744092281598614090, ; 641: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 326
	i64 14750216453141343598, ; 642: ja\System.ServiceModel.Http.resources => 0xccb34bb6d19cad6e => 346
	i64 14792063746108907174, ; 643: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 286
	i64 14792991364388157008, ; 644: es\System.ServiceModel.NetTcp.resources => 0xcd4b4344efc6f650 => 382
	i64 14832630590065248058, ; 645: System.Security.Claims => 0xcdd816ef5d6e873a => 117
	i64 14839664071391251657, ; 646: System.ServiceModel.Duplex => 0xcdf113d959670cc9 => 203
	i64 14852515768018889994, ; 647: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 234
	i64 14870951093111881137, ; 648: zh-Hans\System.ServiceModel.NetTcp.resources => 0xce603b3ac123fdb1 => 391
	i64 14889905118082851278, ; 649: GoogleGson.dll => 0xcea391d0969961ce => 172
	i64 14892012299694389861, ; 650: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 327
	i64 14904040806490515477, ; 651: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 294
	i64 14905769933452734130, ; 652: es/System.ServiceModel.NetFramingBase.resources.dll => 0xcedbeec7c325eeb2 => 356
	i64 14912225920358050525, ; 653: System.Security.Principal.Windows => 0xcef2de7759506add => 126
	i64 14935719434541007538, ; 654: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 132
	i64 14954917835170835695, ; 655: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 178
	i64 14984936317414011727, ; 656: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 76
	i64 14987728460634540364, ; 657: System.IO.Compression.dll => 0xcfff1ba06622494c => 45
	i64 14988210264188246988, ; 658: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 237
	i64 15015154896917945444, ; 659: System.Net.Security.dll => 0xd0608bd33642dc64 => 72
	i64 15024878362326791334, ; 660: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 62
	i64 15033183115947713165, ; 661: cs\System.ServiceModel.Primitives.resources => 0xd0a098650d76a28d => 393
	i64 15051741671811457419, ; 662: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 180
	i64 15071021337266399595, ; 663: System.Resources.Reader.dll => 0xd127060e7a18a96b => 97
	i64 15076659072870671916, ; 664: System.ObjectModel.dll => 0xd13b0d8c1620662c => 83
	i64 15111608613780139878, ; 665: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 311
	i64 15115185479366240210, ; 666: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 42
	i64 15133485256822086103, ; 667: System.Linq.dll => 0xd204f0a9127dd9d7 => 60
	i64 15150743910298169673, ; 668: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 264
	i64 15209599533829826619, ; 669: tr/System.ServiceModel.NetTcp.resources.dll => 0xd3135a312ddfa83b => 390
	i64 15227001540531775957, ; 670: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 175
	i64 15234786388537674379, ; 671: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 36
	i64 15250465174479574862, ; 672: System.Globalization.Calendars.dll => 0xd3a489469852174e => 39
	i64 15272359115529052076, ; 673: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 227
	i64 15279429628684179188, ; 674: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 292
	i64 15299439993936780255, ; 675: System.Xml.XPath.dll => 0xd452879d55019bdf => 159
	i64 15338463749992804988, ; 676: System.Resources.Reader => 0xd4dd2b839286f27c => 97
	i64 15370334346939861994, ; 677: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 232
	i64 15391712275433856905, ; 678: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 178
	i64 15403947811736892499, ; 679: tr/System.ServiceModel.Http.resources.dll => 0xd5c5d0ebd13bb453 => 351
	i64 15412490934096474927, ; 680: System.ServiceModel.Federation => 0xd5e42ad87ebfb32f => 204
	i64 15413989682962769581, ; 681: es\System.ServiceModel.Primitives.resources => 0xd5e97df3288826ad => 395
	i64 15472743225642400231, ; 682: zh-Hant\System.ServiceModel.Federation.resources => 0xd6ba39fc513f39e7 => 340
	i64 15512084913707906237, ; 683: pt-BR\System.ServiceModel.Http.resources => 0xd745ff0adf4174bd => 349
	i64 15526743539506359484, ; 684: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 134
	i64 15527772828719725935, ; 685: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 686: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 64
	i64 15536481058354060254, ; 687: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 298
	i64 15541854775306130054, ; 688: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 124
	i64 15557562860424774966, ; 689: System.Net.Sockets => 0xd7e790fe7a6dc536 => 74
	i64 15582737692548360875, ; 690: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 256
	i64 15609085926864131306, ; 691: System.dll => 0xd89e9cf3334914ea => 163
	i64 15614406846227935001, ; 692: ko/System.ServiceModel.NetNamedPipe.resources.dll => 0xd8b1844c47d7ef19 => 373
	i64 15637857104874081957, ; 693: System.ServiceModel.NetNamedPipe => 0xd904d42f18568ea5 => 207
	i64 15661133872274321916, ; 694: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 155
	i64 15664356999916475676, ; 695: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 298
	i64 15710114879900314733, ; 696: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 697: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 306
	i64 15755368083429170162, ; 698: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 48
	i64 15777549416145007739, ; 699: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 270
	i64 15783653065526199428, ; 700: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 299
	i64 15796674544955155030, ; 701: zh-Hant/System.ServiceModel.Http.resources.dll => 0xdb390fcde481e256 => 353
	i64 15817206913877585035, ; 702: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 143
	i64 15847085070278954535, ; 703: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 138
	i64 15885744048853936810, ; 704: System.Resources.Writer => 0xdc75800bd0b6eaaa => 99
	i64 15928521404965645318, ; 705: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 194
	i64 15934062614519587357, ; 706: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 122
	i64 15937190497610202713, ; 707: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 119
	i64 15963349826457351533, ; 708: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 141
	i64 15968726545588960902, ; 709: pl/System.ServiceModel.NetFramingBase.resources.dll => 0xdd9c502ff12e3e86 => 361
	i64 15971679995444160383, ; 710: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 38
	i64 16018552496348375205, ; 711: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 67
	i64 16046481083542319511, ; 712: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 185
	i64 16054465462676478687, ; 713: System.Globalization.Extensions => 0xdecceb47319bdadf => 40
	i64 16114460324092078703, ; 714: Microsoft.IdentityModel.Xml.dll => 0xdfa2104964a26a6f => 193
	i64 16154507427712707110, ; 715: System => 0xe03056ea4e39aa26 => 163
	i64 16154700047849151294, ; 716: Material.Icons => 0xe031061a2d08db3e => 173
	i64 16219561732052121626, ; 717: System.Net.Security => 0xe1177575db7c781a => 72
	i64 16272480664611126357, ; 718: fr\System.ServiceModel.NetFramingBase.resources => 0xe1d376f2fc8efc55 => 357
	i64 16288847719894691167, ; 719: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 312
	i64 16315482530584035869, ; 720: WindowsBase.dll => 0xe26c3ceb1e8d821d => 164
	i64 16321164108206115771, ; 721: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 183
	i64 16337011941688632206, ; 722: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 126
	i64 16361933716545543812, ; 723: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 242
	i64 16423015068819898779, ; 724: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 291
	i64 16454459195343277943, ; 725: System.Net.NetworkInformation => 0xe459fb756d988f77 => 67
	i64 16465012559999924934, ; 726: ko\System.ServiceModel.NetNamedPipe.resources => 0xe47f79b01d23fac6 => 373
	i64 16496768397145114574, ; 727: Mono.Android.Export.dll => 0xe4f04b741db987ce => 168
	i64 16506257789526125213, ; 728: tr/System.ServiceModel.NetFramingBase.resources.dll => 0xe512020173baaa9d => 364
	i64 16558262036769511634, ; 729: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 181
	i64 16571052248489204195, ; 730: es\System.ServiceModel.NetFramingBase.resources => 0xe5f8343909a319e3 => 356
	i64 16589693266713801121, ; 731: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 255
	i64 16621146507174665210, ; 732: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 229
	i64 16649148416072044166, ; 733: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 199
	i64 16677317093839702854, ; 734: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 262
	i64 16702652415771857902, ; 735: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 150
	i64 16709499819875633724, ; 736: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 44
	i64 16737807731308835127, ; 737: System.Runtime.Intrinsics => 0xe848a3736f733137 => 107
	i64 16758309481308491337, ; 738: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 47
	i64 16762783179241323229, ; 739: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 95
	i64 16765015072123548030, ; 740: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 30
	i64 16775237837682019207, ; 741: de/System.ServiceModel.NetFramingBase.resources.dll => 0xe8cd9def31ba8b87 => 355
	i64 16822611501064131242, ; 742: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 743: mscorlib => 0xe99c30c1484d7f4f => 165
	i64 16856067890322379635, ; 744: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 745: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 137
	i64 16933958494752847024, ; 746: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 77
	i64 16942731696432749159, ; 747: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 319
	i64 16944803401888012179, ; 748: fr/System.ServiceModel.NetFramingBase.resources.dll => 0xeb2808eaa65d9793 => 357
	i64 16977952268158210142, ; 749: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 53
	i64 16989020923549080504, ; 750: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 255
	i64 16998075588627545693, ; 751: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 260
	i64 17008137082415910100, ; 752: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17023676497273798524, ; 753: es/System.ServiceModel.Http.resources.dll => 0xec403f94372bbf7c => 343
	i64 17024911836938395553, ; 754: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 218
	i64 17026344819618783825, ; 755: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0xec49ba676cb0a251 => 408
	i64 17031351772568316411, ; 756: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 259
	i64 17031924682156397346, ; 757: pl\System.ServiceModel.Primitives.resources => 0xec5d8d426923d322 => 400
	i64 17037200463775726619, ; 758: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 246
	i64 17062143951396181894, ; 759: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 760: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 326
	i64 17101677393452997189, ; 761: de\System.ServiceModel.Federation.resources => 0xed555cfb14181a45 => 329
	i64 17118171214553292978, ; 762: System.Threading.Channels => 0xed8ff6060fc420b2 => 138
	i64 17137864900836977098, ; 763: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 191
	i64 17163719922865397202, ; 764: cs/System.ServiceModel.Federation.resources.dll => 0xee31c85522afddd2 => 328
	i64 17187273293601214786, ; 765: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 766: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 767: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 121
	i64 17230721278011714856, ; 768: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 86
	i64 17234219099804750107, ; 769: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 148
	i64 17260702271250283638, ; 770: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17294651574986203234, ; 771: pl/System.ServiceModel.Http.resources.dll => 0xf002f1f9f933e062 => 348
	i64 17333249706306540043, ; 772: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 33
	i64 17338386382517543202, ; 773: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 78
	i64 17342750010158924305, ; 774: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 304
	i64 17360349973592121190, ; 775: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 284
	i64 17367298616515891650, ; 776: fr/System.ServiceModel.Federation.resources.dll => 0xf1050a13699011c2 => 331
	i64 17382160109067067964, ; 777: cs/System.ServiceModel.NetNamedPipe.resources.dll => 0xf139d68649e8623c => 367
	i64 17438153253682247751, ; 778: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 319
	i64 17470386307322966175, ; 779: System.Threading.Timer => 0xf27347c8d0d5709f => 146
	i64 17509662556995089465, ; 780: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 79
	i64 17514990004910432069, ; 781: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 302
	i64 17522591619082469157, ; 782: GoogleGson => 0xf32cc03d27a5bf25 => 172
	i64 17556740846514848528, ; 783: zh-Hant/System.ServiceModel.NetTcp.resources.dll => 0xf3a612c7c21bc310 => 392
	i64 17590473451926037903, ; 784: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 211
	i64 17623389608345532001, ; 785: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 314
	i64 17627500474728259406, ; 786: System.Globalization => 0xf4a176498a351f4e => 41
	i64 17685511033268820096, ; 787: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xf56f8e95393d5880 => 378
	i64 17685921127322830888, ; 788: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 789: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 325
	i64 17704177640604968747, ; 790: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 257
	i64 17710060891934109755, ; 791: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 254
	i64 17712670374920797664, ; 792: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 106
	i64 17777860260071588075, ; 793: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 109
	i64 17790600151040787804, ; 794: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 189
	i64 17838668724098252521, ; 795: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17871147545075994307, ; 796: cs\System.ServiceModel.NetFramingBase.resources => 0xf8031201c0d94ec3 => 354
	i64 17882207186021012119, ; 797: 02_DotnetClienteMovil.dll => 0xf82a5cb112b85297 => 0
	i64 17891337867145587222, ; 798: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 287
	i64 17928294245072900555, ; 799: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 43
	i64 17992315986609351877, ; 800: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 160
	i64 18025913125965088385, ; 801: System.Threading => 0xfa28e87b91334681 => 147
	i64 18099568558057551825, ; 802: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 313
	i64 18116111925905154859, ; 803: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 223
	i64 18121036031235206392, ; 804: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 259
	i64 18146411883821974900, ; 805: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 37
	i64 18146811631844267958, ; 806: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18203743254473369877, ; 807: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 201
	i64 18225059387460068507, ; 808: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 145
	i64 18245806341561545090, ; 809: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 810: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 240
	i64 18264580318985419235, ; 811: Material.Icons.dll => 0xfd78d307bcb779e3 => 173
	i64 18274843375259426212, ; 812: pt-BR/System.ServiceModel.Http.resources.dll => 0xfd9d4939bc3d1da4 => 349
	i64 18305135509493619199, ; 813: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 261
	i64 18318849532986632368, ; 814: System.Security.dll => 0xfe39a097c37fa8b0 => 129
	i64 18324163916253801303, ; 815: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 308
	i64 18362437444048002214, ; 816: tr\System.ServiceModel.Primitives.resources => 0xfed47b9126d01ca6 => 403
	i64 18380184030268848184, ; 817: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 277
	i64 18428404840311395189, ; 818: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 202
	i64 18439108438687598470 ; 819: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 93
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [820 x i32] [
	i32 239, ; 0
	i32 208, ; 1
	i32 377, ; 2
	i32 188, ; 3
	i32 170, ; 4
	i32 198, ; 5
	i32 372, ; 6
	i32 207, ; 7
	i32 395, ; 8
	i32 57, ; 9
	i32 226, ; 10
	i32 150, ; 11
	i32 267, ; 12
	i32 204, ; 13
	i32 270, ; 14
	i32 233, ; 15
	i32 335, ; 16
	i32 131, ; 17
	i32 187, ; 18
	i32 364, ; 19
	i32 334, ; 20
	i32 408, ; 21
	i32 359, ; 22
	i32 55, ; 23
	i32 269, ; 24
	i32 210, ; 25
	i32 402, ; 26
	i32 185, ; 27
	i32 301, ; 28
	i32 94, ; 29
	i32 405, ; 30
	i32 252, ; 31
	i32 128, ; 32
	i32 176, ; 33
	i32 203, ; 34
	i32 144, ; 35
	i32 227, ; 36
	i32 18, ; 37
	i32 304, ; 38
	i32 238, ; 39
	i32 253, ; 40
	i32 149, ; 41
	i32 103, ; 42
	i32 94, ; 43
	i32 340, ; 44
	i32 372, ; 45
	i32 282, ; 46
	i32 312, ; 47
	i32 389, ; 48
	i32 35, ; 49
	i32 27, ; 50
	i32 222, ; 51
	i32 192, ; 52
	i32 385, ; 53
	i32 260, ; 54
	i32 49, ; 55
	i32 114, ; 56
	i32 352, ; 57
	i32 69, ; 58
	i32 195, ; 59
	i32 64, ; 60
	i32 169, ; 61
	i32 144, ; 62
	i32 310, ; 63
	i32 281, ; 64
	i32 399, ; 65
	i32 221, ; 66
	i32 256, ; 67
	i32 246, ; 68
	i32 39, ; 69
	i32 88, ; 70
	i32 351, ; 71
	i32 80, ; 72
	i32 65, ; 73
	i32 61, ; 74
	i32 331, ; 75
	i32 85, ; 76
	i32 220, ; 77
	i32 379, ; 78
	i32 105, ; 79
	i32 300, ; 80
	i32 267, ; 81
	i32 405, ; 82
	i32 101, ; 83
	i32 34, ; 84
	i32 217, ; 85
	i32 322, ; 86
	i32 269, ; 87
	i32 196, ; 88
	i32 322, ; 89
	i32 118, ; 90
	i32 337, ; 91
	i32 254, ; 92
	i32 296, ; 93
	i32 314, ; 94
	i32 141, ; 95
	i32 389, ; 96
	i32 140, ; 97
	i32 290, ; 98
	i32 52, ; 99
	i32 34, ; 100
	i32 140, ; 101
	i32 214, ; 102
	i32 224, ; 103
	i32 368, ; 104
	i32 384, ; 105
	i32 184, ; 106
	i32 238, ; 107
	i32 402, ; 108
	i32 8, ; 109
	i32 14, ; 110
	i32 318, ; 111
	i32 266, ; 112
	i32 355, ; 113
	i32 50, ; 114
	i32 249, ; 115
	i32 348, ; 116
	i32 135, ; 117
	i32 100, ; 118
	i32 231, ; 119
	i32 276, ; 120
	i32 115, ; 121
	i32 215, ; 122
	i32 162, ; 123
	i32 321, ; 124
	i32 191, ; 125
	i32 165, ; 126
	i32 66, ; 127
	i32 177, ; 128
	i32 296, ; 129
	i32 379, ; 130
	i32 79, ; 131
	i32 385, ; 132
	i32 100, ; 133
	i32 271, ; 134
	i32 116, ; 135
	i32 301, ; 136
	i32 283, ; 137
	i32 77, ; 138
	i32 282, ; 139
	i32 407, ; 140
	i32 353, ; 141
	i32 358, ; 142
	i32 113, ; 143
	i32 120, ; 144
	i32 47, ; 145
	i32 400, ; 146
	i32 127, ; 147
	i32 368, ; 148
	i32 247, ; 149
	i32 218, ; 150
	i32 81, ; 151
	i32 109, ; 152
	i32 333, ; 153
	i32 74, ; 154
	i32 293, ; 155
	i32 198, ; 156
	i32 52, ; 157
	i32 273, ; 158
	i32 174, ; 159
	i32 68, ; 160
	i32 272, ; 161
	i32 82, ; 162
	i32 171, ; 163
	i32 386, ; 164
	i32 361, ; 165
	i32 316, ; 166
	i32 115, ; 167
	i32 175, ; 168
	i32 155, ; 169
	i32 174, ; 170
	i32 190, ; 171
	i32 212, ; 172
	i32 335, ; 173
	i32 166, ; 174
	i32 371, ; 175
	i32 265, ; 176
	i32 239, ; 177
	i32 344, ; 178
	i32 182, ; 179
	i32 31, ; 180
	i32 196, ; 181
	i32 121, ; 182
	i32 71, ; 183
	i32 339, ; 184
	i32 61, ; 185
	i32 160, ; 186
	i32 112, ; 187
	i32 87, ; 188
	i32 194, ; 189
	i32 347, ; 190
	i32 327, ; 191
	i32 104, ; 192
	i32 18, ; 193
	i32 145, ; 194
	i32 117, ; 195
	i32 57, ; 196
	i32 233, ; 197
	i32 17, ; 198
	i32 396, ; 199
	i32 338, ; 200
	i32 51, ; 201
	i32 91, ; 202
	i32 407, ; 203
	i32 350, ; 204
	i32 341, ; 205
	i32 324, ; 206
	i32 371, ; 207
	i32 54, ; 208
	i32 406, ; 209
	i32 128, ; 210
	i32 398, ; 211
	i32 387, ; 212
	i32 151, ; 213
	i32 40, ; 214
	i32 91, ; 215
	i32 358, ; 216
	i32 401, ; 217
	i32 277, ; 218
	i32 181, ; 219
	i32 49, ; 220
	i32 294, ; 221
	i32 161, ; 222
	i32 13, ; 223
	i32 251, ; 224
	i32 215, ; 225
	i32 272, ; 226
	i32 35, ; 227
	i32 66, ; 228
	i32 108, ; 229
	i32 216, ; 230
	i32 398, ; 231
	i32 98, ; 232
	i32 332, ; 233
	i32 98, ; 234
	i32 11, ; 235
	i32 350, ; 236
	i32 11, ; 237
	i32 258, ; 238
	i32 25, ; 239
	i32 127, ; 240
	i32 75, ; 241
	i32 250, ; 242
	i32 108, ; 243
	i32 383, ; 244
	i32 360, ; 245
	i32 276, ; 246
	i32 274, ; 247
	i32 105, ; 248
	i32 2, ; 249
	i32 394, ; 250
	i32 26, ; 251
	i32 229, ; 252
	i32 156, ; 253
	i32 320, ; 254
	i32 21, ; 255
	i32 323, ; 256
	i32 48, ; 257
	i32 42, ; 258
	i32 125, ; 259
	i32 219, ; 260
	i32 58, ; 261
	i32 118, ; 262
	i32 210, ; 263
	i32 279, ; 264
	i32 242, ; 265
	i32 228, ; 266
	i32 3, ; 267
	i32 396, ; 268
	i32 376, ; 269
	i32 399, ; 270
	i32 248, ; 271
	i32 390, ; 272
	i32 328, ; 273
	i32 268, ; 274
	i32 388, ; 275
	i32 37, ; 276
	i32 123, ; 277
	i32 179, ; 278
	i32 317, ; 279
	i32 268, ; 280
	i32 383, ; 281
	i32 317, ; 282
	i32 136, ; 283
	i32 148, ; 284
	i32 84, ; 285
	i32 89, ; 286
	i32 360, ; 287
	i32 252, ; 288
	i32 409, ; 289
	i32 333, ; 290
	i32 249, ; 291
	i32 330, ; 292
	i32 305, ; 293
	i32 224, ; 294
	i32 347, ; 295
	i32 235, ; 296
	i32 280, ; 297
	i32 186, ; 298
	i32 285, ; 299
	i32 250, ; 300
	i32 132, ; 301
	i32 377, ; 302
	i32 95, ; 303
	i32 3, ; 304
	i32 313, ; 305
	i32 345, ; 306
	i32 104, ; 307
	i32 316, ; 308
	i32 32, ; 309
	i32 153, ; 310
	i32 157, ; 311
	i32 329, ; 312
	i32 154, ; 313
	i32 81, ; 314
	i32 380, ; 315
	i32 244, ; 316
	i32 336, ; 317
	i32 202, ; 318
	i32 142, ; 319
	i32 86, ; 320
	i32 375, ; 321
	i32 19, ; 322
	i32 245, ; 323
	i32 201, ; 324
	i32 50, ; 325
	i32 214, ; 326
	i32 366, ; 327
	i32 320, ; 328
	i32 60, ; 329
	i32 53, ; 330
	i32 4, ; 331
	i32 96, ; 332
	i32 380, ; 333
	i32 213, ; 334
	i32 376, ; 335
	i32 17, ; 336
	i32 365, ; 337
	i32 394, ; 338
	i32 154, ; 339
	i32 83, ; 340
	i32 374, ; 341
	i32 28, ; 342
	i32 44, ; 343
	i32 63, ; 344
	i32 65, ; 345
	i32 311, ; 346
	i32 171, ; 347
	i32 253, ; 348
	i32 1, ; 349
	i32 288, ; 350
	i32 46, ; 351
	i32 24, ; 352
	i32 221, ; 353
	i32 180, ; 354
	i32 164, ; 355
	i32 107, ; 356
	i32 363, ; 357
	i32 12, ; 358
	i32 247, ; 359
	i32 62, ; 360
	i32 200, ; 361
	i32 23, ; 362
	i32 92, ; 363
	i32 375, ; 364
	i32 167, ; 365
	i32 352, ; 366
	i32 12, ; 367
	i32 363, ; 368
	i32 292, ; 369
	i32 199, ; 370
	i32 337, ; 371
	i32 28, ; 372
	i32 102, ; 373
	i32 14, ; 374
	i32 125, ; 375
	i32 230, ; 376
	i32 262, ; 377
	i32 90, ; 378
	i32 378, ; 379
	i32 251, ; 380
	i32 388, ; 381
	i32 9, ; 382
	i32 345, ; 383
	i32 85, ; 384
	i32 241, ; 385
	i32 274, ; 386
	i32 315, ; 387
	i32 70, ; 388
	i32 167, ; 389
	i32 1, ; 390
	i32 261, ; 391
	i32 5, ; 392
	i32 354, ; 393
	i32 315, ; 394
	i32 43, ; 395
	i32 200, ; 396
	i32 192, ; 397
	i32 366, ; 398
	i32 179, ; 399
	i32 384, ; 400
	i32 289, ; 401
	i32 404, ; 402
	i32 157, ; 403
	i32 264, ; 404
	i32 111, ; 405
	i32 403, ; 406
	i32 381, ; 407
	i32 325, ; 408
	i32 120, ; 409
	i32 387, ; 410
	i32 343, ; 411
	i32 279, ; 412
	i32 370, ; 413
	i32 220, ; 414
	i32 189, ; 415
	i32 365, ; 416
	i32 158, ; 417
	i32 341, ; 418
	i32 130, ; 419
	i32 284, ; 420
	i32 56, ; 421
	i32 137, ; 422
	i32 82, ; 423
	i32 29, ; 424
	i32 231, ; 425
	i32 10, ; 426
	i32 397, ; 427
	i32 330, ; 428
	i32 281, ; 429
	i32 170, ; 430
	i32 228, ; 431
	i32 149, ; 432
	i32 93, ; 433
	i32 241, ; 434
	i32 336, ; 435
	i32 59, ; 436
	i32 197, ; 437
	i32 156, ; 438
	i32 300, ; 439
	i32 184, ; 440
	i32 63, ; 441
	i32 87, ; 442
	i32 344, ; 443
	i32 78, ; 444
	i32 46, ; 445
	i32 195, ; 446
	i32 209, ; 447
	i32 142, ; 448
	i32 297, ; 449
	i32 334, ; 450
	i32 176, ; 451
	i32 290, ; 452
	i32 235, ; 453
	i32 73, ; 454
	i32 90, ; 455
	i32 406, ; 456
	i32 287, ; 457
	i32 134, ; 458
	i32 89, ; 459
	i32 273, ; 460
	i32 293, ; 461
	i32 232, ; 462
	i32 397, ; 463
	i32 295, ; 464
	i32 111, ; 465
	i32 41, ; 466
	i32 158, ; 467
	i32 4, ; 468
	i32 102, ; 469
	i32 206, ; 470
	i32 69, ; 471
	i32 187, ; 472
	i32 59, ; 473
	i32 38, ; 474
	i32 222, ; 475
	i32 152, ; 476
	i32 55, ; 477
	i32 33, ; 478
	i32 183, ; 479
	i32 197, ; 480
	i32 193, ; 481
	i32 219, ; 482
	i32 21, ; 483
	i32 162, ; 484
	i32 285, ; 485
	i32 306, ; 486
	i32 283, ; 487
	i32 208, ; 488
	i32 278, ; 489
	i32 382, ; 490
	i32 139, ; 491
	i32 393, ; 492
	i32 309, ; 493
	i32 186, ; 494
	i32 88, ; 495
	i32 339, ; 496
	i32 146, ; 497
	i32 234, ; 498
	i32 161, ; 499
	i32 263, ; 500
	i32 6, ; 501
	i32 168, ; 502
	i32 30, ; 503
	i32 106, ; 504
	i32 205, ; 505
	i32 244, ; 506
	i32 307, ; 507
	i32 278, ; 508
	i32 182, ; 509
	i32 217, ; 510
	i32 271, ; 511
	i32 166, ; 512
	i32 245, ; 513
	i32 139, ; 514
	i32 303, ; 515
	i32 58, ; 516
	i32 143, ; 517
	i32 392, ; 518
	i32 80, ; 519
	i32 73, ; 520
	i32 129, ; 521
	i32 342, ; 522
	i32 25, ; 523
	i32 7, ; 524
	i32 92, ; 525
	i32 275, ; 526
	i32 136, ; 527
	i32 206, ; 528
	i32 359, ; 529
	i32 211, ; 530
	i32 112, ; 531
	i32 9, ; 532
	i32 103, ; 533
	i32 209, ; 534
	i32 19, ; 535
	i32 243, ; 536
	i32 391, ; 537
	i32 257, ; 538
	i32 409, ; 539
	i32 237, ; 540
	i32 32, ; 541
	i32 225, ; 542
	i32 45, ; 543
	i32 342, ; 544
	i32 370, ; 545
	i32 308, ; 546
	i32 369, ; 547
	i32 29, ; 548
	i32 226, ; 549
	i32 56, ; 550
	i32 133, ; 551
	i32 113, ; 552
	i32 280, ; 553
	i32 321, ; 554
	i32 291, ; 555
	i32 54, ; 556
	i32 188, ; 557
	i32 6, ; 558
	i32 76, ; 559
	i32 0, ; 560
	i32 381, ; 561
	i32 236, ; 562
	i32 386, ; 563
	i32 110, ; 564
	i32 190, ; 565
	i32 240, ; 566
	i32 101, ; 567
	i32 295, ; 568
	i32 309, ; 569
	i32 338, ; 570
	i32 169, ; 571
	i32 114, ; 572
	i32 303, ; 573
	i32 275, ; 574
	i32 230, ; 575
	i32 75, ; 576
	i32 401, ; 577
	i32 286, ; 578
	i32 84, ; 579
	i32 288, ; 580
	i32 323, ; 581
	i32 223, ; 582
	i32 324, ; 583
	i32 307, ; 584
	i32 265, ; 585
	i32 159, ; 586
	i32 2, ; 587
	i32 236, ; 588
	i32 24, ; 589
	i32 216, ; 590
	i32 31, ; 591
	i32 116, ; 592
	i32 36, ; 593
	i32 16, ; 594
	i32 302, ; 595
	i32 51, ; 596
	i32 346, ; 597
	i32 362, ; 598
	i32 305, ; 599
	i32 289, ; 600
	i32 205, ; 601
	i32 332, ; 602
	i32 20, ; 603
	i32 122, ; 604
	i32 153, ; 605
	i32 404, ; 606
	i32 243, ; 607
	i32 367, ; 608
	i32 130, ; 609
	i32 297, ; 610
	i32 225, ; 611
	i32 147, ; 612
	i32 212, ; 613
	i32 119, ; 614
	i32 27, ; 615
	i32 131, ; 616
	i32 99, ; 617
	i32 374, ; 618
	i32 133, ; 619
	i32 263, ; 620
	i32 152, ; 621
	i32 96, ; 622
	i32 124, ; 623
	i32 213, ; 624
	i32 68, ; 625
	i32 71, ; 626
	i32 318, ; 627
	i32 248, ; 628
	i32 266, ; 629
	i32 362, ; 630
	i32 299, ; 631
	i32 135, ; 632
	i32 123, ; 633
	i32 70, ; 634
	i32 110, ; 635
	i32 258, ; 636
	i32 177, ; 637
	i32 151, ; 638
	i32 310, ; 639
	i32 369, ; 640
	i32 326, ; 641
	i32 346, ; 642
	i32 286, ; 643
	i32 382, ; 644
	i32 117, ; 645
	i32 203, ; 646
	i32 234, ; 647
	i32 391, ; 648
	i32 172, ; 649
	i32 327, ; 650
	i32 294, ; 651
	i32 356, ; 652
	i32 126, ; 653
	i32 132, ; 654
	i32 178, ; 655
	i32 76, ; 656
	i32 45, ; 657
	i32 237, ; 658
	i32 72, ; 659
	i32 62, ; 660
	i32 393, ; 661
	i32 180, ; 662
	i32 97, ; 663
	i32 83, ; 664
	i32 311, ; 665
	i32 42, ; 666
	i32 60, ; 667
	i32 264, ; 668
	i32 390, ; 669
	i32 175, ; 670
	i32 36, ; 671
	i32 39, ; 672
	i32 227, ; 673
	i32 292, ; 674
	i32 159, ; 675
	i32 97, ; 676
	i32 232, ; 677
	i32 178, ; 678
	i32 351, ; 679
	i32 204, ; 680
	i32 395, ; 681
	i32 340, ; 682
	i32 349, ; 683
	i32 134, ; 684
	i32 20, ; 685
	i32 64, ; 686
	i32 298, ; 687
	i32 124, ; 688
	i32 74, ; 689
	i32 256, ; 690
	i32 163, ; 691
	i32 373, ; 692
	i32 207, ; 693
	i32 155, ; 694
	i32 298, ; 695
	i32 5, ; 696
	i32 306, ; 697
	i32 48, ; 698
	i32 270, ; 699
	i32 299, ; 700
	i32 353, ; 701
	i32 143, ; 702
	i32 138, ; 703
	i32 99, ; 704
	i32 194, ; 705
	i32 122, ; 706
	i32 119, ; 707
	i32 141, ; 708
	i32 361, ; 709
	i32 38, ; 710
	i32 67, ; 711
	i32 185, ; 712
	i32 40, ; 713
	i32 193, ; 714
	i32 163, ; 715
	i32 173, ; 716
	i32 72, ; 717
	i32 357, ; 718
	i32 312, ; 719
	i32 164, ; 720
	i32 183, ; 721
	i32 126, ; 722
	i32 242, ; 723
	i32 291, ; 724
	i32 67, ; 725
	i32 373, ; 726
	i32 168, ; 727
	i32 364, ; 728
	i32 181, ; 729
	i32 356, ; 730
	i32 255, ; 731
	i32 229, ; 732
	i32 199, ; 733
	i32 262, ; 734
	i32 150, ; 735
	i32 44, ; 736
	i32 107, ; 737
	i32 47, ; 738
	i32 95, ; 739
	i32 30, ; 740
	i32 355, ; 741
	i32 23, ; 742
	i32 165, ; 743
	i32 22, ; 744
	i32 137, ; 745
	i32 77, ; 746
	i32 319, ; 747
	i32 357, ; 748
	i32 53, ; 749
	i32 255, ; 750
	i32 260, ; 751
	i32 10, ; 752
	i32 343, ; 753
	i32 218, ; 754
	i32 408, ; 755
	i32 259, ; 756
	i32 400, ; 757
	i32 246, ; 758
	i32 16, ; 759
	i32 326, ; 760
	i32 329, ; 761
	i32 138, ; 762
	i32 191, ; 763
	i32 328, ; 764
	i32 13, ; 765
	i32 15, ; 766
	i32 121, ; 767
	i32 86, ; 768
	i32 148, ; 769
	i32 22, ; 770
	i32 348, ; 771
	i32 33, ; 772
	i32 78, ; 773
	i32 304, ; 774
	i32 284, ; 775
	i32 331, ; 776
	i32 367, ; 777
	i32 319, ; 778
	i32 146, ; 779
	i32 79, ; 780
	i32 302, ; 781
	i32 172, ; 782
	i32 392, ; 783
	i32 211, ; 784
	i32 314, ; 785
	i32 41, ; 786
	i32 378, ; 787
	i32 26, ; 788
	i32 325, ; 789
	i32 257, ; 790
	i32 254, ; 791
	i32 106, ; 792
	i32 109, ; 793
	i32 189, ; 794
	i32 7, ; 795
	i32 354, ; 796
	i32 0, ; 797
	i32 287, ; 798
	i32 43, ; 799
	i32 160, ; 800
	i32 147, ; 801
	i32 313, ; 802
	i32 223, ; 803
	i32 259, ; 804
	i32 37, ; 805
	i32 15, ; 806
	i32 201, ; 807
	i32 145, ; 808
	i32 8, ; 809
	i32 240, ; 810
	i32 173, ; 811
	i32 349, ; 812
	i32 261, ; 813
	i32 129, ; 814
	i32 308, ; 815
	i32 403, ; 816
	i32 277, ; 817
	i32 202, ; 818
	i32 93 ; 819
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
