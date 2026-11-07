.class public Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;
.super Ljava/lang/Object;
.source "AndroidShareDriverManager.java"


# static fields
.field public static final PLATFORM_DOUYIN:I = 0x3

.field public static final PLATFORM_QQ:I = 0x4

.field public static final PLATFORM_WECHAT:I = 0x1

.field public static final PLATFORM_WEIBO:I = 0x2

.field public static final Save_Failed:I = 0x1

.field public static final Save_Success:I = 0x0

.field public static final Share_Canceled:I = 0x2

.field public static final Share_Failed:I = 0x1

.field public static final Share_Success:I

.field private static sMgr:Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;


# instance fields
.field public mNativeDriverPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sput-object p0, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->sMgr:Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;

    .line 79
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->mNativeDriverPtr:J

    return-void
.end method

.method private RequestPermission()V
    .locals 5

    const/4 v0, 0x2

    .line 224
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.CAMERA"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    .line 226
    aget-object v2, v1, v3

    .line 227
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v2

    const/16 v4, 0x65

    invoke-static {v2, v1, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static instance()Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;
    .locals 1

    .line 84
    sget-object v0, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->sMgr:Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;

    return-object v0
.end method

.method private saveImage(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const-string v3, "ShareSDK"

    const/4 v4, 0x1

    if-ge v0, v1, :cond_1

    .line 181
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "\u5206\u4eab"

    const-string v5, "\u5206\u4eab\u56fe\u7247"

    invoke-static {v0, p1, v1, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 185
    const-string p1, "SaveImgSuccess"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0, v2}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_SaveCallback(I)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0, v4}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_SaveCallback(I)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    :try_start_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "rw"

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 200
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v1, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    const-string p1, "SaveSuccess"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0, v2}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_SaveCallback(I)V

    goto :goto_0

    .line 207
    :cond_2
    const-string p1, "SaveFailed"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0, v4}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_SaveCallback(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 214
    invoke-virtual {p0, v4}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_SaveCallback(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public DoShare(Ljava/lang/String;)V
    .locals 4

    .line 247
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 253
    sget-object v1, Lcn/sharesdk/wechat/favorite/WechatFavorite;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->addHiddenPlatform(Ljava/lang/String;)V

    .line 255
    const-string v1, "ShareStart!!!!!!!!!!"

    const-string v2, "ShareSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ShareImgPath: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 267
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager$1;

    invoke-direct {p1, p0}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager$1;-><init>(Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;)V

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 293
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    return-void
.end method

.method GetPlatformString(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 0

    .line 239
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Initialize()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->SubmitPolicy()V

    return-void
.end method

.method public native Native_SaveCallback(I)V
.end method

.method public native Native_ShareCallback(ILjava/lang/String;)V
.end method

.method public SaveImageToGallery(Ljava/lang/String;)V
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SaveImage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 155
    :try_start_0
    const-string v2, "SaveImageFoundPath!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 161
    const-string p1, "BitMapFailed!!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_SaveCallback(I)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->saveImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 173
    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_SaveCallback(I)V

    :goto_0
    return-void
.end method

.method public SubmitPolicy()V
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-static {v0}, Lcom/mob/MobSDK;->submitPolicyGrantResult(Z)V

    return-void
.end method
