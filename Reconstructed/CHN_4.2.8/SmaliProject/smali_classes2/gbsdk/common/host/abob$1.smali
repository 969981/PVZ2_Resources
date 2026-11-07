.class public Lgbsdk/common/host/abob$1;
.super Ljava/lang/Object;
.source "AsyncEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic uG:Lgbsdk/common/host/abob;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abob;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lgbsdk/common/host/abob$1;->uG:Lgbsdk/common/host/abob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 40
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abob$1;->uG:Lgbsdk/common/host/abob;

    iget-object v0, v0, Lgbsdk/common/host/abob;->bQ:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/aboe;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lgbsdk/common/host/aboe;->onTimeEvent(J)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abob$1;->uG:Lgbsdk/common/host/abob;

    invoke-static {v0}, Lgbsdk/common/host/abob;->a(Lgbsdk/common/host/abob;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lgbsdk/common/host/abob$1;->uG:Lgbsdk/common/host/abob;

    invoke-static {v0}, Lgbsdk/common/host/abob;->b(Lgbsdk/common/host/abob;)Lgbsdk/common/host/aboa;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abob;->b()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lgbsdk/common/host/aboa;->a(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
