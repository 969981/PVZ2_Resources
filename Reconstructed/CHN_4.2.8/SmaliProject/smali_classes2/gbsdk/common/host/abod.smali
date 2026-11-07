.class public Lgbsdk/common/host/abod;
.super Ljava/lang/Object;
.source "LogEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abod$ab;
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lgbsdk/common/host/abod;->c:Z

    .line 33
    new-instance v0, Lgbsdk/common/host/abod$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abod$1;-><init>(Lgbsdk/common/host/abod;)V

    iput-object v0, p0, Lgbsdk/common/host/abod;->uF:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abod;->bQ:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    new-instance v0, Lgbsdk/common/host/aboa;

    const-string v1, "LogSendManager-Thread"

    invoke-direct {v0, v1}, Lgbsdk/common/host/aboa;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/common/host/abod;->uE:Lgbsdk/common/host/aboa;

    .line 21
    invoke-virtual {v0}, Lgbsdk/common/host/aboa;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abod$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgbsdk/common/host/abod;-><init>()V

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abod;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lgbsdk/common/host/abod;->c:Z

    return p0
.end method

.method static synthetic b()J
    .locals 2

    .line 11
    sget-wide v0, Lgbsdk/common/host/abod;->d:J

    return-wide v0
.end method

.method static synthetic b(Lgbsdk/common/host/abod;)Lgbsdk/common/host/aboa;
    .locals 0

    .line 11
    iget-object p0, p0, Lgbsdk/common/host/abod;->uE:Lgbsdk/common/host/aboa;

    return-object p0
.end method


# virtual methods
.method public a(Lgbsdk/common/host/aboe;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abod;->bQ:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    iget-boolean p1, p0, Lgbsdk/common/host/abod;->c:Z

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lgbsdk/common/host/abod;->uE:Lgbsdk/common/host/aboa;

    iget-object v0, p0, Lgbsdk/common/host/abod;->uF:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/aboa;->b(Ljava/lang/Runnable;)V

    .line 86
    iget-object p1, p0, Lgbsdk/common/host/abod;->uE:Lgbsdk/common/host/aboa;

    iget-object v0, p0, Lgbsdk/common/host/abod;->uF:Ljava/lang/Runnable;

    sget-wide v1, Lgbsdk/common/host/abod;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lgbsdk/common/host/aboa;->a(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
