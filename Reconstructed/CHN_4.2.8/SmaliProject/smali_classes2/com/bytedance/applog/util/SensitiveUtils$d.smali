.class public final Lcom/bytedance/applog/util/SensitiveUtils$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abad$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/util/SensitiveUtils;->getMultiImeiFromSystem(Landroid/content/Context;)Lorg/json/JSONArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/util/SensitiveUtils$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/applog/util/SensitiveUtils$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/SensitiveUtils;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    .line 1
    sget-object v1, Lcom/bytedance/applog/util/SensitiveUtils;->a:Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "[DeviceMeta&READ_PHONE_STATE] Try to get imei and meid info"

    .line 2
    invoke-interface {v0, v1, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/applog/util/SensitiveUtils$d;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/bytedance/applog/util/SensitiveUtils$d;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    :goto_0
    if-ge v2, v0, :cond_2

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v5, v4

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v6, "meid"

    .line 3
    :try_start_1
    invoke-static {v5, v2, v6}, Lcom/bytedance/applog/util/SensitiveUtils;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 4
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :goto_2
    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    :try_start_2
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    const-string v5, "imei"

    .line 5
    :try_start_3
    invoke-static {v4, v2, v5}, Lcom/bytedance/applog/util/SensitiveUtils;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 6
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
