.class public final Lgbsdk/common/host/abcq;
.super Ljava/lang/Object;
.source "OnePlusOaidImpl.java"

# interfaces
.implements Lgbsdk/common/host/abdv;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public ce:Lgbsdk/common/host/abdj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abdj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final cw:Lgbsdk/common/host/abdv;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abdv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lgbsdk/common/host/abcq$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abcq$ab;-><init>(Lgbsdk/common/host/abcq;)V

    iput-object v0, p0, Lgbsdk/common/host/abcq;->ce:Lgbsdk/common/host/abdj;

    .line 30
    iput-object p1, p0, Lgbsdk/common/host/abcq;->cw:Lgbsdk/common/host/abdv;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abcq;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "05dc64b25e35ccfcb385960fc31a61a7"

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

    .line 1
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/abcq;->ce:Lgbsdk/common/host/abdj;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abdj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2
    iget-object v1, p0, Lgbsdk/common/host/abcq;->cw:Lgbsdk/common/host/abdv;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v0, p0, Lgbsdk/common/host/abcq;->cw:Lgbsdk/common/host/abdv;

    invoke-interface {v0, p1}, Lgbsdk/common/host/abdv;->b(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public i(Landroid/content/Context;)Lgbsdk/common/host/abdv$ab;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abcq;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c323a102a15d5b7078d9c2139b21364f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/abdv$ab;

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abcq;->cw:Lgbsdk/common/host/abdv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/abcq;->ce:Lgbsdk/common/host/abdj;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abdj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lgbsdk/common/host/abcq;->cw:Lgbsdk/common/host/abdv;

    invoke-interface {v0, p1}, Lgbsdk/common/host/abdv;->i(Landroid/content/Context;)Lgbsdk/common/host/abdv$ab;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    new-instance v1, Lgbsdk/common/host/abcm;

    new-instance v2, Lgbsdk/common/host/abcq$ac;

    invoke-direct {v2, p0, p1}, Lgbsdk/common/host/abcq$ac;-><init>(Lgbsdk/common/host/abcq;Landroid/content/Context;)V

    invoke-direct {v1, p1, v0, v2}, Lgbsdk/common/host/abcm;-><init>(Landroid/content/Context;Landroid/content/Intent;Lgbsdk/common/host/abcm$ac;)V

    .line 26
    invoke-virtual {v1}, Lgbsdk/common/host/abcm;->L()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 27
    new-instance v0, Lgbsdk/common/host/abdv$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abdv$ab;-><init>()V

    .line 28
    iput-object p1, v0, Lgbsdk/common/host/abdv$ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abcq;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "f0cfd39df992db0b259c0d0b14ffe7c1"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/bytedance/apm/common/utility/PackageUtils;->getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 12
    array-length v3, p1

    if-lez v3, :cond_3

    .line 13
    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    :try_start_1
    const-string v3, "SHA1"

    .line 15
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    array-length v4, p1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v1
.end method
