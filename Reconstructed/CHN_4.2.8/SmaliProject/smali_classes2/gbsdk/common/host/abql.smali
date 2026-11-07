.class public Lgbsdk/common/host/abql;
.super Lcom/meituan/robust/PatchExecutor;
.source "TTPatchExecutor.java"


# instance fields
.field public volatile wX:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meituan/robust/PatchManipulate;Lcom/meituan/robust/RobustCallBack;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meituan/robust/PatchExecutor;-><init>(Landroid/content/Context;Lcom/meituan/robust/PatchManipulate;Lcom/meituan/robust/RobustCallBack;Ljava/lang/ClassLoader;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lgbsdk/common/host/abql;->wX:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lgbsdk/common/host/abql;->wX:Z

    .line 22
    invoke-super {p0}, Lcom/meituan/robust/PatchExecutor;->run()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lgbsdk/common/host/abql;->wX:Z

    return-void
.end method
