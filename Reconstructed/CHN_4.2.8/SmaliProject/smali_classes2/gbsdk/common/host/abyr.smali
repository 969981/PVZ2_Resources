.class public final Lgbsdk/common/host/abyr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static M(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 105
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/volcengine/zeus/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object v0

    .line 106
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_2

    :try_start_0
    const-string v2, "sdk_pkg"

    .line 109
    iget-object v3, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_ver"

    .line 112
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/volcengine/zeus/GlobalParam;->isAutoInstallInternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result v3

    invoke-virtual {v0}, Lcom/volcengine/zeus/plugin/Plugin;->getInternalVersionCode()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "api_ver"

    .line 113
    invoke-virtual {v0}, Lcom/volcengine/zeus/plugin/Plugin;->getApiVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "latest_md5"

    .line 114
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v3

    iget-object v4, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 1250
    iget-object v3, v3, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    const-string v5, "LATEST_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "min_sdk_ver"

    .line 115
    iget v3, v0, Lcom/volcengine/zeus/plugin/Plugin;->mMinVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "max_sdk_ver"

    .line 116
    iget v0, v0, Lcom/volcengine/zeus/plugin/Plugin;->mMaxVersionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "disabled_sdk_ver_list"

    .line 117
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v3

    invoke-virtual {v3, p0}, Lgbsdk/common/host/acam;->cQ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/volcengine/zeus/GlobalParam;->getCustomTag(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "custom_tag"

    .line 120
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method static P(Lorg/json/JSONObject;)Lcom/volcengine/zeus/download/PluginDownloadBean;
    .locals 4

    .line 74
    new-instance v0, Lcom/volcengine/zeus/download/PluginDownloadBean;

    invoke-direct {v0}, Lcom/volcengine/zeus/download/PluginDownloadBean;-><init>()V

    const-string v1, "id"

    .line 75
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mFollowId:J

    const-string v1, "sdk_pkg"

    .line 76
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const-string v1, "md5"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mMd5:Ljava/lang/String;

    const-string v1, "plugin_info"

    .line 78
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->extraInfo:Ljava/lang/String;

    const-string v1, "url"

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mUrl:Ljava/lang/String;

    const-string v1, "flag"

    const/4 v2, 0x2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mFlag:I

    const-string v1, "sdk_ver_code"

    .line 82
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    const-string v1, "custom_msg"

    .line 83
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mCustomMsg:Ljava/lang/String;

    .line 85
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mBackupUrlList:Ljava/util/List;

    const-string v1, "backup_urls"

    .line 86
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 89
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iget-object v3, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mBackupUrlList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static a()Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/volcengine/zeus/GlobalParam;->getHostUrl()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://zeus-api.vemarsdev.com/zeus/client/v2/query"

    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0}, Lgbsdk/common/host/abyr;->M(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lgbsdk/common/host/abyr;->b(Lorg/json/JSONObject;)V

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 49
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)V
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "os_ver"

    invoke-static {p0, v1, v0}, Lgbsdk/common/host/abyr;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_pkg"

    invoke-static {p0, v1, v0}, Lgbsdk/common/host/abyr;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "brand"

    invoke-static {p0, v1, v0}, Lgbsdk/common/host/abyr;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "model"

    invoke-static {p0, v1, v0}, Lgbsdk/common/host/abyr;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "host_abi"

    invoke-static {p0, v1, v0}, Lgbsdk/common/host/abyr;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
