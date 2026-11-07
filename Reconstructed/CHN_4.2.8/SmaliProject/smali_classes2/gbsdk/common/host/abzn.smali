.class public final Lgbsdk/common/host/abzn;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 17
    invoke-static {}, Lgbsdk/common/host/abzp;->hR()Lgbsdk/common/host/abzp;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1101
    iget-object v0, v0, Lgbsdk/common/host/abzp;->aNb:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lgbsdk/common/host/abzp;->hR()Lgbsdk/common/host/abzp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgbsdk/common/host/abzp;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 20
    :cond_0
    new-instance v0, Lgbsdk/common/host/abzn$1;

    invoke-direct {v0, p0, p1, p2}, Lgbsdk/common/host/abzn$1;-><init>(Lgbsdk/common/host/abzn;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Lgbsdk/common/host/abxy;->b(Ljava/lang/Runnable;)V

    return-void
.end method
