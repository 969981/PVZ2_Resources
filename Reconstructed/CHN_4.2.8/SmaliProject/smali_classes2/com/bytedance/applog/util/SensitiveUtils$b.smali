.class public final Lcom/bytedance/applog/util/SensitiveUtils$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abad$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/util/SensitiveUtils;->getSimSerialNumbers(Landroid/content/Context;)[Ljava/lang/String;
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

    iput-object p1, p0, Lcom/bytedance/applog/util/SensitiveUtils$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/bytedance/applog/util/SensitiveUtils$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/applog/util/SensitiveUtils;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/applog/util/SensitiveUtils$b;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    .line 1
    sget-object v4, Lcom/bytedance/applog/util/SensitiveUtils;->a:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "[DeviceMeta&READ_PHONE_STATE] Try to get active subscription info list."

    :try_start_2
    new-array v6, v1, [Ljava/lang/Object;

    .line 2
    invoke-interface {v3, v4, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x0

    :goto_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_1
    return-object v0

    :catchall_1
    move-exception v2

    move-object v3, v0

    :goto_2
    :try_start_4
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    .line 3
    sget-object v5, Lcom/bytedance/applog/util/SensitiveUtils;->a:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v6, "Get iccid failed"

    :try_start_5
    new-array v7, v1, [Ljava/lang/Object;

    .line 4
    invoke-interface {v4, v5, v6, v2, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :cond_2
    move-object v3, v0

    goto :goto_5

    :cond_3
    const/4 v2, 0x1

    :try_start_6
    new-array v3, v2, [Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v2, p0, Lcom/bytedance/applog/util/SensitiveUtils$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/applog/util/SensitiveUtils;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    .line 5
    sget-object v4, Lcom/bytedance/applog/util/SensitiveUtils;->a:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v5, "[DeviceMeta&READ_PHONE_STATE] Try to get sim serial number."

    :try_start_8
    new-array v6, v1, [Ljava/lang/Object;

    .line 6
    invoke-interface {v2, v4, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bytedance/applog/util/SensitiveUtils$b;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_3

    :cond_4
    :try_start_9
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    :goto_3
    aput-object v2, v3, v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v2

    :try_start_a
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    .line 7
    sget-object v5, Lcom/bytedance/applog/util/SensitiveUtils;->a:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string v6, "Get sim serial number failed"

    :try_start_b
    new-array v7, v1, [Ljava/lang/Object;

    .line 8
    invoke-interface {v4, v5, v6, v2, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v2

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v3, v0

    :goto_4
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    .line 9
    sget-object v5, Lcom/bytedance/applog/util/SensitiveUtils;->a:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "Get accId failed"

    .line 10
    invoke-interface {v4, v5, v6, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    :goto_5
    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0
.end method
