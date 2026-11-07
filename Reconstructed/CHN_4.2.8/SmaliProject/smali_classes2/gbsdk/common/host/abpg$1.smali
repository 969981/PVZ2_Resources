.class public Lgbsdk/common/host/abpg$1;
.super Ljava/lang/Thread;
.source "DefaultThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abpg;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic ym:Lgbsdk/common/host/abpg;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abpg;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lgbsdk/common/host/abpg$1;->ym:Lgbsdk/common/host/abpg;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abpg$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f51e9a52ade9b4e2d9e1be303af4da24"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abpg$1;->ym:Lgbsdk/common/host/abpg;

    iget-object v0, v0, Lgbsdk/common/host/abpg;->yh:Lgbsdk/common/host/abry;

    if-eqz v0, :cond_1

    .line 27
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 29
    iget-object v1, p0, Lgbsdk/common/host/abpg$1;->ym:Lgbsdk/common/host/abpg;

    iget-object v1, v1, Lgbsdk/common/host/abpg;->yh:Lgbsdk/common/host/abry;

    invoke-interface {v1, v0}, Lgbsdk/common/host/abry;->g(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    return-void
.end method
