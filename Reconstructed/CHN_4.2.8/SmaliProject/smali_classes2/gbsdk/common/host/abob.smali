.class public Lgbsdk/common/host/abob;
.super Ljava/lang/Object;
.source "AsyncEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abob$ab;
    }
.end annotation


# static fields
.field private static d:J = 0x7530L


# instance fields
.field bQ:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lgbsdk/common/host/aboe;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private uE:Lgbsdk/common/host/aboa;

.field private final uF:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lgbsdk/common/host/abob;->c:Z

    .line 35
    new-instance v0, Lgbsdk/common/host/abob$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abob$1;-><init>(Lgbsdk/common/host/abob;)V

    iput-object v0, p0, Lgbsdk/common/host/abob;->uF:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abob;->bQ:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    new-instance v0, Lgbsdk/common/host/aboa;

    const-string v1, "AsyncEventManager-Thread"

    invoke-direct {v0, v1}, Lgbsdk/common/host/aboa;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/common/host/abob;->uE:Lgbsdk/common/host/aboa;

    .line 23
    invoke-virtual {v0}, Lgbsdk/common/host/aboa;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abob$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgbsdk/common/host/abob;-><init>()V

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abob;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lgbsdk/common/host/abob;->c:Z

    return p0
.end method

.method static synthetic b()J
    .locals 2

    .line 13
    sget-wide v0, Lgbsdk/common/host/abob;->d:J

    return-wide v0
.end method

.method static synthetic b(Lgbsdk/common/host/abob;)Lgbsdk/common/host/aboa;
    .locals 0

    .line 13
    iget-object p0, p0, Lgbsdk/common/host/abob;->uE:Lgbsdk/common/host/aboa;

    return-object p0
.end method


# virtual methods
.method public a(Lgbsdk/common/host/aboe;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abob;->bQ:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 86
    iget-boolean p1, p0, Lgbsdk/common/host/abob;->c:Z

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lgbsdk/common/host/abob;->uE:Lgbsdk/common/host/aboa;

    iget-object v0, p0, Lgbsdk/common/host/abob;->uF:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/aboa;->b(Ljava/lang/Runnable;)V

    .line 88
    iget-object p1, p0, Lgbsdk/common/host/abob;->uE:Lgbsdk/common/host/aboa;

    iget-object v0, p0, Lgbsdk/common/host/abob;->uF:Ljava/lang/Runnable;

    sget-wide v1, Lgbsdk/common/host/abob;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lgbsdk/common/host/aboa;->a(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;J)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abob;->uE:Lgbsdk/common/host/aboa;

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/common/host/aboa;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abob;->uE:Lgbsdk/common/host/aboa;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/aboa;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
