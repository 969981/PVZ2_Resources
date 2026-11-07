.class public Lgbsdk/common/host/ak;
.super Ljava/lang/Object;
.source "ApiParamsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/ak$ab;
    }
.end annotation


# static fields
.field public static volatile ah:Lgbsdk/common/host/al;

.field public static final ai:[Lgbsdk/common/host/ak$ab;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [Lgbsdk/common/host/ak$ab;

    .line 1
    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "aid"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "google_aid"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "carrier"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "mcc_mnc"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "sim_region"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "device_id"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "bd_did"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "install_id"

    const-string v4, "iid"

    invoke-direct {v1, v3, v4, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "clientudid"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "app_name"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/String;

    const-string v3, "app_version"

    const-string v4, "version_name"

    invoke-direct {v1, v3, v4, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "version_code"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "manifest_version_code"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "update_version_code"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lgbsdk/common/host/ak$ab;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "sdk_version_code"

    invoke-direct {v1, v3, v3, v2}, Lgbsdk/common/host/ak$ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lgbsdk/common/host/ak;->ai:[Lgbsdk/common/host/ak$ab;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/common/host/ak;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "48c14479cc17a110012aab807f24c095"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Object;

    return-object p0

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 201
    :try_start_0
    invoke-virtual {p3, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 203
    invoke-static {p0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v3

    :goto_1
    return-object p2
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLgbsdk/common/host/abal;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object v2, Lgbsdk/common/host/ak;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "f14fe3078484e35826a7bd97d8aafac2"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {p0, p1, p3, v1, p4}, Lgbsdk/common/host/ak;->a(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/util/Map;Lgbsdk/common/host/abal;)V

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 12
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object p2
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/util/Map;Lgbsdk/common/host/abal;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lgbsdk/common/host/abal;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    aput-object p3, v0, v3

    const/4 v3, 0x4

    aput-object p4, v0, v3

    sget-object v3, Lgbsdk/common/host/ak;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "6d76c55b5cba1196e4785a3de674f8a7"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1b

    if-eqz p3, :cond_1b

    if-nez p4, :cond_1

    goto/16 :goto_1

    .line 17
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_rticket"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_platform"

    const-string v2, "android"

    .line 18
    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p2, "ssmix"

    const-string v0, "a"

    .line 20
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_2
    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableDisplay()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 23
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/UIUtils;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "resolution"

    .line 25
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_3
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/UIUtils;->getDpi(Landroid/content/Context;)I

    move-result p2

    if-lez p2, :cond_4

    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "dpi"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_4
    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableDeviceModel()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 33
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "device_type"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_5
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "device_brand"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "language"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableOsVersion()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 38
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "os_api"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lgbsdk/common/host/abdh;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "os_version"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_6
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkTypeFast(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkAccessType(Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ac"

    .line 44
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_7
    :goto_0
    sget-object p2, Lgbsdk/common/host/ak;->ai:[Lgbsdk/common/host/ak$ab;

    array-length v0, p2

    if-ge v1, v0, :cond_9

    .line 49
    aget-object p2, p2, v1

    .line 50
    iget-object v0, p2, Lgbsdk/common/host/ak$ab;->a:Ljava/lang/String;

    .line 51
    iget-object v2, p2, Lgbsdk/common/host/ak$ab;->aj:Ljava/lang/Class;

    .line 52
    invoke-static {p1, v0, v4, v2}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 53
    iget-object p2, p2, Lgbsdk/common/host/ak$ab;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_9
    const-class p2, Ljava/lang/String;

    const-string v0, "tweaked_channel"

    const-string v1, ""

    invoke-static {p1, v0, v1, p2}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "channel"

    if-eqz v0, :cond_a

    .line 59
    const-class p2, Ljava/lang/String;

    invoke-static {p1, v2, v1, p2}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 61
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 62
    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_b
    const-class p2, Ljava/lang/String;

    const-string v0, "cdid"

    invoke-static {p1, v0, v4, p2}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 66
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_c
    invoke-static {p0}, Lgbsdk/common/host/abdo;->a(Landroid/content/Context;)Z

    move-result p2

    .line 69
    sget-object v0, Lgbsdk/common/host/abal;->bq:Lgbsdk/common/host/abal;

    if-ne p4, v0, :cond_f

    if-eqz p2, :cond_e

    .line 71
    const-class p2, Ljava/lang/String;

    const-string v0, "mc"

    invoke-static {p1, v0, v4, p2}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 72
    const-class v0, Ljava/lang/String;

    const-string v1, "udid"

    invoke-static {p1, v1, v4, v0}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "mac_address"

    .line 74
    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_d
    invoke-static {v0}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "uuid"

    .line 77
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_e
    const-class p2, Ljava/lang/String;

    const-string v0, "aliyun_uuid"

    invoke-static {p1, v0, v4, p2}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 82
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_f
    const-class p2, Ljava/lang/String;

    const-string v0, "build_serial"

    invoke-static {p1, v0, v4, p2}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 87
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_10
    sget-object p2, Lgbsdk/common/host/abal;->bq:Lgbsdk/common/host/abal;

    if-ne p4, p2, :cond_11

    .line 89
    const-class p2, Ljava/lang/String;

    const-string p4, "openudid"

    invoke-static {p1, p4, v4, p2}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 91
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_11
    invoke-static {}, Lcom/apm/applog/AppLog;->getAppContext()Lgbsdk/common/host/ac;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 104
    invoke-interface {p1}, Lgbsdk/common/host/ac;->k()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "aid"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {p1}, Lgbsdk/common/host/ac;->e()Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_12

    .line 107
    invoke-interface {p1}, Lgbsdk/common/host/ac;->d()Ljava/lang/String;

    move-result-object p2

    .line 109
    :cond_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_13

    .line 110
    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_13
    invoke-interface {p1}, Lgbsdk/common/host/ac;->w()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_14

    const-string p4, "app_name"

    .line 115
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_14
    invoke-interface {p1}, Lgbsdk/common/host/ac;->x()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "version_code"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {p1}, Lgbsdk/common/host/ac;->b()Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_15

    const-string p4, "version_name"

    .line 120
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_15
    invoke-interface {p1}, Lgbsdk/common/host/ac;->m()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "manifest_version_code"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {p1}, Lgbsdk/common/host/ac;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "update_version_code"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {p1}, Lgbsdk/common/host/ac;->j()Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_16

    const-string p4, "ab_version"

    .line 127
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_16
    invoke-interface {p1}, Lgbsdk/common/host/ac;->y()Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_17

    const-string p4, "ab_client"

    .line 131
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_17
    invoke-interface {p1}, Lgbsdk/common/host/ac;->i()Ljava/lang/String;

    move-result-object p2

    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_18

    const-string p4, "ab_group"

    .line 135
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_18
    invoke-interface {p1}, Lgbsdk/common/host/ac;->h()Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_19

    const-string p4, "ab_feature"

    .line 139
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_19
    invoke-interface {p1}, Lgbsdk/common/host/ac;->z()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-lez p4, :cond_1a

    .line 143
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "abflag"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1a
    invoke-static {p0}, Lcom/apm/applog/AppLog;->isNewUserMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 164
    invoke-static {p0}, Lgbsdk/common/host/abbs;->e(Landroid/content/Context;)Lgbsdk/common/host/abbs;

    move-result-object p0

    .line 165
    iget-object p0, p0, Lgbsdk/common/host/abbs;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p3, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1b
    :goto_1
    return-void
.end method

.method public static a(Lgbsdk/common/host/ap;Lorg/json/JSONObject;Z)[Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, v2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v7, 0x2

    aput-object v6, v3, v7

    sget-object v6, Lgbsdk/common/host/ak;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v7, 0x0

    const-string v8, "87d70e31e333e833b54e0ff7054824b8"

    invoke-static {v3, v7, v6, v5, v8}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 166
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgbsdk/common/host/ap;->E()Lcom/apm/applog/UriConfig;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v3}, Lcom/apm/applog/UriConfig;->getRealUris()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/apm/applog/UriConfig;->getSendUris()[Ljava/lang/String;

    move-result-object v2

    .line 169
    :goto_0
    array-length v3, v2

    .line 170
    new-array v6, v3, [Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/apm/applog/AppLog;->getEncryptAndCompress()Z

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_7

    .line 174
    aget-object v9, v2, v8

    aput-object v9, v6, v8

    if-eqz v7, :cond_2

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v6, v8

    const-string v11, "?tt_data=a"

    invoke-static {v9, v10, v11}, Lgbsdk/common/host/ab;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 177
    :cond_2
    iget-object v9, v0, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    .line 178
    aget-object v10, v6, v8

    sget-object v11, Lgbsdk/common/host/abal;->br:Lgbsdk/common/host/abal;

    invoke-static {v9, v1, v10, v5, v11}, Lgbsdk/common/host/ak;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLgbsdk/common/host/abal;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 179
    aget-object v9, v6, v8

    sget-object v10, Lgbsdk/common/host/aj;->d:[Ljava/lang/String;

    .line 180
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_4

    .line 183
    :cond_3
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 184
    new-instance v11, Ljava/util/HashMap;

    array-length v12, v10

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 185
    array-length v12, v10

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_5

    aget-object v14, v10, v13

    .line 186
    invoke-virtual {v9, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 187
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 188
    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 191
    :cond_5
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 192
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 193
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 194
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 196
    :cond_6
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 197
    :goto_4
    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    return-object v6
.end method
