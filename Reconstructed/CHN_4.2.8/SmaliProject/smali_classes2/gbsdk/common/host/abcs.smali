.class public Lgbsdk/common/host/abcs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abcs$ab;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static volatile cR:Z

.field private static dE:Landroid/util/Printer;

.field private static final dF:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lgbsdk/common/host/abcw;",
            ">;"
        }
    .end annotation
.end field

.field private static dG:Lgbsdk/common/host/abcw;

.field private static volatile dH:Lgbsdk/common/host/abcs$ab;

.field private static g:J

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lgbsdk/common/host/abcs;->dF:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lgbsdk/common/host/abcs;->cR:Z

    const-wide/16 v1, 0x0

    sput-wide v1, Lgbsdk/common/host/abcs;->g:J

    sput v0, Lgbsdk/common/host/abcs;->h:I

    return-void
.end method

.method public static a()V
    .locals 1

    sget-boolean v0, Lgbsdk/common/host/abcs;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lgbsdk/common/host/abcs;->a:Z

    new-instance v0, Lgbsdk/common/host/abcs$1;

    invoke-direct {v0}, Lgbsdk/common/host/abcs$1;-><init>()V

    sput-object v0, Lgbsdk/common/host/abcs;->dE:Landroid/util/Printer;

    invoke-static {}, Lgbsdk/common/host/abcr;->a()V

    sget-object v0, Lgbsdk/common/host/abcs;->dE:Landroid/util/Printer;

    invoke-static {v0}, Lgbsdk/common/host/abcr;->a(Landroid/util/Printer;)V

    return-void
.end method

.method public static a(Lgbsdk/common/host/abcw;)V
    .locals 2

    sget-object v0, Lgbsdk/common/host/abcs;->dF:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abcs;->dF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    sput-wide v2, Lgbsdk/common/host/abcw;->a:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lgbsdk/common/host/abcw;->b:J

    if-eqz p0, :cond_0

    sget-object v2, Lgbsdk/common/host/abcs;->dG:Lgbsdk/common/host/abcw;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lgbsdk/common/host/abcw;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lgbsdk/common/host/abcs;->dG:Lgbsdk/common/host/abcw;

    invoke-virtual {v2, p1}, Lgbsdk/common/host/abcw;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lgbsdk/common/host/abcs;->dF:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, ""

    if-ge v4, v5, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbsdk/common/host/abcw;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lgbsdk/common/host/abcw;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v6, v5, Lgbsdk/common/host/abcw;->c:Z

    if-eqz p0, :cond_1

    if-nez v6, :cond_3

    invoke-virtual {v5, p1}, Lgbsdk/common/host/abcw;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_3

    invoke-virtual {v5, p1}, Lgbsdk/common/host/abcw;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    iget-boolean v7, v5, Lgbsdk/common/host/abcw;->c:Z

    if-eqz v7, :cond_3

    invoke-virtual {v5, v6}, Lgbsdk/common/host/abcw;->b(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez p0, :cond_5

    sget-object p0, Lgbsdk/common/host/abcs;->dG:Lgbsdk/common/host/abcw;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lgbsdk/common/host/abcw;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lgbsdk/common/host/abcs;->dG:Lgbsdk/common/host/abcw;

    invoke-virtual {p0, v6}, Lgbsdk/common/host/abcw;->b(Ljava/lang/String;)V

    :cond_5
    sget-boolean p0, Lgbsdk/common/host/abcs;->cR:Z

    if-eqz p0, :cond_7

    sget-wide p0, Lgbsdk/common/host/abcs;->g:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr p0, v4

    sput-wide p0, Lgbsdk/common/host/abcs;->g:J

    sget p0, Lgbsdk/common/host/abcs;->h:I

    add-int/lit8 p1, p0, 0x1

    sput p1, Lgbsdk/common/host/abcs;->h:I

    const/16 p1, 0x3e8

    if-lt p0, p1, :cond_7

    sget-object p0, Lgbsdk/common/host/abcs;->dH:Lgbsdk/common/host/abcs$ab;

    if-eqz p0, :cond_6

    sget-object p0, Lgbsdk/common/host/abcs;->dH:Lgbsdk/common/host/abcs$ab;

    sget-wide v0, Lgbsdk/common/host/abcs;->g:J

    invoke-interface {p0, v0, v1}, Lgbsdk/common/host/abcs$ab;->a(J)V

    :cond_6
    sput v3, Lgbsdk/common/host/abcs;->h:I

    const-wide/16 p0, 0x0

    sput-wide p0, Lgbsdk/common/host/abcs;->g:J

    sput-boolean v3, Lgbsdk/common/host/abcs;->cR:Z

    :cond_7
    return-void
.end method
