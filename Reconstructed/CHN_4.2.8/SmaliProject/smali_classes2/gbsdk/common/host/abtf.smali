.class public Lgbsdk/common/host/abtf;
.super Ljava/lang/Object;
.source "TTStateConfig.java"

# interfaces
.implements Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abtf$ac;,
        Lgbsdk/common/host/abtf$ab;
    }
.end annotation


# static fields
.field private static aGZ:Lgbsdk/common/host/abtf; = null

.field private static final aHa:Ljava/lang/String; = "tt_state_config"

.field private static final aHb:Ljava/lang/String; = "tnc_delay_config"

.field static final aHe:Ljava/lang/String; = "app_delay_enable"

.field static final aHf:Ljava/lang/String; = "app_delay_use_black_list"

.field static final aHg:Ljava/lang/String; = "app_delay_whitelist_delay_time"

.field static final aHh:Ljava/lang/String; = "app_delay_white_list"

.field static final aHi:Ljava/lang/String; = "app_delay_black_list"

.field private static final aHr:Ljava/lang/String; = "com.bytedance.ttnet.config.appconfig.SYNC_APP_DELAY_CONFIG_ACTION"

.field private static sPackageName:Ljava/lang/String;


# instance fields
.field private final aHc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;",
            "Lgbsdk/common/host/abtf$ab;",
            ">;"
        }
    .end annotation
.end field

.field private aHd:Ljava/lang/String;

.field private aHj:Z

.field private aHk:Z

.field private aHl:I

.field private aHm:I

.field private aHn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aHo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final aHp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final aHq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mContext:Landroid/content/Context;

.field private final mIsMainProcess:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abtf;->aHc:Ljava/util/Map;

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lgbsdk/common/host/abtf;->aHd:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lgbsdk/common/host/abtf;->aHj:Z

    .line 57
    iput-boolean v0, p0, Lgbsdk/common/host/abtf;->aHk:Z

    const/16 v1, 0x3e8

    .line 58
    iput v1, p0, Lgbsdk/common/host/abtf;->aHl:I

    const/16 v1, 0x64

    .line 59
    iput v1, p0, Lgbsdk/common/host/abtf;->aHm:I

    .line 60
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abtf;->aHn:Ljava/util/Set;

    .line 61
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abtf;->aHo:Ljava/util/Map;

    .line 62
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abtf;->aHp:Ljava/util/Map;

    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lgbsdk/common/host/abtf;->aHq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abtf;->mContext:Landroid/content/Context;

    .line 119
    iput-boolean p2, p0, Lgbsdk/common/host/abtf;->mIsMainProcess:Z

    return-void
.end method

.method private L(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "tt_req_delay_config"

    .line 200
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 202
    iget-object p1, p0, Lgbsdk/common/host/abtf;->aHc:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 207
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 208
    new-instance v2, Lgbsdk/common/host/abtf$ab;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgbsdk/common/host/abtf$ab;-><init>(Lgbsdk/common/host/abtf$1;)V

    .line 209
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v4, -0x2

    const-string v5, "state"

    .line 213
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 216
    sget-object v4, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ia:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 218
    sget-object v4, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ib:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    goto :goto_1

    :cond_3
    if-ne v4, v6, :cond_4

    .line 220
    sget-object v4, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ic:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 222
    sget-object v4, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ie:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 224
    sget-object v4, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->if:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    :goto_1
    const-string v5, "bl_with_delay_ms"

    .line 230
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const/16 v8, 0x3e8

    if-nez v7, :cond_7

    .line 231
    iput-boolean v6, v2, Lgbsdk/common/host/abtf$ab;->aHs:Z

    .line 232
    iput-boolean v6, v2, Lgbsdk/common/host/abtf$ab;->aHt:Z

    .line 233
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 234
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 235
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 236
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 237
    iget-object v9, v2, Lgbsdk/common/host/abtf$ab;->aHu:Ljava/util/Map;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v5, "bl_disable_time_ms"

    .line 239
    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lgbsdk/common/host/abtf$ab;->aHw:I

    goto :goto_4

    :cond_7
    const-string v5, "wl"

    .line 240
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 241
    iput-boolean v6, v2, Lgbsdk/common/host/abtf$ab;->aHs:Z

    .line 242
    iput-boolean v0, v2, Lgbsdk/common/host/abtf$ab;->aHt:Z

    .line 243
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_8

    const/4 v6, 0x0

    .line 245
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 246
    iget-object v7, v2, Lgbsdk/common/host/abtf$ab;->aHv:Ljava/util/Set;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    const/16 v5, 0x64

    const-string v6, "delay_time_ms"

    .line 249
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Lgbsdk/common/host/abtf$ab;->aHx:I

    const-string v5, "wl_disable_time_ms"

    .line 250
    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lgbsdk/common/host/abtf$ab;->aHy:I

    .line 253
    :cond_9
    :goto_4
    iget-object v3, p0, Lgbsdk/common/host/abtf;->aHc:Ljava/util/Map;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private declared-synchronized a(Lgbsdk/common/host/abtf$ab;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 258
    :try_start_0
    iput-boolean v0, p0, Lgbsdk/common/host/abtf;->aHk:Z

    .line 259
    iget-object v1, p0, Lgbsdk/common/host/abtf;->aHo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/16 v1, 0x64

    .line 260
    iput v1, p0, Lgbsdk/common/host/abtf;->aHm:I

    .line 261
    iget-object v1, p0, Lgbsdk/common/host/abtf;->aHn:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/16 v1, 0x3e8

    .line 262
    iput v1, p0, Lgbsdk/common/host/abtf;->aHl:I

    .line 263
    iget-object v1, p0, Lgbsdk/common/host/abtf;->aHp:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_0

    .line 266
    iput-boolean v0, p0, Lgbsdk/common/host/abtf;->aHj:Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p1, Lgbsdk/common/host/abtf$ab;->aHv:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 268
    iput-boolean v1, p0, Lgbsdk/common/host/abtf;->aHj:Z

    .line 269
    iget v0, p1, Lgbsdk/common/host/abtf$ab;->aHx:I

    iput v0, p0, Lgbsdk/common/host/abtf;->aHm:I

    .line 270
    iget-object v0, p1, Lgbsdk/common/host/abtf$ab;->aHv:Ljava/util/Set;

    iput-object v0, p0, Lgbsdk/common/host/abtf;->aHn:Ljava/util/Set;

    .line 271
    iget p1, p1, Lgbsdk/common/host/abtf$ab;->aHy:I

    iput p1, p0, Lgbsdk/common/host/abtf;->aHl:I

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p1, Lgbsdk/common/host/abtf$ab;->aHu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iput-boolean v1, p0, Lgbsdk/common/host/abtf;->aHj:Z

    .line 274
    iput-boolean v1, p0, Lgbsdk/common/host/abtf;->aHk:Z

    .line 275
    iget-object v0, p1, Lgbsdk/common/host/abtf$ab;->aHu:Ljava/util/Map;

    iput-object v0, p0, Lgbsdk/common/host/abtf;->aHo:Ljava/util/Map;

    .line 276
    iget p1, p1, Lgbsdk/common/host/abtf$ab;->aHw:I

    iput p1, p0, Lgbsdk/common/host/abtf;->aHl:I

    .line 278
    :cond_2
    :goto_0
    invoke-direct {p0}, Lgbsdk/common/host/abtf;->hg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, ","

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static aI(Landroid/content/Context;)Lgbsdk/common/host/abtf;
    .locals 4

    .line 93
    const-class v0, Lgbsdk/common/host/abtf;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abtf;->aGZ:Lgbsdk/common/host/abtf;

    if-nez v1, :cond_1

    .line 95
    invoke-static {p0}, Lgbsdk/common/host/able;->N(Landroid/content/Context;)Z

    move-result v1

    .line 96
    new-instance v2, Lgbsdk/common/host/abtf;

    invoke-direct {v2, p0, v1}, Lgbsdk/common/host/abtf;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lgbsdk/common/host/abtf;->aGZ:Lgbsdk/common/host/abtf;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lgbsdk/common/host/abtf;->sPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 99
    sget-object p0, Lgbsdk/common/host/abtf;->aGZ:Lgbsdk/common/host/abtf;

    invoke-static {p0}, Lcom/bytedance/retrofit2/SsHttpCall;->setThrottleControl(Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;)V

    goto :goto_1

    .line 101
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.bytedance.ttnet.config.appconfig.SYNC_APP_DELAY_CONFIG_ACTION"

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    new-instance v2, Lgbsdk/common/host/abtf$ac;

    invoke-direct {v2}, Lgbsdk/common/host/abtf$ac;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 106
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    :goto_0
    invoke-static {}, Lgbsdk/common/host/abte;->hi()Lgbsdk/common/host/abte;

    move-result-object p0

    .line 110
    invoke-static {p0}, Lcom/bytedance/retrofit2/SsHttpCall;->setThrottleControl(Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;)V

    .line 113
    :cond_1
    :goto_1
    sget-object p0, Lgbsdk/common/host/abtf;->aGZ:Lgbsdk/common/host/abtf;

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 114
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static d(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 134
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 139
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private hd()V
    .locals 3

    .line 193
    iget-object v0, p0, Lgbsdk/common/host/abtf;->mContext:Landroid/content/Context;

    const-string v1, "tt_state_config"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lgbsdk/common/host/abtf;->aHd:Ljava/lang/String;

    const-string v2, "tnc_delay_config"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-static {v0}, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private hg()V
    .locals 8

    .line 304
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 306
    iget-boolean v1, p0, Lgbsdk/common/host/abtf;->aHj:Z

    const-string v2, "app_delay_enable"

    const/4 v3, 0x1

    .line 307
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 309
    :cond_0
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :goto_0
    iget-boolean v1, p0, Lgbsdk/common/host/abtf;->aHk:Z

    const-string v2, "app_delay_use_black_list"

    if-eqz v1, :cond_1

    .line 312
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 314
    :cond_1
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :goto_1
    iget v1, p0, Lgbsdk/common/host/abtf;->aHm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_delay_whitelist_delay_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lgbsdk/common/host/abtf;->aHn:Ljava/util/Set;

    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    array-length v4, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, v1, v6

    .line 323
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 325
    :cond_2
    array-length v1, v1

    const-string v4, "app_delay_white_list"

    if-lez v1, :cond_3

    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v5, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v1, ""

    .line 328
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :goto_3
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/common/host/abtf;->aHo:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 333
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_delay_black_list"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    iget-object v2, p0, Lgbsdk/common/host/abtf;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/ttnet/ITTNetDepend;->saveMapToProvider(Landroid/content/Context;Ljava/util/Map;)V

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bytedance.ttnet.config.appconfig.SYNC_APP_DELAY_CONFIG_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    sget-object v1, Lgbsdk/common/host/abtf;->sPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 340
    sget-object v1, Lgbsdk/common/host/abtf;->sPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    :cond_4
    iget-object v1, p0, Lgbsdk/common/host/abtf;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic hh()V
    .locals 1

    .line 287
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ig:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    invoke-virtual {p0, v0}, Lgbsdk/common/host/abtf;->setAppDelayState(Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;)V

    return-void
.end method

.method public static synthetic lambda$ZeZOtx9Pq9jqreyAI6qkuaH6RkQ(Lgbsdk/common/host/abtf;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/abtf;->hh()V

    return-void
.end method


# virtual methods
.method public K(Lorg/json/JSONObject;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abtf;->aHd:Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Lgbsdk/common/host/abtf;->hd()V

    .line 180
    invoke-direct {p0, p1}, Lgbsdk/common/host/abtf;->L(Lorg/json/JSONObject;)V

    .line 189
    iget-object p1, p0, Lgbsdk/common/host/abtf;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lgbsdk/common/host/abtf;->aI(Landroid/content/Context;)Lgbsdk/common/host/abtf;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->getAppDelayState()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abtf;->setAppDelayState(Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;)V

    return-void
.end method

.method public getDelayTimeByApp(Ljava/lang/String;)I
    .locals 4

    .line 353
    iget-boolean v0, p0, Lgbsdk/common/host/abtf;->aHk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgbsdk/common/host/abtf;->aHo:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 354
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 355
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    iget-object v0, p0, Lgbsdk/common/host/abtf;->aHo:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 361
    :cond_2
    iget-boolean v0, p0, Lgbsdk/common/host/abtf;->aHk:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lgbsdk/common/host/abtf;->aHn:Ljava/util/Set;

    invoke-static {p1, v0}, Lgbsdk/common/host/abvw;->b(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    iget v1, p0, Lgbsdk/common/host/abtf;->aHm:I

    :cond_3
    :goto_0
    if-lez v1, :cond_4

    .line 365
    iget-object v0, p0, Lgbsdk/common/host/abtf;->aHq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 366
    iget-object v0, p0, Lgbsdk/common/host/abtf;->aHp:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v1
.end method

.method public getDispatchDelayTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 373
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgbsdk/common/host/abmf;->z(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public hc()V
    .locals 3

    .line 159
    iget-object v0, p0, Lgbsdk/common/host/abtf;->mContext:Landroid/content/Context;

    const-string v1, "tt_state_config"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tnc_delay_config"

    const-string v2, ""

    .line 161
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abtf;->aHd:Ljava/lang/String;

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/common/host/abtf;->aHd:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v0}, Lgbsdk/common/host/abtf;->L(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 172
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lgbsdk/common/host/abtf;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->getAppDelayState()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbsdk/common/host/abtf;->setAppDelayState(Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;)V

    :cond_1
    return-void
.end method

.method public he()I
    .locals 1

    .line 292
    iget-object v0, p0, Lgbsdk/common/host/abtf;->aHq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public hf()V
    .locals 2

    .line 296
    iget-object v0, p0, Lgbsdk/common/host/abtf;->aHq:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public isAppDelayHandleEnable()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lgbsdk/common/host/abtf;->aHj:Z

    return v0
.end method

.method public isDispatchDelayEnabled()Z
    .locals 1

    .line 378
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abmf;->isDispatchDelayEnabled()Z

    move-result v0

    return v0
.end method

.method public setAppDelayState(Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;)V
    .locals 3

    .line 283
    iget-object v0, p0, Lgbsdk/common/host/abtf;->aHc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abtf$ab;

    invoke-direct {p0, v0}, Lgbsdk/common/host/abtf;->a(Lgbsdk/common/host/abtf$ab;)V

    .line 284
    invoke-static {p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->setAppDelayState(Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;)V

    .line 285
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ib:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lgbsdk/common/host/abtf;->aHj:Z

    if-eqz p1, :cond_0

    .line 286
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lgbsdk/common/host/-$$Lambda$abtf$ZeZOtx9Pq9jqreyAI6qkuaH6RkQ;

    invoke-direct {v0, p0}, Lgbsdk/common/host/-$$Lambda$abtf$ZeZOtx9Pq9jqreyAI6qkuaH6RkQ;-><init>(Lgbsdk/common/host/abtf;)V

    iget v1, p0, Lgbsdk/common/host/abtf;->aHl:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
