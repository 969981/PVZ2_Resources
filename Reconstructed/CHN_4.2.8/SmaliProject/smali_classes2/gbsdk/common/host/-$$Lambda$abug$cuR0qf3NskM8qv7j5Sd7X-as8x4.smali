.class public final synthetic Lgbsdk/common/host/-$$Lambda$abug$cuR0qf3NskM8qv7j5Sd7X-as8x4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Thread;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/-$$Lambda$abug$cuR0qf3NskM8qv7j5Sd7X-as8x4;->f$0:Ljava/lang/Thread;

    iput-object p2, p0, Lgbsdk/common/host/-$$Lambda$abug$cuR0qf3NskM8qv7j5Sd7X-as8x4;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgbsdk/common/host/-$$Lambda$abug$cuR0qf3NskM8qv7j5Sd7X-as8x4;->f$0:Ljava/lang/Thread;

    iget-object v1, p0, Lgbsdk/common/host/-$$Lambda$abug$cuR0qf3NskM8qv7j5Sd7X-as8x4;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lgbsdk/common/host/abug;->lambda$cuR0qf3NskM8qv7j5Sd7X-as8x4(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
