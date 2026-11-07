.class public Lcn/sharesdk/framework/utils/ShareSDKFileProvider;
.super Landroid/content/ContentProvider;
.source "ShareSDKFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;,
        Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/io/File;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

.field private e:Landroid/content/pm/ProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 311
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a:[Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b:Ljava/io/File;

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    .line 378
    :try_start_0
    invoke-static {p0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    move-result-object p0

    .line 379
    invoke-interface {p0, p2}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 381
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getUriForFile fail"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;
    .locals 2

    .line 554
    sget-object v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 555
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    if-nez v1, :cond_0

    .line 566
    invoke-static {p0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    move-result-object v1

    .line 567
    sget-object p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 936
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 938
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 630
    iget-object p1, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    if-eqz p1, :cond_0

    return-void

    .line 633
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->e:Landroid/content/pm/ProviderInfo;

    if-nez p1, :cond_1

    return-void

    .line 637
    :cond_1
    iget-boolean p1, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez p1, :cond_3

    .line 640
    iget-object p1, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->e:Landroid/content/pm/ProviderInfo;

    iget-boolean p1, p1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz p1, :cond_2

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->e:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 641
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Provider must grant uri permissions"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 638
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Provider must not be exported"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;)[Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 763
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 951
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 952
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static a([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 945
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 946
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    .line 911
    const-string v0, "r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x10000000

    goto :goto_1

    .line 913
    :cond_0
    const-string v0, "w"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "wt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 917
    :cond_1
    const-string v0, "wa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p0, 0x2a000000

    goto :goto_1

    .line 921
    :cond_2
    const-string v0, "rw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p0, 0x38000000

    goto :goto_1

    .line 924
    :cond_3
    const-string v0, "rwt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p0, 0x3c000000    # 0.0078125f

    goto :goto_1

    .line 929
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    const/high16 p0, 0x2c000000

    :goto_1
    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;
    .locals 14

    .line 657
    new-instance v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;

    invoke-direct {v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 666
    const-string v3, "Mob/cache/images"

    const-string v4, "Mob/cache/videos"

    if-eqz p1, :cond_0

    .line 667
    new-array v5, v1, [Ljava/lang/String;

    aput-object v3, v5, v2

    invoke-static {p1, v5}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "imageNameFilesDir"

    invoke-virtual {v0, v6, v5}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 668
    new-array v5, v1, [Ljava/lang/String;

    aput-object v4, v5, v2

    invoke-static {p1, v5}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "videoNameFilesDir"

    invoke-virtual {v0, v6, v5}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 678
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Mob/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/cache/images"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 684
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    .line 685
    const-string v9, "imageNameExternal"

    const-string v10, "."

    if-eqz v8, :cond_1

    .line 686
    new-array v8, v1, [Ljava/lang/String;

    aput-object v10, v8, v2

    invoke-static {p1, v8}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    const-string v11, "cachename"

    invoke-virtual {v0, v11, v8}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 687
    new-array v8, v1, [Ljava/lang/String;

    aput-object v5, v8, v2

    invoke-static {p1, v8}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 688
    new-array v5, v1, [Ljava/lang/String;

    aput-object v3, v5, v2

    invoke-static {p1, v5}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, v9, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 693
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 695
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/cache/videos"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 708
    invoke-static {p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v11

    .line 709
    array-length v12, v11

    const/4 v13, 0x0

    if-lez v12, :cond_2

    .line 710
    aget-object v11, v11, v2

    goto :goto_0

    :cond_2
    move-object v11, v13

    :goto_0
    if-eqz v11, :cond_3

    .line 713
    new-array v12, v1, [Ljava/lang/String;

    aput-object p1, v12, v2

    invoke-static {v11, v12}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, v9, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 714
    new-array p1, v1, [Ljava/lang/String;

    aput-object v5, p1, v2

    invoke-static {v11, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v5, "videoNameExternal"

    invoke-virtual {v0, v5, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 715
    new-array p1, v1, [Ljava/lang/String;

    aput-object v10, p1, v2

    invoke-static {v11, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v5, "mihayou"

    invoke-virtual {v0, v5, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 716
    new-array p1, v1, [Ljava/lang/String;

    const-string v5, "./."

    aput-object v5, p1, v2

    invoke-static {v11, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v5, "more"

    invoke-virtual {v0, v5, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 720
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 726
    invoke-static {p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p0

    .line 727
    array-length v6, p0

    if-lez v6, :cond_4

    .line 728
    aget-object p0, p0, v2

    goto :goto_1

    :cond_4
    move-object p0, v13

    :goto_1
    if-eqz p0, :cond_5

    .line 731
    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-static {p0, v6}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v6, "imageNameEtc"

    invoke-virtual {v0, v6, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 732
    new-array p1, v1, [Ljava/lang/String;

    aput-object v5, p1, v2

    invoke-static {p0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string p1, "videoNameEtc"

    invoke-virtual {v0, p1, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 741
    :cond_5
    sget-object p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b:Ljava/io/File;

    if-eqz p0, :cond_6

    .line 743
    new-array p0, v1, [Ljava/lang/String;

    aput-object v3, p0, v2

    invoke-static {v13, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string p1, "imageNameRoot"

    invoke-virtual {v0, p1, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 744
    new-array p0, v1, [Ljava/lang/String;

    aput-object v4, p0, v2

    invoke-static {v13, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string p1, "videoNameRoot"

    invoke-virtual {v0, p1, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 753
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 755
    new-array p1, v1, [Ljava/lang/String;

    aput-object v10, p1, v2

    invoke-static {p0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string p1, "externalStDir"

    invoke-virtual {v0, p1, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_7
    return-object v0
.end method

.method public static b(Landroid/content/Context;)[Ljava/io/File;
    .locals 0

    .line 771
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    .line 352
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 353
    iput-object p2, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->e:Landroid/content/pm/ProviderInfo;

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 513
    const-string p2, "del"

    invoke-direct {p0, p2}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/lang/String;)V

    .line 514
    iget-object p2, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 517
    :cond_0
    invoke-interface {p2, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 463
    const-string v0, "g-t"

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    if-nez v0, :cond_0

    .line 465
    const-string p1, ""

    return-object p1

    .line 467
    :cond_0
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 471
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 478
    :cond_1
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 487
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external inserts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 539
    const-string v0, "o-f"

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 543
    :cond_0
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 544
    invoke-static {p2}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b(Ljava/lang/String;)I

    move-result p2

    .line 545
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 418
    const-string p3, "q"

    invoke-direct {p0, p3}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/lang/String;)V

    .line 419
    iget-object p3, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 422
    :cond_0
    invoke-interface {p3, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p2, :cond_1

    .line 425
    sget-object p2, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a:[Ljava/lang/String;

    .line 428
    :cond_1
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    .line 429
    array-length p4, p2

    new-array p4, p4, [Ljava/lang/Object;

    .line 431
    array-length p5, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p5, :cond_4

    aget-object v2, p2, v0

    .line 432
    const-string v3, "_display_name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    aput-object v3, p3, v1

    .line 434
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 436
    :cond_2
    const-string v3, "_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    aput-object v3, p3, v1

    .line 438
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p4, v1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_4
    invoke-static {p3, v1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-static {p4, v1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 446
    new-instance p3, Landroid/database/MatrixCursor;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 447
    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 496
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external updates"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
