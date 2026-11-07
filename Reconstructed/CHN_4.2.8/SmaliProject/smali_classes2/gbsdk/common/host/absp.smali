.class public Lgbsdk/common/host/absp;
.super Ljava/lang/Object;
.source "HPatchListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/absp$ab;
    }
.end annotation


# static fields
.field private static volatile AR:Lgbsdk/common/host/absp;


# instance fields
.field public AS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/absp$ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/absp;->AS:Ljava/util/List;

    return-void
.end method

.method public static dK()Lgbsdk/common/host/absp;
    .locals 2

    .line 21
    sget-object v0, Lgbsdk/common/host/absp;->AR:Lgbsdk/common/host/absp;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lgbsdk/common/host/absp;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lgbsdk/common/host/absp;->AR:Lgbsdk/common/host/absp;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lgbsdk/common/host/absp;

    invoke-direct {v1}, Lgbsdk/common/host/absp;-><init>()V

    sput-object v1, Lgbsdk/common/host/absp;->AR:Lgbsdk/common/host/absp;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/absp;->AR:Lgbsdk/common/host/absp;

    return-object v0
.end method


# virtual methods
.method public a(Lgbsdk/common/host/absp$ab;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lgbsdk/common/host/absp;->AS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/absp;->AS:Ljava/util/List;

    .line 45
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/absp;->AS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lgbsdk/common/host/absp$ab;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lgbsdk/common/host/absp;->AS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/absp;->AS:Ljava/util/List;

    .line 58
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/absp;->AS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
