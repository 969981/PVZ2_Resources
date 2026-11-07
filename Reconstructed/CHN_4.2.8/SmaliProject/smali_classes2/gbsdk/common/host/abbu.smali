.class public Lgbsdk/common/host/abbu;
.super Lgbsdk/common/host/abbo;
.source "SigHashLoader.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abbo;-><init>(ZZ)V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/abbu;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public m(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abbu;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "cf63bc604bc6d045003a42b535537f99"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lgbsdk/common/host/abbu;->e:Landroid/content/Context;

    iget-object v4, p0, Lgbsdk/common/host/abbu;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/apm/common/utility/PackageUtils;->getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 3
    invoke-static {v3}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 5
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 6
    aget-object v2, v3, v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 9
    invoke-static {v1}, Lgbsdk/common/host/abav;->c([B)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "sig_hash"

    .line 13
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return v0
.end method
