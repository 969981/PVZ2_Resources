.class public final Lgbsdk/optional/applog/abhi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abfa;


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final b:Lgbsdk/optional/applog/abfa;

.field public c:Lgbsdk/optional/applog/abdk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/optional/applog/abdk<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abfa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgbsdk/optional/applog/abhi$ab;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abhi$ab;-><init>(Lgbsdk/optional/applog/abhi;)V

    iput-object v0, p0, Lgbsdk/optional/applog/abhi;->c:Lgbsdk/optional/applog/abdk;

    iput-object p1, p0, Lgbsdk/optional/applog/abhi;->b:Lgbsdk/optional/applog/abfa;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/optional/applog/abhi;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "940eec3714b351658619375fe342b2ec"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/abhi;->b:Lgbsdk/optional/applog/abfa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgbsdk/optional/applog/abhi;->c:Lgbsdk/optional/applog/abdk;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lgbsdk/optional/applog/abdk;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgbsdk/optional/applog/abhi;->b:Lgbsdk/optional/applog/abfa;

    invoke-interface {v0}, Lgbsdk/optional/applog/abfa;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "OnePlus/Oppo"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abhi;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "b45401340215b5a072d94a454ae1e589"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lgbsdk/optional/applog/abhi;->c:Lgbsdk/optional/applog/abdk;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lgbsdk/optional/applog/abdk;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oaid#OnePlusOaidImpl originSupport -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lgbsdk/optional/applog/abhi;->b:Lgbsdk/optional/applog/abfa;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const-string v1, "Oaid#OnePlusOaidImpl mCallback.support(context) -> "

    invoke-static {v1}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lgbsdk/optional/applog/abhi;->b:Lgbsdk/optional/applog/abfa;

    invoke-interface {v3, p1}, Lgbsdk/optional/applog/abfa;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abhi;->b:Lgbsdk/optional/applog/abfa;

    invoke-interface {v0, p1}, Lgbsdk/optional/applog/abfa;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)Lgbsdk/optional/applog/abfa$ab;
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abhi;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a24cde37308915179d24d962d5164338"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abfa$ab;

    return-object p1

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abhi;->b:Lgbsdk/optional/applog/abfa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/optional/applog/abhi;->c:Lgbsdk/optional/applog/abdk;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lgbsdk/optional/applog/abdk;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgbsdk/optional/applog/abhi;->b:Lgbsdk/optional/applog/abfa;

    invoke-interface {v0, p1}, Lgbsdk/optional/applog/abfa;->b(Landroid/content/Context;)Lgbsdk/optional/applog/abfa$ab;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.heytap.openid"

    const-string v4, "com.heytap.openid.IdentifyService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Oaid#OnePlusOaidImpl getOaid start -> "

    invoke-interface {v4, v5, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lgbsdk/optional/applog/abfo;

    new-instance v4, Lgbsdk/optional/applog/abhi$ac;

    invoke-direct {v4, p0, p1, v2, v3}, Lgbsdk/optional/applog/abhi$ac;-><init>(Lgbsdk/optional/applog/abhi;Landroid/content/Context;J)V

    invoke-direct {v1, p1, v0, v4}, Lgbsdk/optional/applog/abfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Lgbsdk/optional/applog/abfo$ac;)V

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lgbsdk/optional/applog/abfa$ab;

    invoke-direct {v0}, Lgbsdk/optional/applog/abfa$ab;-><init>()V

    iput-object p1, v0, Lgbsdk/optional/applog/abfa$ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abhi;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "c9a6bfba75b6214942b32e7ccd6cf393"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    .line 1
    invoke-static {p1, v3, v4}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "getPackageInfo failed"

    invoke-interface {v3, v0, v5, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    :try_start_1
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Sign package info failed"

    invoke-interface {v3, v0, v4, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method
