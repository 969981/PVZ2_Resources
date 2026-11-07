.class public Lgbsdk/common/host/abbl;
.super Lgbsdk/common/host/abbo;
.source "ConfigLoader.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final aV:Lgbsdk/common/host/abbk;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgbsdk/common/host/abbk;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lgbsdk/common/host/abbo;-><init>(ZZ)V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/abbl;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    return-void
.end method


# virtual methods
.method public m(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abbl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "694f2a42c3768564a383cc3e5f4203a5"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/16 v1, 0x4ede

    const-string v2, "sdk_version"

    .line 1
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2
    sget v1, Lgbsdk/common/host/abdn;->c:I

    const-string v2, "sdk_version_code"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdk_version_name"

    const-string v2, "0.2.1"

    .line 3
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 6
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getNotReuqestSender()Z

    move-result v1

    const-string v2, "not_request_sender"

    .line 7
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aid"

    invoke-static {p1, v2, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 10
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getReleaseBuild()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release_build"

    .line 11
    invoke-static {p1, v2, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 13
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-string v2, "user_agent"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {p1, v2, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 16
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    const-string v2, "ab_sdk_version"

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {p1, v2, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 20
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getGoogleAid()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {}, Lcom/apm/applog/AppLog;->isGAIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    iget-object v1, p0, Lgbsdk/common/host/abbl;->e:Landroid/content/Context;

    iget-object v2, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    invoke-static {v1, v2}, Lgbsdk/common/host/abas;->b(Landroid/content/Context;Lgbsdk/common/host/abbk;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "google_aid"

    .line 26
    invoke-static {p1, v2, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 29
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "app_language"

    if-eqz v2, :cond_2

    .line 31
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 32
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_2
    invoke-static {p1, v4, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 35
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "app_region"

    if-eqz v2, :cond_3

    .line 37
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 38
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_3
    invoke-static {p1, v4, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 42
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    const-string v2, "app_track"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 45
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 47
    invoke-static {v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 51
    :cond_4
    :goto_0
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 52
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    const-string v2, "header_custom_info"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 55
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "_debug_flag"

    .line 56
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "custom"

    .line 57
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 59
    invoke-static {v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 62
    :cond_5
    :goto_1
    iget-object v1, p0, Lgbsdk/common/host/abbl;->aV:Lgbsdk/common/host/abbk;

    .line 63
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    const-string v2, "user_unique_id"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 65
    invoke-static {p1, v2, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v0
.end method
