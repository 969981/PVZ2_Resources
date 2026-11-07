.class public Lgbsdk/common/host/abod$1;
.super Ljava/lang/Object;
.source "LogEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic uH:Lgbsdk/common/host/abod;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abod;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lgbsdk/common/host/abod$1;->uH:Lgbsdk/common/host/abod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 38
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abod$1;->uH:Lgbsdk/common/host/abod;

    iget-object v0, v0, Lgbsdk/common/host/abod;->bQ:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/aboe;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lgbsdk/common/host/aboe;->onTimeEvent(J)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abod$1;->uH:Lgbsdk/common/host/abod;

    invoke-static {v0}, Lgbsdk/common/host/abod;->a(Lgbsdk/common/host/abod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lgbsdk/common/host/abod$1;->uH:Lgbsdk/common/host/abod;

    invoke-static {v0}, Lgbsdk/common/host/abod;->b(Lgbsdk/common/host/abod;)Lgbsdk/common/host/aboa;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abod;->b()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lgbsdk/common/host/aboa;->a(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
