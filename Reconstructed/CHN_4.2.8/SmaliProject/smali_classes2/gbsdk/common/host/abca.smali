.class public Lgbsdk/common/host/abca;
.super Lgbsdk/common/host/abbo;
.source "PackageLoader.java"


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
    iput-object p1, p0, Lgbsdk/common/host/abca;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    return-void
.end method


# virtual methods
.method public m(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abca;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "6cafc269b96f9b44bde9ba83eb8ea260"

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
    iget-object v1, p0, Lgbsdk/common/host/abca;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 3
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getZiJieCloudPkg()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "package"

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const-string v4, "has zijie pkg"

    .line 7
    invoke-static {v4, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 9
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getZiJieCloudPkg()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "real_package_name"

    .line 11
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :goto_0
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abca;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/apm/common/utility/PackageUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 17
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 18
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "app_version"

    if-nez v2, :cond_2

    .line 20
    :try_start_1
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 21
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 24
    :cond_2
    iget-object v2, p0, Lgbsdk/common/host/abca;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/apm/common/utility/PackageUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :goto_1
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 28
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "app_version_minor"

    if-nez v2, :cond_3

    .line 30
    :try_start_2
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 31
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const-string v2, ""

    .line 34
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :goto_2
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 38
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getVersionCode()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "version_code"

    if-eqz v2, :cond_4

    .line 39
    :try_start_3
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 40
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getVersionCode()I

    move-result v2

    .line 41
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 43
    :cond_4
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    :goto_3
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 47
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getUpdateVersionCode()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "update_version_code"

    if-eqz v2, :cond_5

    .line 48
    :try_start_4
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 49
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getUpdateVersionCode()I

    move-result v2

    .line 50
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    .line 52
    :cond_5
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    :goto_4
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 56
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getManifestVersionCode()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v3, "manifest_version_code"

    if-eqz v2, :cond_6

    .line 57
    :try_start_5
    iget-object v1, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 58
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getManifestVersionCode()I

    move-result v1

    .line 59
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    .line 61
    :cond_6
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    :goto_5
    iget-object v1, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 65
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_7

    const-string v1, "app_name"

    .line 67
    :try_start_6
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    .line 68
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v2}, Lcom/apm/applog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_7
    iget-object v1, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_8

    const-string v1, "tweaked_channel"

    .line 72
    :try_start_7
    iget-object v2, p0, Lgbsdk/common/host/abca;->aV:Lgbsdk/common/host/abbk;

    invoke-virtual {v2}, Lgbsdk/common/host/abbk;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_8
    iget-object v1, p0, Lgbsdk/common/host/abca;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 76
    iget-object v1, p0, Lgbsdk/common/host/abca;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-lez v1, :cond_9

    const-string v2, "display_name"

    .line 78
    :try_start_8
    iget-object v3, p0, Lgbsdk/common/host/abca;->e:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_9
    return v0

    :catchall_0
    move-exception p1

    .line 83
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    return v0
.end method
