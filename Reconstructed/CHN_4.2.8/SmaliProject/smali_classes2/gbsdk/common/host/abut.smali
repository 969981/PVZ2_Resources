.class public final Lgbsdk/common/host/abut;
.super Ljava/lang/Object;
.source "CommandResultUploader.java"


# static fields
.field private static aKO:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abut;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

.field public volatile b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abut;->aKO:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abut;->a:Ljava/util/Map;

    return-void
.end method

.method public static cK(Ljava/lang/String;)Lgbsdk/common/host/abut;
    .locals 2

    .line 57
    sget-object v0, Lgbsdk/common/host/abut;->aKO:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abut;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lgbsdk/common/host/abut;

    invoke-direct {v0}, Lgbsdk/common/host/abut;-><init>()V

    .line 60
    sget-object v1, Lgbsdk/common/host/abut;->aKO:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static y(Ljava/io/File;)J
    .locals 6

    .line 180
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 184
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 185
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    invoke-static {v4}, Lgbsdk/common/host/abut;->y(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_1
    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    sget-object v1, Lgbsdk/common/host/abwi;->b:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lgbsdk/common/host/abwi;->f:Ljava/lang/String;

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lgbsdk/common/host/abwi;->g:Ljava/lang/String;

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lgbsdk/common/host/abwi;->j:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getUpdateVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lgbsdk/common/host/abwi;->i:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lgbsdk/common/host/abwi;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lgbsdk/common/host/abwi;->d:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lgbsdk/common/host/abwi;->e:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized a(Lgbsdk/common/host/abwh;Ljava/io/File;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v2, "\u547d\u4ee4\u4ea7\u7269\u5df2\u751f\u6210\uff0c\u7b49\u5f85\u4e0a\u4f20"

    .line 113
    iget-object v3, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v3}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lgbsdk/common/host/abuu;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lgbsdk/common/host/abut;->b()V

    .line 1098
    iget-object v2, v0, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    .line 120
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lgbsdk/common/host/abut;->b:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    move-object/from16 v4, p2

    .line 126
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 130
    invoke-static {v3}, Lgbsdk/common/host/abut;->y(Ljava/io/File;)J

    move-result-wide v4

    .line 2075
    iget-object v6, v0, Lgbsdk/common/host/abwh;->d:Lorg/json/JSONObject;

    const-string v7, "wifiOnly"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x200000

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 133
    :goto_0
    iget-object v7, v1, Lgbsdk/common/host/abut;->a:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 135
    iget-object v6, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v6}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lgbsdk/common/host/abvo;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v2, "\u4ea7\u7269\u8d85\u8fc7\u9608\u503c\uff0c\u7b49\u5f85WiFi\u73af\u5883\u6267\u884c. fileTotalSize="

    .line 136
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 137
    invoke-virtual {v3}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v2, v0, v3}, Lgbsdk/common/host/abuu;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 142
    :cond_2
    :try_start_1
    new-instance v4, Lgbsdk/common/host/abut$1;

    invoke-direct {v4, v1}, Lgbsdk/common/host/abut$1;-><init>(Lgbsdk/common/host/abut;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 150
    array-length v13, v3

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_1
    const/4 v4, 0x2

    if-ge v14, v13, :cond_6

    aget-object v16, v3, v14

    .line 151
    iget-object v5, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v5}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6b63\u5728\u4e0a\u4f20:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2078
    sget-boolean v6, Lgbsdk/common/host/abvp;->a:Z

    if-eqz v6, :cond_3

    const-string v6, "ApmInsight"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v9, "postFile: commandId="

    .line 2079
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v12

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "postFile="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v11

    const-string v9, ", uploadMessage="

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    const/4 v4, 0x3

    const-string v9, ", fileType="

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    invoke-static {v6, v7}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2083
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v4, v5

    move-object/from16 v5, v16

    move-object/from16 v6, p3

    move-object v7, v2

    .line 2082
    invoke-static/range {v4 .. v10}, Lgbsdk/common/host/abvt;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6587\u4ef6\u4e0a\u4f20"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    const-string v6, "\u6210\u529f"

    goto :goto_2

    :cond_4
    const-string v6, "\u5931\u8d25"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    iget-object v6, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v6}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lgbsdk/common/host/abuu;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;Ljava/lang/String;)V

    if-nez v4, :cond_5

    const/4 v15, 0x0

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v15, :cond_7

    .line 162
    iget-object v0, v1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u4e0a\u4f20\u6210\u529f"

    const/4 v5, 0x0

    .line 3032
    invoke-static {v0, v2, v3, v4, v5}, Lgbsdk/common/host/abuu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .line 167
    iget-object v0, p0, Lgbsdk/common/host/abut;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lgbsdk/common/host/abut;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method
