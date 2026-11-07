.class public Lgbsdk/common/host/abll$2;
.super Ljava/lang/Object;
.source "LifeCycleMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic qz:Lgbsdk/common/host/abll;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abll;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lgbsdk/common/host/abll$2;->qz:Lgbsdk/common/host/abll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 30
    sget-boolean v0, Lgbsdk/common/host/abll;->fV:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lgbsdk/common/host/abll;->fV:Z

    .line 32
    iget-object v0, p0, Lgbsdk/common/host/abll$2;->qz:Lgbsdk/common/host/abll;

    iget-object v0, v0, Lgbsdk/common/host/abll;->qy:Lgbsdk/common/host/abll$ab;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lgbsdk/common/host/abll$2;->qz:Lgbsdk/common/host/abll;

    iget-object v0, v0, Lgbsdk/common/host/abll;->qy:Lgbsdk/common/host/abll$ab;

    invoke-interface {v0}, Lgbsdk/common/host/abll$ab;->aO()V

    :cond_0
    return-void
.end method
