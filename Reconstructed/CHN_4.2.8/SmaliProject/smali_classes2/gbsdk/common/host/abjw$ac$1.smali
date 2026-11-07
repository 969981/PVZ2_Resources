.class public Lgbsdk/common/host/abjw$ac$1;
.super Ljava/lang/Thread;
.source "NetThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abjw$ac;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hf:Lgbsdk/common/host/abjw$ac;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abjw$ac;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lgbsdk/common/host/abjw$ac$1;->hf:Lgbsdk/common/host/abjw$ac;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 203
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 204
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
