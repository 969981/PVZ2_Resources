.class public Lgbsdk/common/host/abrn$ac$1;
.super Ljava/lang/Object;
.source "ApkChannelUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abrn$ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic CJ:Lgbsdk/common/host/abrn$ac;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abrn$ac;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    sget-object p1, Lgbsdk/common/host/abrn$ac$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "f036cb7077c141ff155b8011dd9a816f"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 551
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    invoke-static {p2}, Lgbsdk/common/host/abro$ab;->h(Landroid/os/IBinder;)Lgbsdk/common/host/abro;

    move-result-object p2

    iput-object p2, p1, Lgbsdk/common/host/abrn$ac;->CF:Lgbsdk/common/host/abro;

    .line 553
    :try_start_0
    iget-object p1, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    iget-object p2, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    iget-object p2, p2, Lgbsdk/common/host/abrn$ac;->CF:Lgbsdk/common/host/abro;

    invoke-interface {p2}, Lgbsdk/common/host/abro;->eb()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lgbsdk/common/host/abrn$ac;->CG:Ljava/lang/String;

    .line 554
    iget-object p1, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    iget-object p1, p1, Lgbsdk/common/host/abrn$ac;->CH:Lgbsdk/common/host/abrn$ab;

    if-eqz p1, :cond_1

    .line 555
    iget-object p1, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    iget-object p1, p1, Lgbsdk/common/host/abrn$ac;->CH:Lgbsdk/common/host/abrn$ab;

    iget-object p2, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    iget-object p2, p2, Lgbsdk/common/host/abrn$ac;->CG:Ljava/lang/String;

    invoke-interface {p1, p2}, Lgbsdk/common/host/abrn$ab;->bY(Ljava/lang/String;)V

    :cond_1
    const-string p1, "ApkChannelUtils"

    .line 557
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SingleProcessController return "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    iget-object v0, v0, Lgbsdk/common/host/abrn$ac;->CG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lgbsdk/common/host/abrn$ac$1;->CJ:Lgbsdk/common/host/abrn$ac;

    invoke-virtual {p1, p0}, Lgbsdk/common/host/abrn$ac;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 560
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
