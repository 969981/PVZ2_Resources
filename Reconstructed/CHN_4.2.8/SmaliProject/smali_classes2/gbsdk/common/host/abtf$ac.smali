.class public final Lgbsdk/common/host/abtf$ac;
.super Landroid/content/BroadcastReceiver;
.source "TTStateConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abtf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ac"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.bytedance.ttnet.config.appconfig.SYNC_APP_DELAY_CONFIG_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Lgbsdk/common/host/abtf$ac$1;

    const-string p2, "SyncAppDelayConfig"

    invoke-direct {p1, p0, p2}, Lgbsdk/common/host/abtf$ac$1;-><init>(Lgbsdk/common/host/abtf$ac;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lgbsdk/common/host/abtf$ac$1;->start()V

    :cond_0
    return-void
.end method
