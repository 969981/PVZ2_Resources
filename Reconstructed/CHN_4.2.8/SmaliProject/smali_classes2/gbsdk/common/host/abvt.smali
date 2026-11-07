.class public final Lgbsdk/common/host/abvt;
.super Ljava/lang/Object;
.source "CloudMessageUploadService.java"


# static fields
.field public static a:Ljava/lang/String; = "UTF-8"

.field public static b:Ljava/lang/String; = "filetype"

.field public static c:Ljava/lang/String; = "text/plain"

.field public static dP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abvt;->dP:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v0

    .line 8072
    iget-object v0, v0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 104
    invoke-virtual {v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getCloudUploadUrls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    invoke-static/range {v1 .. v10}, Lgbsdk/common/host/abvt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v1

    .line 13072
    iget-object v1, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 183
    invoke-virtual {v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    sget-object v1, Lgbsdk/common/host/abwi;->b:Ljava/lang/String;

    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 14072
    iget-object v2, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 184
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lgbsdk/common/host/abwi;->c:Ljava/lang/String;

    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 15072
    iget-object v2, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 185
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    invoke-static {}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->getInstance()Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;

    invoke-static {p0}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->getSDKCloud(Ljava/lang/String;)Lcom/apmplus/sdk/cloudmessage/SDKCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->getCloudMessageManager()Lgbsdk/common/host/abwj;

    move-result-object v1

    .line 15086
    iget-object v1, v1, Lgbsdk/common/host/abwj;->aKH:Lgbsdk/common/host/abgm;

    .line 189
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 16072
    iget-object v2, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 191
    :try_start_0
    sget-object v3, Lgbsdk/common/host/abvt;->a:Ljava/lang/String;

    invoke-interface {v1, p1, v3, v0}, Lgbsdk/common/host/abgm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lgbsdk/common/host/abgl;

    move-result-object v0

    const-string p1, "status"

    .line 192
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cid"

    .line 193
    invoke-interface {v0, p1, p3}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "err_msg"

    .line 194
    invoke-interface {v0, p1, p4}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "operate_time"

    .line 195
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "aid"

    .line 196
    invoke-interface {v0, p1, p0}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string p1, "update_version_code"

    .line 198
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getUpdateVersionCode()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "uid"

    .line 200
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object p3

    invoke-virtual {p3}, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    if-nez p2, :cond_3

    if-eqz p7, :cond_3

    .line 206
    invoke-virtual {p7}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 208
    :cond_2
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object p0

    invoke-virtual {p0}, Lgbsdk/common/host/abut;->a()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abvj;->p(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 209
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 210
    sget-object p0, Lgbsdk/common/host/abvt;->b:Ljava/lang/String;

    const-string p1, "command_commonparams"

    invoke-interface {p5, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fileCommon"

    const-string p2, "common_params.txt"

    .line 211
    sget-object p4, Lgbsdk/common/host/abvt;->c:Ljava/lang/String;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    invoke-static {p7}, Lgbsdk/common/host/abvj;->p(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 214
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 215
    sget-object p0, Lgbsdk/common/host/abvt;->b:Ljava/lang/String;

    const-string p1, "command_specificparams"

    invoke-interface {p5, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fileSpecific"

    const-string p2, "specific_params.txt"

    .line 216
    sget-object p4, Lgbsdk/common/host/abvt;->c:Ljava/lang/String;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    :cond_3
    invoke-interface {v0}, Lgbsdk/common/host/abgl;->aM()Lgbsdk/common/host/abgj;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 17029
    iget p0, p0, Lgbsdk/common/host/abgj;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p2

    move v1, p3

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 127
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v3

    .line 9072
    iget-object v3, v3, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 127
    invoke-virtual {v3}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    sget-object v3, Lgbsdk/common/host/abwi;->b:Ljava/lang/String;

    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v4

    .line 10072
    iget-object v4, v4, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 128
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v3, Lgbsdk/common/host/abwi;->c:Ljava/lang/String;

    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v4

    .line 11072
    iget-object v4, v4, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 129
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    invoke-static {}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->getInstance()Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;

    invoke-static {p0}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->getSDKCloud(Ljava/lang/String;)Lcom/apmplus/sdk/cloudmessage/SDKCloud;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->getCloudMessageManager()Lgbsdk/common/host/abwj;

    move-result-object v3

    .line 11086
    iget-object v3, v3, Lgbsdk/common/host/abwj;->aKH:Lgbsdk/common/host/abgm;

    .line 132
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v4

    .line 12072
    iget-object v4, v4, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 134
    :try_start_0
    sget-object v5, Lgbsdk/common/host/abvt;->a:Ljava/lang/String;

    move-object v6, p1

    invoke-interface {v3, p1, v5, v2}, Lgbsdk/common/host/abgm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lgbsdk/common/host/abgl;

    move-result-object v2

    const-string v3, "status"

    .line 135
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cid"

    move-object/from16 v5, p5

    .line 136
    invoke-interface {v2, v3, v5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "err_msg"

    move-object/from16 v5, p6

    .line 137
    invoke-interface {v2, v3, v5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "operate_time"

    .line 138
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string v3, "aid"

    .line 141
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "update_version_code"

    .line 142
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getUpdateVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "uid"

    .line 144
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    if-nez v1, :cond_3

    if-eqz p9, :cond_3

    .line 150
    invoke-virtual/range {p9 .. p9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    :cond_2
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v1

    invoke-virtual {v1}, Lgbsdk/common/host/abut;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abvj;->p(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 153
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 154
    sget-object v1, Lgbsdk/common/host/abvt;->b:Ljava/lang/String;

    const-string v3, "command_commonparams"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "fileCommon"

    const-string v8, "common_params.txt"

    .line 155
    sget-object v10, Lgbsdk/common/host/abvt;->c:Ljava/lang/String;

    move-object v6, v2

    invoke-interface/range {v6 .. v11}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    invoke-static/range {p9 .. p9}, Lgbsdk/common/host/abvj;->p(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 158
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 159
    sget-object v1, Lgbsdk/common/host/abvt;->b:Ljava/lang/String;

    const-string v3, "command_specificparams"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "fileSpecific"

    const-string v8, "specific_params.txt"

    .line 160
    sget-object v10, Lgbsdk/common/host/abvt;->c:Ljava/lang/String;

    move-object v6, v2

    invoke-interface/range {v6 .. v11}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    sget-object v3, Lgbsdk/common/host/abvt;->b:Ljava/lang/String;

    move-object/from16 v4, p4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "file"

    .line 165
    sget-object v4, Lgbsdk/common/host/abvt;->c:Ljava/lang/String;

    invoke-interface {v2, v3, p2, v4, v1}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    .line 166
    invoke-interface {v2}, Lgbsdk/common/host/abgl;->aM()Lgbsdk/common/host/abgj;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13029
    iget v0, v0, Lgbsdk/common/host/abgj;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url and file not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lgbsdk/common/host/abvq;)Z
    .locals 8

    .line 6058
    iget-object v0, p0, Lgbsdk/common/host/abvq;->p:Ljava/lang/String;

    .line 7058
    iget-object v1, p0, Lgbsdk/common/host/abvq;->p:Ljava/lang/String;

    .line 88
    invoke-static {v1}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v1

    .line 7072
    iget-object v1, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 88
    invoke-virtual {v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getCloudUploadUrls()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    iget v2, p0, Lgbsdk/common/host/abvq;->bd:I

    iget-object v3, p0, Lgbsdk/common/host/abvq;->k:Ljava/lang/String;

    iget-object v4, p0, Lgbsdk/common/host/abvq;->m:Ljava/lang/String;

    .line 91
    iget-wide v5, p0, Lgbsdk/common/host/abvq;->aN:J

    iget-object v7, p0, Lgbsdk/common/host/abvq;->aKS:Ljava/util/HashMap;

    .line 87
    invoke-static/range {v0 .. v7}, Lgbsdk/common/host/abvt;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public static b(Lgbsdk/common/host/abvr;)Z
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1110
    :goto_0
    iget-object v3, p0, Lgbsdk/common/host/abvr;->dW:Ljava/util/List;

    .line 45
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 46
    new-instance v3, Ljava/io/File;

    .line 2110
    iget-object v4, p0, Lgbsdk/common/host/abvr;->dW:Ljava/util/List;

    .line 46
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3110
    iget-object v4, p0, Lgbsdk/common/host/abvr;->dW:Ljava/util/List;

    .line 51
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    .line 54
    :goto_1
    iget-boolean v5, p0, Lgbsdk/common/host/abvr;->g:Z

    if-eqz v5, :cond_1

    .line 55
    iget v4, p0, Lgbsdk/common/host/abvq;->bd:I

    :cond_1
    move v7, v4

    .line 4058
    iget-object v4, p0, Lgbsdk/common/host/abvq;->p:Ljava/lang/String;

    .line 5058
    iget-object v5, p0, Lgbsdk/common/host/abvq;->p:Ljava/lang/String;

    .line 59
    invoke-static {v5}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v5

    .line 5072
    iget-object v5, v5, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 59
    invoke-virtual {v5}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getCloudUploadUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 60
    iget-object v8, p0, Lgbsdk/common/host/abvr;->a:Ljava/lang/String;

    .line 61
    iget-object v9, p0, Lgbsdk/common/host/abvq;->k:Ljava/lang/String;

    iget-object v10, p0, Lgbsdk/common/host/abvq;->m:Ljava/lang/String;

    iget-wide v11, p0, Lgbsdk/common/host/abvq;->aN:J

    .line 62
    iget-object v13, p0, Lgbsdk/common/host/abvq;->aKS:Ljava/util/HashMap;

    move-object v6, v3

    .line 58
    invoke-static/range {v4 .. v13}, Lgbsdk/common/host/abvt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    iget-boolean v5, p0, Lgbsdk/common/host/abvr;->d:Z

    if-eqz v5, :cond_2

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    if-nez v1, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method
