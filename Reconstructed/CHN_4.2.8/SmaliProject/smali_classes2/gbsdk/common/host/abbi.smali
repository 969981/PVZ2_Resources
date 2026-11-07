.class public final Lgbsdk/common/host/abbi;
.super Lgbsdk/common/host/abbo;
.source "CdidLoader.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final aU:Lgbsdk/common/host/abbk;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abbk;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abbo;-><init>(ZZ)V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/abbi;->aU:Lgbsdk/common/host/abbk;

    return-void
.end method


# virtual methods
.method public m(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abbi;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "4f0bd14abdb67f44aff68a95d6faa4ae"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abbi;->aU:Lgbsdk/common/host/abbk;

    .line 2
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    .line 3
    invoke-static {v1}, Lgbsdk/common/host/abec;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "cdid"

    if-nez v2, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 7
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    return v0
.end method
