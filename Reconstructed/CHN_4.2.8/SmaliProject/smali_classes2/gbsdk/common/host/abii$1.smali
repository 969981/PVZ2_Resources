.class public Lgbsdk/common/host/abii$1;
.super Landroid/content/BroadcastReceiver;
.source "OkHttp3AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ml:Lgbsdk/common/host/abii;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abii;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lgbsdk/common/host/abii$1;->ml:Lgbsdk/common/host/abii;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lgbsdk/common/host/abii$1;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 27
    :cond_1
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p1

    invoke-virtual {p1}, Lgbsdk/common/host/ablz;->ck()V

    return-void
.end method
