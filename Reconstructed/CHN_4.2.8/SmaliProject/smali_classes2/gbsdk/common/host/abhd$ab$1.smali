.class public Lgbsdk/common/host/abhd$ab$1;
.super Ljava/lang/Object;
.source "LifeCycleMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abhd$ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic fZ:Lgbsdk/common/host/abhd$ab;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abhd$ab;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lgbsdk/common/host/abhd$ab$1;->fZ:Lgbsdk/common/host/abhd$ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 112
    sget-boolean v0, Lgbsdk/common/host/abhd;->fV:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 113
    sput-boolean v0, Lgbsdk/common/host/abhd;->fV:Z

    .line 114
    iget-object v0, p0, Lgbsdk/common/host/abhd$ab$1;->fZ:Lgbsdk/common/host/abhd$ab;

    invoke-virtual {v0}, Lgbsdk/common/host/abhd$ab;->aO()V

    :cond_0
    return-void
.end method
