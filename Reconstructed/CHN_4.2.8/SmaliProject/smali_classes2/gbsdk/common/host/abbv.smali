.class public Lgbsdk/common/host/abbv;
.super Lgbsdk/common/host/abbo;
.source "ServerIdLoader.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final aU:Lgbsdk/common/host/abbk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgbsdk/common/host/abbk;Lgbsdk/common/host/abbf;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p3, p3}, Lgbsdk/common/host/abbo;-><init>(ZZZ)V

    .line 3
    iput-object p2, p0, Lgbsdk/common/host/abbv;->aU:Lgbsdk/common/host/abbk;

    return-void
.end method


# virtual methods
.method public m(Lorg/json/JSONObject;)Z
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abbv;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "2555f49d2ca03cd7568051be210040b9"

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
    iget-object v1, p0, Lgbsdk/common/host/abbv;->aU:Lgbsdk/common/host/abbk;

    .line 2
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-string v2, "bd_did"

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {p1, v2, v4}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "install_id"

    .line 10
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v6, p0, Lgbsdk/common/host/abbv;->aU:Lgbsdk/common/host/abbk;

    invoke-virtual {v6}, Lgbsdk/common/host/abbk;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {p1, v2, v5}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ssid"

    .line 14
    invoke-static {p1, v2, v6}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "register_time"

    const-wide/16 v6, 0x0

    .line 16
    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 17
    invoke-static {v5}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-static {v3}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v4}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    cmp-long v1, v8, v6

    if-eqz v1, :cond_2

    .line 21
    iget-object v1, p0, Lgbsdk/common/host/abbv;->aU:Lgbsdk/common/host/abbk;

    .line 22
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    move-wide v6, v8

    .line 23
    :goto_0
    invoke-virtual {p1, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return v0
.end method
