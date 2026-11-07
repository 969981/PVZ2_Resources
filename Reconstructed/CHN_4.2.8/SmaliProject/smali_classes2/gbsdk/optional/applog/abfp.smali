.class public Lgbsdk/optional/applog/abfp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Lorg/json/JSONArray;

.field public static volatile e:Ljava/lang/String;

.field public static f:[Ljava/lang/String;

.field public static g:Ljava/lang/String;


# instance fields
.field public final h:Landroid/content/Context;

.field public i:Lgbsdk/optional/applog/aber;

.field public final j:Lgbsdk/optional/applog/abge;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/bytedance/bdtracker/d;

.field public final m:Lgbsdk/optional/applog/abfl;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lgbsdk/optional/applog/abfl;Lgbsdk/optional/applog/abge;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceParamsProvider"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    iput-object p1, p0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    iput-object p3, p0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object p1, p3, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getLocalTest()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_local"

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    :goto_0
    iput-object p1, p0, Lgbsdk/optional/applog/abfp;->k:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    new-instance p1, Lgbsdk/optional/applog/abct;

    invoke-direct {p1}, Lgbsdk/optional/applog/abct;-><init>()V

    iput-object p4, p0, Lgbsdk/optional/applog/abfp;->j:Lgbsdk/optional/applog/abge;

    new-instance p2, Lgbsdk/optional/applog/abad;

    iget-object p4, p0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 3
    iget-object p4, p4, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 4
    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    .line 5
    iget-object v1, p3, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "snssdk_openudid"

    invoke-direct {p2, p4, v0, v2, v1}, Lgbsdk/optional/applog/abad;-><init>(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    iget-object p4, p0, Lgbsdk/optional/applog/abfp;->j:Lgbsdk/optional/applog/abge;

    .line 7
    iput-object p4, p2, Lgbsdk/optional/applog/aber;->e:Lgbsdk/optional/applog/aber;

    .line 8
    iget-object p2, p3, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAnonymous()Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    new-instance p2, Lgbsdk/optional/applog/abcw;

    invoke-direct {p2, p1}, Lgbsdk/optional/applog/abcw;-><init>(Lgbsdk/optional/applog/abct;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 10
    :cond_1
    iget-object p1, p3, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfp;->a(Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    sget-object v0, Lgbsdk/optional/applog/abfp;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/optional/applog/abfp;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object v1, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isAndroidIdEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "openudid"

    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/abfl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getSecureAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lgbsdk/optional/applog/abfp;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    invoke-virtual {p0, v0, v3}, Lgbsdk/optional/applog/abfp;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sput-object v0, Lgbsdk/optional/applog/abfp;->a:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lgbsdk/optional/applog/abce;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    invoke-virtual {p2, v2, p1}, Lgbsdk/optional/applog/aber;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_1
    :goto_0
    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 7
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 8
    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    const-string v4, "snssdk_openudid"

    invoke-static {v1, v3, v4}, Lgbsdk/optional/applog/abeb;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "openudid"

    const-string v4, "openudid_uuid"

    if-eqz p2, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    :try_start_1
    invoke-interface {v1, v5, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    new-instance v5, Ljava/math/BigInteger;

    const/16 v6, 0x50

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x10

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0xd

    if-lez v5, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-lez v5, :cond_4

    const/16 v7, 0x46

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v4

    :goto_3
    invoke-interface {v1, v3, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-object p1, v2

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lgbsdk/optional/applog/abfp;->j:Lgbsdk/optional/applog/abge;

    invoke-virtual {p2, v5, v2}, Lgbsdk/optional/applog/aber;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v5

    goto :goto_4

    :catchall_0
    move-exception p2

    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 10
    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "getOpenUdid failed"

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4
    return-object p1
.end method

.method public a(Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->j:Lgbsdk/optional/applog/abge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abge;->a(Landroid/accounts/Account;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    sget-object v1, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lgbsdk/optional/applog/aber;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 5

    const-string v0, "clientudid"

    sget-object v1, Lgbsdk/optional/applog/abfp;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lgbsdk/optional/applog/abfp;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 3
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 4
    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    const-string v3, "snssdk_openudid"

    invoke-static {v1, v2, v3}, Lgbsdk/optional/applog/abeb;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgbsdk/optional/applog/abce;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->j:Lgbsdk/optional/applog/abge;

    invoke-virtual {v0, v3, v2}, Lgbsdk/optional/applog/aber;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sput-object v3, Lgbsdk/optional/applog/abfp;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getClientUDID failed"

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/aber;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceParamsProvider#clear clearKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sDeviceId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 6

    sget-object v0, Lgbsdk/optional/applog/abfp;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/optional/applog/abfp;->g:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/applog/util/SensitiveUtils;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    invoke-virtual {v2, v0, v1}, Lgbsdk/optional/applog/aber;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/optional/applog/abfp;->k:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sput-object v1, Lgbsdk/optional/applog/abfp;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "getSerialNumber failed"

    invoke-interface {v2, v3, v5, v1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 6

    sget-object v0, Lgbsdk/optional/applog/abfp;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/applog/util/SensitiveUtils;->getSimSerialNumbers(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    invoke-virtual {v3, v0, v2}, Lgbsdk/optional/applog/aber;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    :cond_1
    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lgbsdk/optional/applog/abfp;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sput-object v2, Lgbsdk/optional/applog/abfp;->f:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    iget-object v4, p0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "getSimSerialNumbers failed"

    invoke-interface {v3, v4, v5, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 6

    sget-object v0, Lgbsdk/optional/applog/abfp;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/optional/applog/abfp;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object v3, v2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isImeiEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "IMEI"

    invoke-virtual {v2, v3}, Lgbsdk/optional/applog/abfl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 2
    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/applog/util/SensitiveUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 3
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getAppImei()Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_1
    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    invoke-virtual {v3, v0, v2}, Lgbsdk/optional/applog/aber;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/optional/applog/abfp;->k:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    sput-object v2, Lgbsdk/optional/applog/abfp;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    iget-object v4, p0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "getUdId failed"

    invoke-interface {v3, v4, v5, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public f()Lorg/json/JSONArray;
    .locals 9

    const-string v0, "id"

    sget-object v1, Lgbsdk/optional/applog/abfp;->d:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object v4, v3, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isImeiEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "IMEI"

    invoke-virtual {v3, v4}, Lgbsdk/optional/applog/abfl;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0

    :cond_2
    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/applog/util/SensitiveUtils;->getMultiImeiFromSystem(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/applog/util/SensitiveUtils;->getMultiImeiFallback(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :cond_4
    iget-object v4, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lgbsdk/optional/applog/aber;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4
    :cond_6
    sput-object v4, Lgbsdk/optional/applog/abfp;->d:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    iget-object v4, p0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "getUdIdList failed"

    invoke-interface {v3, v4, v5, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public g()Ljava/lang/String;
    .locals 2

    sget-object v0, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    const-string v1, ""

    invoke-virtual {v0, v1, v1}, Lgbsdk/optional/applog/aber;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    sget-object v0, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    return-object v0
.end method
