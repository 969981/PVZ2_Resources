.class public final Lcom/bytedance/ads/convert/flat/f/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/flat/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_2d

    .line 2
    sget-object v2, Lcom/bytedance/ads/convert/flat/d/b;->b:Lcom/bytedance/ads/convert/flat/d/b;

    new-instance v3, Lcom/bytedance/ads/convert/flat/d/d;

    new-instance v0, Lcom/bytedance/ads/convert/flat/a/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/ads/convert/flat/a/f;-><init>(ZLcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;I)V

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/bytedance/ads/convert/flat/d/d;-><init>(Lcom/bytedance/ads/convert/flat/a/f;Z)V

    const-string v0, "context"

    .line 3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "wlan0"

    .line 4
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    move-object v6, v5

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    instance-of v8, v7, Ljava/net/Inet6Address;

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, "fe80"

    const/4 v9, 0x2

    invoke-static {v7, v8, v4, v9, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    move-object v6, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v6, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v5

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    sget-object v0, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const-string v6, ""

    .line 5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "<set-?>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/bytedance/ads/convert/flat/d/c;->a:Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget-object v0, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "<set-?>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/bytedance/ads/convert/flat/d/c;->d:Ljava/lang/String;

    const-wide/16 v6, -0x1

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v0, v8, :cond_4

    :try_start_2
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "Environment.getExternalStorageDirectory()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    nop

    :cond_4
    :goto_4
    sget-object v0, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "<set-?>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/bytedance/ads/convert/flat/d/c;->b:Ljava/lang/String;

    const-string v0, "context"

    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v6, "activity"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/app/ActivityManager;

    if-eqz v7, :cond_5

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    :cond_5
    sget-object v6, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    iget-wide v7, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "<set-?>"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v6, Lcom/bytedance/ads/convert/flat/d/c;->c:Ljava/lang/String;

    const-string v0, "context"

    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_9

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "com.ss.android.ugc.aweme"

    const-string v8, "a"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "com.ss.android.ugc.aweme.lite"

    const-string v8, "al"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "com.dragon.read"

    const-string v8, "r"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "com.ss.android.article.news"

    const-string v8, "n"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "com.ss.android.article.lite"

    const-string v8, "nl"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    const-string v8, "appPackageNameList.entries"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :catchall_3
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-wide v10, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v13, "n"

    :try_start_5
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "i"

    invoke-virtual {v12, v13, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "a"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "n"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    iget-wide v8, v9, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-string v10, "u"

    invoke-virtual {v12, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_7
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :cond_8
    :try_start_6
    sget-object v6, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "<set-?>"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v6, Lcom/bytedance/ads/convert/flat/d/c;->e:Lorg/json/JSONArray;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    :catchall_4
    nop

    .line 14
    :cond_9
    :goto_6
    iget-boolean v0, v3, Lcom/bytedance/ads/convert/flat/d/d;->b:Z

    if-eqz v0, :cond_a

    .line 15
    invoke-virtual {v2}, Lcom/bytedance/ads/convert/flat/d/b;->a()[I

    :cond_a
    new-instance v0, Lcom/bytedance/ads/convert/flat/d/c;

    sget-object v2, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    invoke-direct {v0, v2}, Lcom/bytedance/ads/convert/flat/d/c;-><init>(Lcom/bytedance/ads/convert/flat/d/c;)V

    sput-object v0, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    sget-object v0, Lcom/bytedance/ads/convert/flat/a/h;->c:Lcom/bytedance/ads/convert/flat/a/h;

    .line 16
    iget-object v2, v3, Lcom/bytedance/ads/convert/flat/d/d;->a:Lcom/bytedance/ads/convert/flat/a/f;

    .line 17
    invoke-virtual {v0, v2}, Lcom/bytedance/ads/convert/flat/a/h;->a(Lcom/bytedance/ads/convert/flat/a/f;)V

    .line 18
    iget-object v0, v3, Lcom/bytedance/ads/convert/flat/d/d;->a:Lcom/bytedance/ads/convert/flat/a/f;

    .line 19
    iget-boolean v0, v0, Lcom/bytedance/ads/convert/flat/a/f;->a:Z

    if-eqz v0, :cond_b

    .line 20
    new-instance v0, Lcom/bytedance/ads/convert/flat/d/a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/d/a;-><init>()V

    const-string v2, "context"

    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/bytedance/ads/convert/flat/a/g;

    invoke-direct {v3, v1, v0}, Lcom/bytedance/ads/convert/flat/a/g;-><init>(Landroid/content/Context;Lcom/bytedance/ads/convert/flat/b/a;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 22
    :cond_b
    sget-object v2, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    const-string v0, "context"

    .line 23
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/bytedance/ads/convert/flat/f/a;

    invoke-direct {v3, v1}, Lcom/bytedance/ads/convert/flat/f/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v6, 0x80

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_7

    :cond_c
    move-object v0, v5

    :goto_7
    if-eqz v0, :cond_d

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    const-string v6, "hume_convert.AppConvert.sdk.version"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const-string v0, "0"

    :goto_8
    move-object v6, v0

    const-string v0, "applicationInfo?.metaDat\u2026vert.sdk.version\") ?: \"0\""

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    .line 25
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/bytedance/ads/convert/flat/i/a;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, 0x6

    if-eqz v0, :cond_10

    :try_start_7
    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getCustomAndroidIDCallback()Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getCustomAndroidIDCallback()Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;->get()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    const-string v0, ""

    :goto_9
    move-object v7, v0

    goto :goto_a

    :cond_f
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "android_id"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "Settings.Secure.getStrin\u2026ttings.Secure.ANDROID_ID)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    sput-object v7, Lcom/bytedance/ads/convert/flat/i/a;->a:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    sget-object v9, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v9}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-interface {v9, v8, v0}, Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;->onOtherError(ILjava/lang/Throwable;)V

    .line 26
    :cond_10
    :goto_b
    sget-object v9, Lcom/bytedance/ads/convert/flat/i/b;->b:Lcom/bytedance/ads/convert/flat/i/b;

    monitor-enter v9

    const-string v0, "context"

    .line 27
    :try_start_9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ads/convert/flat/i/b;->a:Lcom/bytedance/ads/convert/flat/g/a;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v10, 0x1

    if-eqz v0, :cond_11

    monitor-exit v9

    :goto_c
    move-object v8, v0

    goto/16 :goto_15

    :cond_11
    :try_start_a
    const-string v0, "sp_name_app_unique_id"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v0, "app_unique_id"

    const-string v12, "NULL"

    invoke-interface {v11, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "NULL"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v10

    if-eqz v12, :cond_12

    const-string v8, "app_unique_id_source"

    const-string v12, "NULL"

    invoke-interface {v11, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 28
    new-instance v11, Lcom/bytedance/ads/convert/flat/g/a;

    invoke-direct {v11, v8, v0}, Lcom/bytedance/ads/convert/flat/g/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    sput-object v11, Lcom/bytedance/ads/convert/flat/i/b;->a:Lcom/bytedance/ads/convert/flat/g/a;

    move-object v0, v11

    goto/16 :goto_14

    :cond_12
    const-string v0, "context"

    .line 30
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lcom/bytedance/ads/convert/flat/i/a;->a:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v0, :cond_15

    :try_start_b
    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getCustomAndroidIDCallback()Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getCustomAndroidIDCallback()Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;->get()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v0, :cond_13

    goto :goto_d

    :cond_13
    const-string v0, ""

    :goto_d
    move-object v12, v0

    goto :goto_e

    :cond_14
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v13, "android_id"

    invoke-static {v0, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "Settings.Secure.getStrin\u2026ttings.Secure.ANDROID_ID)"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :goto_e
    sput-object v12, Lcom/bytedance/ads/convert/flat/i/a;->a:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_f

    :catch_1
    move-exception v0

    :try_start_d
    sget-object v13, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v13}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object v13

    if-eqz v13, :cond_15

    invoke-interface {v13, v8, v0}, Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;->onOtherError(ILjava/lang/Throwable;)V

    .line 31
    :cond_15
    :goto_f
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_17

    const-string v0, "android_id"

    .line 32
    :try_start_e
    new-instance v8, Lcom/bytedance/ads/convert/flat/g/a;

    invoke-direct {v8, v0, v12}, Lcom/bytedance/ads/convert/flat/g/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 33
    :cond_17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v0, "UUID.randomUUID().toString()"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "-"

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x10

    if-eqz v0, :cond_2c

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    const-string v8, "random_id"

    .line 34
    :try_start_f
    new-instance v12, Lcom/bytedance/ads/convert/flat/g/a;

    invoke-direct {v12, v8, v0}, Lcom/bytedance/ads/convert/flat/g/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v12

    .line 35
    :goto_11
    sput-object v8, Lcom/bytedance/ads/convert/flat/i/b;->a:Lcom/bytedance/ads/convert/flat/g/a;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const-string v8, "app_unique_id_source"

    :try_start_10
    sget-object v11, Lcom/bytedance/ads/convert/flat/i/b;->a:Lcom/bytedance/ads/convert/flat/g/a;

    if-eqz v11, :cond_18

    .line 36
    iget-object v11, v11, Lcom/bytedance/ads/convert/flat/g/a;->a:Ljava/lang/Object;

    .line 37
    check-cast v11, Ljava/lang/String;

    goto :goto_12

    :cond_18
    move-object v11, v5

    :goto_12
    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const-string v8, "app_unique_id"

    :try_start_11
    sget-object v11, Lcom/bytedance/ads/convert/flat/i/b;->a:Lcom/bytedance/ads/convert/flat/g/a;

    if-eqz v11, :cond_19

    .line 38
    iget-object v11, v11, Lcom/bytedance/ads/convert/flat/g/a;->b:Ljava/lang/Object;

    .line 39
    check-cast v11, Ljava/lang/String;

    goto :goto_13

    :cond_19
    move-object v11, v5

    :goto_13
    invoke-interface {v0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/bytedance/ads/convert/flat/i/b;->a:Lcom/bytedance/ads/convert/flat/g/a;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :goto_14
    monitor-exit v9

    goto/16 :goto_c

    .line 40
    :goto_15
    iget-object v0, v2, Lcom/bytedance/ads/convert/flat/d/c;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    .line 41
    sget-object v9, Lcom/bytedance/ads/convert/flat/i/d;->a:Lcom/bytedance/ads/convert/flat/i/d;

    const-string v0, "context"

    .line 42
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sp_name_bd_convert_hume_sdk"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v0, "has_read"

    invoke-interface {v11, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_16
    invoke-virtual {v9, v1}, Lcom/bytedance/ads/convert/flat/i/d;->a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/i/c;

    move-result-object v0

    goto/16 :goto_1c

    :cond_1a
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->getExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "HumeSDK.getExtra(context)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_17
    if-gt v13, v12, :cond_20

    if-nez v14, :cond_1b

    move v15, v13

    goto :goto_18

    :cond_1b
    move v15, v12

    :goto_18
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v5, 0x20

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_19

    :cond_1c
    const/4 v5, 0x0

    :goto_19
    if-nez v14, :cond_1e

    if-nez v5, :cond_1d

    const/4 v5, 0x0

    const/4 v14, 0x1

    goto :goto_17

    :cond_1d
    add-int/lit8 v13, v13, 0x1

    goto :goto_1a

    :cond_1e
    if-nez v5, :cond_1f

    goto :goto_1b

    :cond_1f
    add-int/lit8 v12, v12, -0x1

    :goto_1a
    const/4 v5, 0x0

    goto :goto_17

    :cond_20
    :goto_1b
    add-int/2addr v12, v10

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "click_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "click_id_nature"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "hume_channel_id"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v13, Lcom/bytedance/ads/convert/flat/i/c;

    sget-object v14, Lcom/bytedance/ads/convert/flat/i/f;->a:Lcom/bytedance/ads/convert/flat/i/f;

    invoke-direct {v13, v0, v12, v5, v14}, Lcom/bytedance/ads/convert/flat/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ads/convert/flat/i/f;)V

    invoke-virtual {v9, v1, v13}, Lcom/bytedance/ads/convert/flat/i/d;->a(Landroid/content/Context;Lcom/bytedance/ads/convert/flat/i/c;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_2

    move-object v0, v13

    goto :goto_1c

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_21
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "has_read"

    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_16

    :goto_1c
    const-string v5, "Convert:Event"

    const-string v9, "click_id fetch"

    const-string v10, "tag"

    .line 43
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "msg"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v10}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v10

    if-nez v10, :cond_22

    goto :goto_1d

    :cond_22
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    const-string v5, "click_id"

    .line 44
    iget-object v9, v0, Lcom/bytedance/ads/convert/flat/i/c;->b:Ljava/lang/String;

    if-eqz v9, :cond_23

    goto :goto_1e

    :cond_23
    const-string v9, ""

    .line 45
    :goto_1e
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "click_id_source"

    .line 46
    iget-object v9, v0, Lcom/bytedance/ads/convert/flat/i/c;->e:Lcom/bytedance/ads/convert/flat/i/f;

    if-nez v9, :cond_24

    const/16 v16, 0x0

    goto :goto_1f

    :cond_24
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v9

    :goto_1f
    if-eqz v16, :cond_25

    goto :goto_20

    :cond_25
    const-string v16, ""

    :goto_20
    move-object/from16 v9, v16

    .line 47
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "click_id_nature"

    .line 48
    iget-object v9, v0, Lcom/bytedance/ads/convert/flat/i/c;->c:Ljava/lang/String;

    if-eqz v9, :cond_26

    goto :goto_21

    :cond_26
    const-string v9, ""

    .line 49
    :goto_21
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "model"

    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v9, "device_brand"

    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "os_version"

    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "os_name"

    const-string v9, "android"

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdk_version"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "app_channel"

    .line 50
    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/i/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_27

    goto :goto_22

    :cond_27
    const-string v0, ""

    .line 51
    :goto_22
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_package"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_start_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_3

    const-string v1, "app_version"

    :try_start_14
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_3

    const-string v1, "app_install_time"

    :try_start_15
    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_3

    goto :goto_23

    :catch_3
    nop

    :goto_23
    const-string v0, "open_udid"

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    iget-object v0, v8, Lcom/bytedance/ads/convert/flat/g/a;->a:Ljava/lang/Object;

    const-string v1, "app_unique_id_source"

    .line 53
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v0, v8, Lcom/bytedance/ads/convert/flat/g/a;->b:Ljava/lang/Object;

    const-string v1, "app_unique_id"

    .line 55
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ipv6"

    .line 56
    sget-object v1, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableIPFetch()Z

    move-result v1

    if-eqz v1, :cond_2b

    :try_start_16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "Collections.list(Network\u2026e.getNetworkInterfaces())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "Collections.list(networkInterface.inetAddresses)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    instance-of v8, v7, Ljava/net/Inet6Address;

    if-eqz v8, :cond_28

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_25

    :cond_29
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_24

    :cond_2a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "jsonObject.toString()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    goto :goto_26

    :catch_4
    :cond_2b
    const-string v1, "{}"

    .line 57
    :goto_26
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->c:Ljava/lang/String;

    const-string v1, "oaid"

    .line 59
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "u_t"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    sput-object v2, Lcom/bytedance/ads/convert/flat/f/b;->a:Lorg/json/JSONObject;

    goto :goto_27

    .line 61
    :cond_2c
    :try_start_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :catchall_5
    move-exception v0

    monitor-exit v9

    throw v0

    .line 62
    :cond_2d
    :goto_27
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_2e

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    sput-object v0, Lcom/bytedance/ads/convert/flat/f/b;->a:Lorg/json/JSONObject;

    :cond_2e
    return-void
.end method
