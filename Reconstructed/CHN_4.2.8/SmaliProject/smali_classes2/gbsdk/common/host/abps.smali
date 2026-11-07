.class public Lgbsdk/common/host/abps;
.super Ljava/lang/Thread;
.source "RemotePatchFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abps$ab;
    }
.end annotation


# static fields
.field private static final wl:I = 0x2

.field private static final wm:I = 0x2000000

.field private static final wn:Ljava/lang/String; = "application/json; charset=utf-8"


# instance fields
.field private wo:Lgbsdk/common/host/abps$ab;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abps$ab;)V
    .locals 1

    const-string v0, "RemoteMossFetcher"

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lgbsdk/common/host/abps;->wo:Lgbsdk/common/host/abps$ab;

    return-void
.end method

.method private bh(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-static {p1}, Lgbsdk/common/host/abqh;->bn(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 150
    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 151
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    const-string v1, "Frankie"

    const-string v2, "checkFetchInfo failed."

    .line 154
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private bi(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x5f

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-object v1

    .line 175
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private df()Z
    .locals 2

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 162
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private f(Lorg/json/JSONArray;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 86
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 92
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const-string v4, "Frankie"

    if-lez v0, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 94
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 96
    :try_start_0
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v7, "offline"

    .line 98
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "url"

    .line 100
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "md5"

    .line 101
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "versioncode"

    .line 102
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "backup_urls"

    .line 103
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 104
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 105
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v9, :cond_1

    .line 106
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x0

    .line 107
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_1

    .line 108
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-static {v7, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "support_sub_process"

    .line 113
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v7, "async_load"

    .line 115
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v7, "patch_name"

    .line 116
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-direct {v1, v0}, Lgbsdk/common/host/abps;->bh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    new-instance v7, Lgbsdk/common/host/abqo;

    invoke-direct {v1, v0}, Lgbsdk/common/host/abps;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v7

    move-object v13, v0

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lgbsdk/common/host/abqo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 120
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {v0, v8}, Lgbsdk/common/host/abrt;->f(Ljava/lang/String;I)V

    goto :goto_2

    .line 123
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRemoteData checkFetchInfo not pass, patchName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "handleRemoteData find offline patch"

    .line 126
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v7, "handleRemoteData failed."

    .line 130
    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v7, "RemotePatchFetcher.handleRemoteData"

    .line 131
    invoke-static {v7, v0}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v0, "handleRemoteData notifyToPatch"

    .line 136
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, v1, Lgbsdk/common/host/abps;->wo:Lgbsdk/common/host/abps$ab;

    if-eqz v0, :cond_6

    .line 139
    invoke-interface {v0, v3}, Lgbsdk/common/host/abps$ab;->m(Ljava/util/List;)V

    .line 141
    :cond_6
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abpy;->V(Landroid/content/Context;)Lgbsdk/common/host/abpy;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abpy;->cX()V

    return-void

    .line 87
    :cond_7
    :goto_3
    iget-object v0, v1, Lgbsdk/common/host/abps;->wo:Lgbsdk/common/host/abps$ab;

    if-eqz v0, :cond_8

    .line 88
    invoke-interface {v0}, Lgbsdk/common/host/abps$ab;->cT()V

    :cond_8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "patch"

    const-string v1, "RemotePatchFetcher.run"

    const-string v2, "Frankie"

    const-string v3, "RemotePatchFetcher run"

    .line 43
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lgbsdk/common/host/abrt;->dH()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 47
    :try_start_0
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/common/host/abow;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 50
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 52
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "debug"

    .line 53
    invoke-direct {p0}, Lgbsdk/common/host/abps;->df()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    invoke-static {}, Lgbsdk/common/host/abpz;->cS()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v7

    const/high16 v8, 0x2000000

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v9, "application/json; charset=utf-8"

    invoke-interface {v7, v8, v6, v5, v9}, Lcom/bytedance/frankie/IFrankieConfig;->executePatchRequest(ILjava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v5}, Lgbsdk/common/host/aboz;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "response empty"

    .line 58
    invoke-static {v1, v5}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 61
    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    .line 65
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 66
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 67
    iget-object v6, p0, Lgbsdk/common/host/abps;->wo:Lgbsdk/common/host/abps$ab;

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 68
    iget-object v6, p0, Lgbsdk/common/host/abps;->wo:Lgbsdk/common/host/abps$ab;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgbsdk/common/host/abps$ab;->be(Ljava/lang/String;)V

    .line 73
    :cond_3
    invoke-direct {p0, v5}, Lgbsdk/common/host/abps;->f(Lorg/json/JSONArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v5

    .line 76
    invoke-static {v1, v5}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v6, "RemotePatchFetcher run failed: "

    .line 77
    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 80
    :cond_4
    :goto_2
    iget-object v0, p0, Lgbsdk/common/host/abps;->wo:Lgbsdk/common/host/abps$ab;

    if-eqz v0, :cond_5

    .line 81
    invoke-interface {v0}, Lgbsdk/common/host/abps$ab;->cT()V

    :cond_5
    return-void
.end method
