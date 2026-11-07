.class public Lgbsdk/common/host/abkf;
.super Ljava/util/Observable;
.source "StreamTrafficObservable.java"


# static fields
.field public static final jJ:Ljava/lang/String; = "url"

.field public static final jK:Ljava/lang/String; = "sent_bytes"

.field public static final jL:Ljava/lang/String; = "received_bytes"

.field public static final jM:Ljava/lang/String; = "request_log"

.field public static final jN:Ljava/lang/String; = "content_type"

.field private static volatile jO:Lgbsdk/common/host/abkf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static bH()Lgbsdk/common/host/abkf;
    .locals 2

    .line 17
    sget-object v0, Lgbsdk/common/host/abkf;->jO:Lgbsdk/common/host/abkf;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lgbsdk/common/host/abkf;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abkf;->jO:Lgbsdk/common/host/abkf;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lgbsdk/common/host/abkf;

    invoke-direct {v1}, Lgbsdk/common/host/abkf;-><init>()V

    sput-object v1, Lgbsdk/common/host/abkf;->jO:Lgbsdk/common/host/abkf;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abkf;->jO:Lgbsdk/common/host/abkf;

    return-object v0
.end method

.method private h(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lgbsdk/common/host/abkf;->setChanged()V

    .line 40
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abkf;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    .line 30
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "sent_bytes"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "received_bytes"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content_type"

    .line 33
    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "request_log"

    .line 34
    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-direct {p0, v0}, Lgbsdk/common/host/abkf;->h(Ljava/util/Map;)V

    return-void
.end method
