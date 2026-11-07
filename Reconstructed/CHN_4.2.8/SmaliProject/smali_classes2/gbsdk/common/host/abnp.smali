.class public Lgbsdk/common/host/abnp;
.super Ljava/lang/Object;
.source "MonitorManager.java"

# interfaces
.implements Lgbsdk/common/host/aboe;


# instance fields
.field private final aT:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lgbsdk/common/host/abom;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:J

.field private final e:I

.field private f:Ljava/lang/String;

.field public g:Z

.field private uA:Lgbsdk/common/host/abns;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lgbsdk/common/host/abnp;->c:I

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lgbsdk/common/host/abnp;->d:J

    const v0, 0x1d4c0

    .line 27
    iput v0, p0, Lgbsdk/common/host/abnp;->e:I

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lgbsdk/common/host/abnp;->g:Z

    .line 33
    invoke-static {p1}, Lgbsdk/common/host/abns;->Q(Landroid/content/Context;)Lgbsdk/common/host/abns;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abnp;->uA:Lgbsdk/common/host/abns;

    .line 34
    iput-object p2, p0, Lgbsdk/common/host/abnp;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 38
    sget-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abob;->a(Lgbsdk/common/host/aboe;)V

    return-void
.end method

.method protected a(Lgbsdk/common/host/abom;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lgbsdk/common/host/abnp;->b(JZ)Z

    .line 59
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 89
    iget-object v0, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(JZ)Z
    .locals 4

    .line 68
    iget-object v0, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-nez p3, :cond_0

    const/4 p3, 0x5

    if-ge v0, p3, :cond_0

    .line 69
    iget-wide v0, p0, Lgbsdk/common/host/abnp;->d:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1d4c0

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    .line 70
    :cond_0
    iput-wide p1, p0, Lgbsdk/common/host/abnp;->d:J

    .line 72
    iget-object p1, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    monitor-enter p1

    .line 73
    :try_start_0
    new-instance p2, Ljava/util/LinkedList;

    iget-object p3, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    invoke-direct {p2, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 74
    iget-object p3, p0, Lgbsdk/common/host/abnp;->aT:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    .line 75
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {p2}, Lgbsdk/common/host/abmw;->l(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    :try_start_1
    iget-object p1, p0, Lgbsdk/common/host/abnp;->uA:Lgbsdk/common/host/abns;

    iget-object p3, p0, Lgbsdk/common/host/abnp;->f:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lgbsdk/common/host/abns;->c(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 75
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    .line 42
    iget-boolean v0, p0, Lgbsdk/common/host/abnp;->g:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lgbsdk/common/host/abom;

    iget-object v2, p0, Lgbsdk/common/host/abnp;->f:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lgbsdk/common/host/abom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lgbsdk/common/host/abnp;->a(Lgbsdk/common/host/abom;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTimeEvent(J)V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lgbsdk/common/host/abnp;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v0}, Lgbsdk/common/host/abnp;->b(JZ)Z

    :cond_0
    return-void
.end method
