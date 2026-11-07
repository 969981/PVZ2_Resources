.class public Lgbsdk/optional/applog/abcf;
.super Lgbsdk/optional/applog/abcq;
.source ""


# instance fields
.field public final a:Lgbsdk/optional/applog/abfl;

.field public final b:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfl;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgbsdk/optional/applog/abcq;-><init>(ZZ)V

    iput-object p1, p0, Lgbsdk/optional/applog/abcf;->b:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lgbsdk/optional/applog/abcf;->a:Lgbsdk/optional/applog/abfl;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Build"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    const-string v0, "platform"

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_lib"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "device_model"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "device_brand"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "device_manufacturer"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/optional/applog/abcf;->a:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isCPUAbiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "cpu_abi"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/16 v0, 0x1d

    const-string v2, "sdk_target_version"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "git_hash"

    const-string v2, "d0c9d02"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    sget-object v0, Lgbsdk/optional/applog/abbe;->c:Lgbsdk/optional/applog/abcj;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lgbsdk/optional/applog/abcj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "os_version"

    const-string v4, "os_api"

    const-string v5, "os"

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lgbsdk/optional/applog/abcf;->a:Lgbsdk/optional/applog/abfl;

    .line 5
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isHarmonyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Harmony"

    .line 7
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "hw_sc.build.os.apiversion"

    invoke-static {v0}, Lgbsdk/optional/applog/abbr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hw_sc.build.platform.version"

    invoke-static {v0}, Lgbsdk/optional/applog/abbr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lgbsdk/optional/applog/abcf;->b:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "loadHarmonyInfo failed"

    .line 9
    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
