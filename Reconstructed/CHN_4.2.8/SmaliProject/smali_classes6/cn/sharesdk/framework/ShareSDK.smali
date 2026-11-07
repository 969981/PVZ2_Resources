.class public Lcn/sharesdk/framework/ShareSDK;
.super Ljava/lang/Object;
.source "ShareSDK.java"


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "SHARESDK"

.field public static final SDK_VERSION_CODE:I

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "3.9.9"

.field public static final SHARESDK_MOBLINK_RESTORE:Ljava/lang/String; = "sharesdk_moblink_restore"

.field private static a:Lcn/sharesdk/framework/i; = null

.field private static b:Z = true

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:I

.field private static g:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    const-string v0, "3.9.9"

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    mul-int/lit8 v4, v4, 0x64

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_0
    sput v4, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    .line 51
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "ShareSDK static main catch "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 712
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 714
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getNetworkDevinfo catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 716
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    .line 790
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 792
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK uploadImageToFileServer catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 794
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 774
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 776
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK uploadImageToFileServer catch: "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 778
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 758
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 760
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getShortLink catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 762
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(II)V
    .locals 2

    .line 682
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 683
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 687
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK copyNetworkDevinfo catch "

    invoke-virtual {p1, p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 671
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 672
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 676
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK copyDevinfo "

    invoke-virtual {p1, p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static a()Z
    .locals 5

    const/4 v0, 0x0

    .line 730
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 732
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "ShareSDK isNetworkDevinfoRequested is catch "

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 734
    :goto_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->h()Z

    move-result v0

    :cond_0
    return v0
.end method

.method static b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 745
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 746
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    return-void
.end method

.method public static closeDebug()V
    .locals 1

    const/4 v0, 0x0

    .line 455
    sput-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return-void
.end method

.method static synthetic d()Lcn/sharesdk/framework/i;
    .locals 1

    .line 26
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    return-object v0
.end method

.method public static deleteCache()V
    .locals 4

    .line 222
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 223
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 227
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK deleteCache catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    .line 26
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/util/List;
    .locals 1

    .line 26
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->e:Ljava/util/List;

    return-object v0
.end method

.method public static getAuthActivity()Landroid/app/Activity;
    .locals 4

    .line 486
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 488
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getAuthActivity catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 490
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCustomDataFromLoopShare()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 616
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 618
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getCustomDataFromLoopShare catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 620
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->d()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 623
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 696
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 698
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getDevinfo catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 700
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEnableAuthTag()Z
    .locals 5

    const/4 v0, 0x0

    .line 523
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 525
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "ShareSDK getEnableAuthTag catch"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 527
    :goto_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->c()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static getFirstQrImage(Landroid/content/Context;Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;)V
    .locals 1

    .line 539
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 540
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Landroid/content/Context;Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 545
    invoke-interface {p1, p0, v0}, Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;->onFailed(Ljava/lang/Throwable;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .locals 4

    .line 268
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 270
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK ensureInit getPlatform catch"

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 272
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPlatformList()[Lcn/sharesdk/framework/Platform;
    .locals 4

    .line 241
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 243
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK getPlatformList catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 245
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcn/sharesdk/framework/i;->f()[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getQRCodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 570
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 571
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0, p0, p1, p2}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getService(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/framework/Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 145
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic h()I
    .locals 2

    .line 26
    sget v0, Lcn/sharesdk/framework/ShareSDK;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/sharesdk/framework/ShareSDK;->f:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .line 26
    sget v0, Lcn/sharesdk/framework/ShareSDK;->f:I

    return v0
.end method

.method public static isDebug()Z
    .locals 1

    .line 459
    sget-boolean v0, Lcn/sharesdk/framework/ShareSDK;->b:Z

    return v0
.end method

.method public static isFBInstagram()Z
    .locals 5

    const/4 v0, 0x0

    .line 510
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 512
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ShareSDK isFBInstagram catch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 514
    :goto_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->b()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isRemoveCookieOnAuthorize()Z
    .locals 5

    const/4 v0, 0x0

    .line 442
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 444
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ShareSDK isRemoveCookieOnAuthorize catch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 446
    :goto_0
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->g()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private static j()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lcom/mob/commons/dialog/PolicyThrowable;

    invoke-direct {v0}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v1

    .line 91
    :cond_2
    new-instance v0, Lcom/mob/commons/ForbThrowable;

    invoke-direct {v0}, Lcom/mob/commons/ForbThrowable;-><init>()V

    throw v0
.end method

.method private static declared-synchronized k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcn/sharesdk/framework/ShareSDK;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->j()Z

    .line 97
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcn/sharesdk/framework/i;

    invoke-direct {v1}, Lcn/sharesdk/framework/i;-><init>()V

    .line 99
    invoke-virtual {v1}, Lcn/sharesdk/framework/i;->e()V

    .line 100
    sput-object v1, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    .line 101
    sget-object v1, Lcn/sharesdk/framework/ShareSDK;->g:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    if-eqz v1, :cond_0

    .line 102
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->prepareLoopShare(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V

    const/4 v1, 0x0

    .line 103
    sput-object v1, Lcn/sharesdk/framework/ShareSDK;->g:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static l()V
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/ShareSDK$1;

    invoke-direct {v1}, Lcn/sharesdk/framework/ShareSDK$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 409
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static logApiEvent(Ljava/lang/String;I)V
    .locals 2

    .line 292
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 293
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 297
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK logApiEvent catch "

    invoke-virtual {p1, p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static logDemoEvent(ILcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 281
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 282
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(ILcn/sharesdk/framework/Platform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 286
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK logDemoEvent catch "

    invoke-virtual {p1, p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static makeVideoWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;)V
    .locals 6

    .line 555
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 556
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 557
    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p4, :cond_0

    .line 561
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p4, p0, p1}, Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;->onFailed(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static mobLinkGetMobID(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/sharesdk/framework/loopshare/MoblinkActionListener;",
            ")V"
        }
    .end annotation

    .line 583
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 584
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 589
    invoke-interface {p1, p0}, Lcn/sharesdk/framework/loopshare/MoblinkActionListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static platformIdToName(I)Ljava/lang/String;
    .locals 4

    .line 415
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 417
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ShareSDK platformIdToName catch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 419
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static platformNameToId(Ljava/lang/String;)I
    .locals 4

    .line 429
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 431
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDK platformNameToId catch "

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 433
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static prepareLoopShare(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 1

    .line 599
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 600
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 605
    invoke-interface {p0, v0}, Lcn/sharesdk/framework/loopshare/LoopShareResultListener;->onError(Ljava/lang/Throwable;)V

    .line 607
    :cond_0
    sput-object p0, Lcn/sharesdk/framework/ShareSDK;->g:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public static preparePassWord(Ljava/util/HashMap;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;",
            ")V"
        }
    .end annotation

    .line 632
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 633
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0, p0, p1, p2}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    .line 638
    invoke-interface {p2, p0}, Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static readPassWord(ZLcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 1

    .line 648
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 649
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(ZLcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 654
    invoke-interface {p1, p0}, Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static registerPlatform(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 159
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 160
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->d(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static registerService(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 117
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 121
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK  registerService catch "

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static removeCookieOnAuthorize(Z)V
    .locals 3

    .line 208
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 209
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 213
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK removeCookieOnAuthorize catch "

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 3

    .line 475
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 476
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 480
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setActivity is catch "

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setCloseGppService(Z)V
    .locals 1

    .line 807
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/b/a/e;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 809
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setConnTimeout(I)V
    .locals 3

    .line 180
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 181
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 185
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setConnTimeout catch"

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setEnableAuthTag(Z)V
    .locals 3

    .line 464
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 465
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 469
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setEnableAuthTag catch"

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setFBInstagram(Z)V
    .locals 3

    .line 499
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 500
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 504
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setFBInstagram catch "

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 310
    :try_start_0
    sput-object p0, Lcn/sharesdk/framework/ShareSDK;->c:Ljava/lang/String;

    .line 311
    sput-object p1, Lcn/sharesdk/framework/ShareSDK;->d:Ljava/util/HashMap;

    .line 312
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 314
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0, p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 321
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ShareSDK setPlatformDevInfo catch "

    invoke-virtual {p1, p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setPlatformDevInfos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 327
    :try_start_0
    sput-object p0, Lcn/sharesdk/framework/ShareSDK;->e:Ljava/util/List;

    .line 328
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 329
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 330
    sget-object p0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz p0, :cond_1

    .line 331
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->e:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/i;->a(Ljava/util/List;)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 337
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setPlatformDevInfo catch "

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setReadTimeout(I)V
    .locals 3

    .line 192
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 193
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 197
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK setReadTimeout catch"

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static unregisterPlatform(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 171
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 172
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->e(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static unregisterService(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->k()V

    .line 134
    sget-object v0, Lcn/sharesdk/framework/ShareSDK;->a:Lcn/sharesdk/framework/i;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/i;->b(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 138
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDK  unregisterService catch "

    invoke-virtual {v0, p0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method
