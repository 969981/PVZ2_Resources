.class public Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;
.super Ljava/lang/Object;
.source "TTNetInitMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final HTTP_CALLBACK_ADDRESS:Ljava/lang/String; = "http_callback"

.field public static final LOG_TYPE:Ljava/lang/String; = "ttnet_init"

.field private static final MSBridgeML:Ljava/lang/String; = "com.bytedance.mobsec.metasec.ml.MSB"

.field private static final MSBridgeMethod:Ljava/lang/String; = "a"

.field private static final MSBridgeOV:Ljava/lang/String; = "com.bytedance.mobsec.metasec.ov.MSB"

.field public static final TAG:Ljava/lang/String;

.field private static final TTNET_TYPE:I = 0x1

.field private static final WS_CALLBACK_ADDRESS:Ljava/lang/String; = "ws_callback"

.field public static volatile sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;


# instance fields
.field public builderBuildDuration:J

.field public channelInitDuration:J

.field public contextBuilderDuration:J

.field public createEngineEndTime:J

.field public createEngineStartTime:J

.field public executeWaitingTaskEndTime:J

.field public initMSSdkDuration:J

.field public initMetasecEndTime:J

.field public initMetasecStartTime:J

.field public initTTNetEndTime:J

.field public initTTNetStartTime:J

.field public initThreadEndTime:J

.field public initThreadStartTime:J

.field public installCertDuration:J

.field public isMainProcess:Z

.field public loadCronetSoDuration:J

.field public mode:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

.field public nativeInitThreadEndTime:J

.field public nativeInitThreadStartTime:J

.field public netThreadPriority:I

.field public netlogInitDuration:J

.field public networkThreadEndTime:J

.field public networkThreadStartTime:J

.field public nqeDetectDuration:J

.field public nqeInitDuration:J

.field public preconnectDuration:J

.field public preconnectStartTime:J

.field public prefsInitDuration:J

.field public sslSessionDuration:J

.field public tncConfigDuration:J

.field public ttnetConfigDuration:J

.field public updateAppinfoDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ii:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    iput-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->mode:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->isMainProcess:Z

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->builderBuildDuration:J

    .line 78
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->loadCronetSoDuration:J

    .line 81
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->nqeInitDuration:J

    .line 82
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->prefsInitDuration:J

    .line 83
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->channelInitDuration:J

    .line 84
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->contextBuilderDuration:J

    .line 85
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->tncConfigDuration:J

    .line 86
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->updateAppinfoDuration:J

    .line 87
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->netlogInitDuration:J

    .line 88
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->nqeDetectDuration:J

    .line 89
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->preconnectDuration:J

    .line 90
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->sslSessionDuration:J

    .line 91
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->ttnetConfigDuration:J

    .line 92
    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->installCertDuration:J

    return-void
.end method

.method public static inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;
    .locals 2

    .line 97
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    if-nez v0, :cond_1

    .line 98
    const-class v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    invoke-direct {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;-><init>()V

    sput-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    .line 102
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 104
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    return-object v0
.end method

.method private setCallbackAddress(Landroid/content/Context;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bytedance.mobsec.metasec.ml.MSB"

    .line 129
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v2, "com.bytedance.mobsec.metasec.ov.MSB"

    .line 136
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_0
    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    .line 147
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v5, "http_callback"

    .line 149
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ws_callback"

    .line 150
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "a"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 152
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, v3

    invoke-virtual {v1, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    aput-object v0, v5, v3

    invoke-virtual {p2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method private validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V
    .locals 1

    cmp-long v0, p3, p5

    if-lez v0, :cond_0

    const/4 p3, -0x1

    .line 222
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    sub-long/2addr p5, p3

    .line 224
    invoke-virtual {p1, p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public initMSSdk(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 109
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ws address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initMetasecStartTime:J

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->setCallbackAddress(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 115
    sget-object p1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->TAG:Ljava/lang/String;

    const-string p2, "init mssdk failed."

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initMetasecEndTime:J

    :cond_2
    :goto_0
    return-void
.end method

.method public initMSSdkFromTTNet(Landroid/content/Context;)V
    .locals 4

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, p1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->setCallbackAddress(Landroid/content/Context;Ljava/util/List;)Z

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initMSSdkDuration:J

    return-void
.end method

.method public isPreOrForceInitCronet()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->mode:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ik:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->mode:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->il:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 10

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 164
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 165
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "mode"

    .line 167
    iget-object v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->mode:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    iget v3, v3, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->im:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "is_main_process"

    .line 168
    iget-boolean v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->isMainProcess:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "net_thread_priority"

    .line 169
    iget v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->netThreadPriority:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ttnet_start"

    .line 170
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetStartTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ttnet_end"

    .line 171
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetEndTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "engine_start"

    .line 172
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->createEngineStartTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "engine_end"

    .line 173
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->createEngineEndTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "init_start"

    .line 174
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initThreadStartTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "init_end"

    .line 175
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initThreadEndTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "network_start"

    .line 176
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->networkThreadStartTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "network_end"

    .line 177
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->networkThreadEndTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "exec_wait_end"

    .line 178
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->executeWaitingTaskEndTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "preconnect_start"

    .line 179
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->preconnectStartTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "builder_build"

    .line 181
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->builderBuildDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "load_cronet"

    .line 182
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->loadCronetSoDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "init_mssdk"

    .line 183
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initMSSdkDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "init_ttnet"

    .line 184
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetStartTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetEndTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v4, "init_metasec"

    .line 185
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initMetasecStartTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initMetasecEndTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v4, "create_engine"

    .line 186
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->createEngineStartTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->createEngineEndTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v4, "init_thread"

    .line 187
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initThreadStartTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initThreadEndTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v4, "native_init_thread"

    .line 188
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->nativeInitThreadStartTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->nativeInitThreadEndTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v4, "network_thread"

    .line 190
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->networkThreadStartTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->networkThreadEndTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v4, "exec_tasks"

    .line 191
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->networkThreadEndTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->executeWaitingTaskEndTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v4, "init_total"

    .line 192
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetStartTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->networkThreadEndTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v4, "init_preconnect"

    .line 193
    iget-wide v5, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetStartTime:J

    iget-wide v7, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->preconnectStartTime:J

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJ)V

    const-string v2, "nqe_init"

    .line 196
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->nqeInitDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "prefs_init"

    .line 197
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->prefsInitDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "channel_init"

    .line 198
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->channelInitDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "context_build"

    .line 199
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->contextBuilderDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "tnc_config"

    .line 200
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->tncConfigDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "update_appinfo"

    .line 201
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->updateAppinfoDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "netlog_init"

    .line 202
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->netlogInitDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "nqe_detect"

    .line 203
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->nqeDetectDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "preconnect"

    .line 204
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->preconnectDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ssl_session"

    .line 205
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->sslSessionDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ttnet_config"

    .line 206
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->ttnetConfigDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "install_cert"

    .line 207
    iget-wide v3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->installCertDuration:J

    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ttnet_timestamp"

    .line 209
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ttnet_duration"

    .line 210
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :catch_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cronet init metrics json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
