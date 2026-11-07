.class public Lgbsdk/common/host/abtm;
.super Ljava/lang/Object;
.source "TTReqController.java"

# interfaces
.implements Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;
.implements Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abtm$ab;,
        Lgbsdk/common/host/abtm$ac;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aFA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final aFB:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static final aFC:Ljava/util/concurrent/locks/Lock;

.field private static final aFD:Ljava/util/concurrent/locks/Lock;

.field private static final aFE:Ljava/util/concurrent/locks/Condition;

.field private static final aFF:I = 0x3

.field private static final aFG:I = 0x1388

.field private static aFH:Z

.field private static final aFI:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final aFJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static aFK:I

.field private static aFL:J

.field private static aFM:I

.field private static aFv:Lgbsdk/common/host/abtm;

.field private static aFw:Z

.field private static final aFx:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final aFy:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final aFz:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    const-class v0, Lgbsdk/common/host/abtm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lgbsdk/common/host/abtm;->aFw:Z

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v1, Lgbsdk/common/host/abtm;->aFx:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lgbsdk/common/host/abtm;->aFz:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lgbsdk/common/host/abtm;->aFA:Ljava/util/Map;

    .line 45
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lgbsdk/common/host/abtm;->aFB:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 46
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    sput-object v1, Lgbsdk/common/host/abtm;->aFC:Ljava/util/concurrent/locks/Lock;

    .line 47
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lgbsdk/common/host/abtm;->aFD:Ljava/util/concurrent/locks/Lock;

    .line 48
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    sput-object v1, Lgbsdk/common/host/abtm;->aFE:Ljava/util/concurrent/locks/Condition;

    .line 53
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "RequestController-Handler"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lgbsdk/common/host/abtm;->sHandlerThread:Landroid/os/HandlerThread;

    .line 57
    sput-boolean v0, Lgbsdk/common/host/abtm;->aFH:Z

    .line 58
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v1, Lgbsdk/common/host/abtm;->aFI:Ljava/util/Set;

    .line 59
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v1, Lgbsdk/common/host/abtm;->aFJ:Ljava/util/Set;

    .line 60
    sput v0, Lgbsdk/common/host/abtm;->aFK:I

    .line 61
    sput-wide v2, Lgbsdk/common/host/abtm;->aFL:J

    const/16 v0, 0xa

    .line 62
    sput v0, Lgbsdk/common/host/abtm;->aFM:I

    .line 65
    sget-object v0, Lgbsdk/common/host/abtm;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/bytedance/common/utility/collection/WeakHandler;

    sget-object v1, Lgbsdk/common/host/abtm;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/common/utility/collection/WeakHandler;-><init>(Landroid/os/Looper;Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;)V

    iput-object v0, p0, Lgbsdk/common/host/abtm;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    return-void
.end method

.method public static H(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 233
    sput-boolean v0, Lgbsdk/common/host/abtm;->aFH:Z

    const-string v1, "runtime_req_ctl_config"

    .line 234
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 238
    sput-boolean v1, Lgbsdk/common/host/abtm;->aFH:Z

    .line 239
    sget-object v1, Lgbsdk/common/host/abtm;->aFI:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 240
    sget-object v1, Lgbsdk/common/host/abtm;->aFJ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :try_start_0
    const-string v1, "p0"

    .line 243
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "p2"

    .line 244
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 246
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 247
    sget-object v4, Lgbsdk/common/host/abtm;->aFI:Ljava/util/Set;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 251
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 252
    sget-object v3, Lgbsdk/common/host/abtm;->aFJ:Ljava/util/Set;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 256
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    const-string v1, "p0_countdown"

    .line 259
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lgbsdk/common/host/abtm;->aFL:J

    const-string v1, "p1_random"

    .line 260
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lgbsdk/common/host/abtm;->aFK:I

    const/16 v0, 0xa

    const-string v1, "p1_maxCount"

    .line 261
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lgbsdk/common/host/abtm;->aFM:I

    .line 263
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 264
    sget-object p0, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sP0PathSet is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lgbsdk/common/host/abtm;->aFI:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object p0, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sP2PathSet is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lgbsdk/common/host/abtm;->aFJ:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object p0, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sP0Countdown is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lgbsdk/common/host/abtm;->aFL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object p0, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sP1Random is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lgbsdk/common/host/abtm;->aFK:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object p0, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sP1MaxCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lgbsdk/common/host/abtm;->aFM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lgbsdk/common/host/abtm$ac;)V
    .locals 5

    .line 209
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller, release p1 request, reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    sget-object p1, Lgbsdk/common/host/abtm;->aFD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    :try_start_0
    sget-object p1, Lgbsdk/common/host/abtm;->aFE:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    sget-object p1, Lgbsdk/common/host/abtm;->aFD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 221
    sget-object p1, Lgbsdk/common/host/abtm;->aFC:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 222
    sget-object p1, Lgbsdk/common/host/abtm;->aFA:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 223
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lgbsdk/common/host/-$$Lambda$abtm$NIRngKUvIopvCnoWqvJjg5uv-Hg;

    invoke-direct {v2, v0}, Lgbsdk/common/host/-$$Lambda$abtm$NIRngKUvIopvCnoWqvJjg5uv-Hg;-><init>(Ljava/util/Map$Entry;)V

    .line 226
    invoke-virtual {p0}, Lgbsdk/common/host/abtm;->gK()I

    move-result v0

    int-to-long v3, v0

    .line 225
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 229
    :cond_1
    sget-object p1, Lgbsdk/common/host/abtm;->aFC:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 217
    sget-object v0, Lgbsdk/common/host/abtm;->aFD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private static synthetic a(Ljava/util/Map$Entry;)V
    .locals 1

    .line 226
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static gJ()Lgbsdk/common/host/abtm;
    .locals 2

    .line 81
    const-class v0, Lgbsdk/common/host/abtm;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abtm;->aFv:Lgbsdk/common/host/abtm;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lgbsdk/common/host/abtm;

    invoke-direct {v1}, Lgbsdk/common/host/abtm;-><init>()V

    sput-object v1, Lgbsdk/common/host/abtm;->aFv:Lgbsdk/common/host/abtm;

    .line 84
    invoke-static {v1}, Lcom/bytedance/retrofit2/SsHttpCall;->setReqLevelControl(Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;)V

    .line 86
    :cond_0
    sget-object v1, Lgbsdk/common/host/abtm;->aFv:Lgbsdk/common/host/abtm;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private gL()Z
    .locals 6

    .line 177
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFN:Lgbsdk/common/host/abtm$ab;

    .line 178
    sget-boolean v1, Lgbsdk/common/host/abtm;->aFw:Z

    if-nez v1, :cond_0

    .line 179
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFO:Lgbsdk/common/host/abtm$ab;

    goto :goto_0

    .line 180
    :cond_0
    sget-object v1, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_1

    .line 181
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFP:Lgbsdk/common/host/abtm$ab;

    goto :goto_0

    .line 182
    :cond_1
    sget-object v1, Lgbsdk/common/host/abtm;->aFz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sget v2, Lgbsdk/common/host/abtm;->aFM:I

    if-le v1, v2, :cond_2

    .line 183
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFQ:Lgbsdk/common/host/abtm$ab;

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lgbsdk/common/host/abtm;->aFx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lgbsdk/common/host/abtm;->aFL:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 185
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFR:Lgbsdk/common/host/abtm$ab;

    .line 187
    :cond_3
    :goto_0
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    sget-object v1, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p1 check p0 done, reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_4
    sget-object v1, Lgbsdk/common/host/abtm$ab;->aFN:Lgbsdk/common/host/abtm$ab;

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private gM()Z
    .locals 6

    .line 194
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFN:Lgbsdk/common/host/abtm$ab;

    .line 195
    sget-boolean v1, Lgbsdk/common/host/abtm;->aFw:Z

    if-nez v1, :cond_0

    .line 196
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFO:Lgbsdk/common/host/abtm$ab;

    goto :goto_0

    .line 197
    :cond_0
    sget-object v1, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_1

    .line 198
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFP:Lgbsdk/common/host/abtm$ab;

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lgbsdk/common/host/abtm;->aFx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lgbsdk/common/host/abtm;->aFL:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 200
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFR:Lgbsdk/common/host/abtm$ab;

    .line 202
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    sget-object v1, Lgbsdk/common/host/abtm;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2 check p0 done, reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_3
    sget-object v1, Lgbsdk/common/host/abtm$ab;->aFN:Lgbsdk/common/host/abtm$ab;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private synthetic gN()V
    .locals 5

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lgbsdk/common/host/abtm;->aFx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lgbsdk/common/host/abtm;->aFL:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sget-object v0, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_0

    .line 111
    sget-object v0, Lgbsdk/common/host/abtm$ac;->aFT:Lgbsdk/common/host/abtm$ac;

    invoke-direct {p0, v0}, Lgbsdk/common/host/abtm;->a(Lgbsdk/common/host/abtm$ac;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$NIRngKUvIopvCnoWqvJjg5uv-Hg(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0}, Lgbsdk/common/host/abtm;->a(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic lambda$oqiGD1aaBaDRATht4OG_P9kFxIo(Lgbsdk/common/host/abtm;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/abtm;->gN()V

    return-void
.end method


# virtual methods
.method public E(Z)V
    .locals 2

    .line 91
    sput-boolean p1, Lgbsdk/common/host/abtm;->aFw:Z

    .line 92
    sget-object v0, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 93
    sget-object v0, Lgbsdk/common/host/abtm;->aFz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-nez p1, :cond_0

    .line 95
    sget-object p1, Lgbsdk/common/host/abtm$ac;->aFU:Lgbsdk/common/host/abtm$ac;

    invoke-direct {p0, p1}, Lgbsdk/common/host/abtm;->a(Lgbsdk/common/host/abtm$ac;)V

    :cond_0
    return-void
.end method

.method public gK()I
    .locals 2

    .line 167
    sget-object v0, Lgbsdk/common/host/abtm;->aFz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 168
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 169
    sget v1, Lgbsdk/common/host/abtm;->aFK:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRequestLevel(Ljava/lang/String;)I
    .locals 4

    .line 106
    sget-object v0, Lgbsdk/common/host/abtm;->aFI:Ljava/util/Set;

    invoke-static {p1, v0}, Lgbsdk/common/host/abvw;->b(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    sget-object p1, Lgbsdk/common/host/abtm;->aFx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 108
    sget-object p1, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 109
    iget-object p1, p0, Lgbsdk/common/host/abtm;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    new-instance v0, Lgbsdk/common/host/-$$Lambda$abtm$oqiGD1aaBaDRATht4OG_P9kFxIo;

    invoke-direct {v0, p0}, Lgbsdk/common/host/-$$Lambda$abtm$oqiGD1aaBaDRATht4OG_P9kFxIo;-><init>(Lgbsdk/common/host/abtm;)V

    sget-wide v2, Lgbsdk/common/host/abtm;->aFL:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/bytedance/common/utility/collection/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 115
    :cond_0
    sget-object v0, Lgbsdk/common/host/abtm;->aFJ:Ljava/util/Set;

    invoke-static {p1, v0}, Lgbsdk/common/host/abvw;->b(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    invoke-direct {p0}, Lgbsdk/common/host/abtm;->gM()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    return v1

    .line 122
    :cond_2
    sget-object p1, Lgbsdk/common/host/abtm;->aFz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 p1, 0x1

    return p1
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public isReqLevelControllerEnable()Z
    .locals 1

    .line 101
    sget-boolean v0, Lgbsdk/common/host/abtm;->aFw:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lgbsdk/common/host/abtm;->aFH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeAddP1AsyncRequest(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
    .locals 1

    .line 144
    invoke-direct {p0}, Lgbsdk/common/host/abtm;->gL()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_0
    sget-object v0, Lgbsdk/common/host/abtm;->aFC:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 148
    sget-object v0, Lgbsdk/common/host/abtm;->aFA:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object p1, Lgbsdk/common/host/abtm;->aFC:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    return p1
.end method

.method public notifyRequestBack(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 155
    sget-object v0, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    sget-object p1, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 157
    sget-object p1, Lgbsdk/common/host/abtm;->aFy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    .line 158
    sget-object p1, Lgbsdk/common/host/abtm$ac;->aFV:Lgbsdk/common/host/abtm$ac;

    invoke-direct {p0, p1}, Lgbsdk/common/host/abtm;->a(Lgbsdk/common/host/abtm$ac;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 160
    sget-object p1, Lgbsdk/common/host/abtm;->aFz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_1

    .line 161
    sget-object p1, Lgbsdk/common/host/abtm;->aFz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    :goto_0
    return-void
.end method

.method public p1WaitP0Done()V
    .locals 4

    .line 129
    sget-object v0, Lgbsdk/common/host/abtm;->aFD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 131
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lgbsdk/common/host/abtm;->gL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lgbsdk/common/host/abtm;->aFE:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/abtm;->gK()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 136
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_1
    sget-object v0, Lgbsdk/common/host/abtm;->aFD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    sget-object v1, Lgbsdk/common/host/abtm;->aFD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
