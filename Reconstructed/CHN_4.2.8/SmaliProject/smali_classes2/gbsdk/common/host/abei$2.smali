.class public final Lgbsdk/common/host/abei$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/runtime/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abei;->a(Ljava/lang/Throwable;Ljava/lang/Thread;Lgbsdk/common/host/aben;)Lgbsdk/common/host/abfl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic eG:Lgbsdk/common/host/aben;

.field final synthetic eH:Ljava/lang/Thread;

.field final synthetic ea:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lgbsdk/common/host/aben;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abei$2;->eG:Lgbsdk/common/host/aben;

    iput-object p2, p0, Lgbsdk/common/host/abei$2;->ea:Ljava/lang/Throwable;

    iput-object p3, p0, Lgbsdk/common/host/abei$2;->eH:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILgbsdk/common/host/abfl;)Lgbsdk/common/host/abfl;
    .locals 2

    const-string v0, "rule_id"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abei$2;->eH:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string v1, "crash_thread_name"

    invoke-virtual {p2, v1, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "tid"

    invoke-virtual {p2, v1, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lgbsdk/common/host/abei;->aq()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "portrait_count"

    invoke-virtual {p2, v1, p1}, Lgbsdk/common/host/abfl;->m(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    iget-object p1, p0, Lgbsdk/common/host/abei$2;->eG:Lgbsdk/common/host/aben;

    iget-object p1, p1, Lgbsdk/common/host/aben;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->m(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    iget-object p1, p0, Lgbsdk/common/host/abei$2;->eG:Lgbsdk/common/host/aben;

    iget-object p1, p1, Lgbsdk/common/host/aben;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lgbsdk/common/host/abei$2;->eG:Lgbsdk/common/host/aben;

    iget-object p1, p1, Lgbsdk/common/host/aben;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/common/host/abei$2;->ea:Ljava/lang/Throwable;

    invoke-static {p1}, Lgbsdk/common/host/abhz;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "stack"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "crash_time"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/apm/insight/runtime/a/b;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "launch_mode"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/apm/insight/runtime/a/b;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "launch_time"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-object p2
.end method

.method public a(ILgbsdk/common/host/abfl;Z)Lgbsdk/common/host/abfl;
    .locals 0

    return-object p2
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
