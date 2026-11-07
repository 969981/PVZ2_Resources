.class public Lgbsdk/common/host/aq;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic an:Lgbsdk/common/host/ap;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/ap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/aq;->an:Lgbsdk/common/host/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/aq;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "156f169f7b4e795e6b41107b8a1cee33"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/aq;->an:Lgbsdk/common/host/ap;

    invoke-static {v0}, Lgbsdk/common/host/ap;->b(Lgbsdk/common/host/ap;)Lgbsdk/common/host/abad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lgbsdk/common/host/aq;->an:Lgbsdk/common/host/ap;

    invoke-virtual {v0}, Lgbsdk/common/host/ap;->D()Lgbsdk/common/host/abah;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abah;->d(Ljava/util/ArrayList;)V

    .line 7
    iget-object v0, p0, Lgbsdk/common/host/aq;->an:Lgbsdk/common/host/ap;

    .line 8
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 9
    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->b()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lgbsdk/common/host/aq;->an:Lgbsdk/common/host/ap;

    .line 11
    iget-object v1, v1, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lgbsdk/common/host/aq;->an:Lgbsdk/common/host/ap;

    .line 14
    iget-object v0, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    .line 15
    new-instance v1, Lgbsdk/common/host/aq$ab;

    invoke-direct {v1, p0}, Lgbsdk/common/host/aq$ab;-><init>(Lgbsdk/common/host/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
