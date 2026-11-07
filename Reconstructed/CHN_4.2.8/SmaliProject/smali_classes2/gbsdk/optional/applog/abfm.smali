.class public final Lgbsdk/optional/applog/abfm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abfm$ab;
    }
.end annotation


# static fields
.field public static final a:[Lgbsdk/optional/applog/abfm$ab;


# instance fields
.field public volatile b:Lcom/bytedance/applog/IExtraParams;

.field public final c:Lcom/bytedance/bdtracker/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [Lgbsdk/optional/applog/abfm$ab;

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "aid"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "google_aid"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "carrier"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "mcc_mnc"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "sim_region"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "device_id"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "bd_did"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "install_id"

    const-string v4, "iid"

    invoke-direct {v1, v3, v4, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "clientudid"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "app_name"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "app_version"

    const-string v4, "version_name"

    invoke-direct {v1, v3, v4, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "version_code"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "manifest_version_code"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "update_version_code"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/optional/applog/abfm$ab;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "sdk_version_code"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/optional/applog/abfm$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lgbsdk/optional/applog/abfm;->a:[Lgbsdk/optional/applog/abfm$ab;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abfm;->c:Lcom/bytedance/bdtracker/d;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lgbsdk/optional/applog/abfm;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/bdtracker/d;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    :try_start_0
    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lgbsdk/optional/applog/abfm;->c:Lcom/bytedance/bdtracker/d;

    .line 21
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const/16 v1, 0xb

    const-string v2, "Cast type failed."

    .line 22
    invoke-interface {p2, v1, v2, p1, p4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p3, v0

    :goto_1
    return-object p3
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgbsdk/optional/applog/abfm;->c:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p3, v1, p4}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;ZLjava/util/Map;Lcom/bytedance/applog/Level;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object p2
.end method

.method public a(Lorg/json/JSONObject;ZLjava/util/Map;Lcom/bytedance/applog/Level;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/applog/Level;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lgbsdk/optional/applog/abfm;->c:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    if-eqz v0, :cond_12

    if-eqz p3, :cond_12

    if-nez p4, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_rticket"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_platform"

    const-string v2, "android"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string p2, "ssmix"

    const-string v1, "a"

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    sget-object p2, Lgbsdk/optional/applog/aban;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    if-lez p2, :cond_4

    if-lez v2, :cond_4

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lgbsdk/optional/applog/aban;->a:Ljava/lang/String;

    :cond_4
    sget-object p2, Lgbsdk/optional/applog/aban;->a:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "resolution"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_5
    sget p2, Lgbsdk/optional/applog/aban;->b:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p2, Lgbsdk/optional/applog/aban;->b:I

    :cond_6
    sget p2, Lgbsdk/optional/applog/aban;->b:I

    if-lez p2, :cond_7

    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "dpi"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "device_type"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "device_brand"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "language"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "os_api"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_8

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_8
    const-string v2, "os_version"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lgbsdk/optional/applog/abek;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "ac"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/4 p2, 0x0

    :goto_2
    sget-object v2, Lgbsdk/optional/applog/abfm;->a:[Lgbsdk/optional/applog/abfm$ab;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge p2, v3, :cond_b

    aget-object v2, v2, p2

    .line 12
    iget-object v3, v2, Lgbsdk/optional/applog/abfm$ab;->a:Ljava/lang/String;

    .line 13
    iget-object v5, v2, Lgbsdk/optional/applog/abfm$ab;->c:Ljava/lang/Class;

    .line 14
    invoke-virtual {p0, p1, v3, v4, v5}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 15
    iget-object v2, v2, Lgbsdk/optional/applog/abfm$ab;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_b
    const-class p2, Ljava/lang/String;

    const-string v2, "tweaked_channel"

    const-string v3, ""

    invoke-virtual {p0, p1, v2, v3, p2}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "channel"

    if-eqz v2, :cond_c

    const-class p2, Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v3, p2}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {p3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-class p2, Ljava/lang/String;

    const-string v2, "cdid"

    invoke-virtual {p0, p1, v2, v4, p2}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {v0}, Lgbsdk/optional/applog/ao;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p0, p1, p3, p2, p4}, Lcom/bytedance/applog/util/SensitiveUtils;->appendSensitiveParams(Lgbsdk/optional/applog/abfm;Lorg/json/JSONObject;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V

    sget-object p2, Lcom/bytedance/applog/Level;->L0:Lcom/bytedance/applog/Level;

    if-ne p4, p2, :cond_f

    const-class p2, Ljava/lang/String;

    const-string v0, "openudid"

    invoke-virtual {p0, p1, v0, v4, p2}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object p1, p0, Lgbsdk/optional/applog/abfm;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getAppContext()Lgbsdk/optional/applog/abbh;

    :try_start_0
    iget-object p1, p0, Lgbsdk/optional/applog/abfm;->b:Lcom/bytedance/applog/IExtraParams;

    if-nez p1, :cond_10

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lgbsdk/optional/applog/abfm;->b:Lcom/bytedance/applog/IExtraParams;

    invoke-interface {p1, p4}, Lcom/bytedance/applog/IExtraParams;->getExtraParams(Lcom/bytedance/applog/Level;)Ljava/util/HashMap;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    if-eqz p2, :cond_11

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lgbsdk/optional/applog/abfm;->c:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p3, v1, [Ljava/lang/Object;

    const/16 p4, 0xb

    const-string v0, "Add extra params failed."

    .line 18
    invoke-interface {p2, p4, v0, p1, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_12
    :goto_5
    return-void
.end method

.method public a(Lgbsdk/optional/applog/abbj;Lorg/json/JSONObject;I)[Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getBusinessUri()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    new-array p3, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getBusinessUri()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    move-object p1, p3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getSendUris()[Ljava/lang/String;

    move-result-object p1

    :goto_0
    array-length p3, p1

    new-array v2, p3, [Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/optional/applog/abfm;->c:Lcom/bytedance/bdtracker/d;

    .line 19
    iget-boolean v3, v3, Lcom/bytedance/bdtracker/d;->E:Z

    :goto_1
    if-ge v0, p3, :cond_3

    .line 20
    aget-object v4, p1, v0

    aput-object v4, v2, v0

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?tt_data=a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    :cond_2
    aget-object v4, v2, v0

    sget-object v5, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    invoke-virtual {p0, p2, v4, v1, v5}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    sget-object v5, Lgbsdk/optional/applog/abgd;->b:[Ljava/lang/String;

    invoke-static {v4, v5}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method
