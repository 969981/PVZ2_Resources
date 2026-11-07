.class public Lgbsdk/common/host/abwt$2;
.super Landroid/os/Handler;
.source "TNCManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aJD:Lgbsdk/common/host/abwt;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abwt;Landroid/os/Looper;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lgbsdk/common/host/abwt$2;->aJD:Lgbsdk/common/host/abwt;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 462
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 465
    :goto_0
    iget-object v1, p0, Lgbsdk/common/host/abwt$2;->aJD:Lgbsdk/common/host/abwt;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, p1}, Lgbsdk/common/host/abwt;->F(I)Lgbsdk/common/host/abwt$ab;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lgbsdk/common/host/abwt;->a(ZLgbsdk/common/host/abwt$ab;)V

    :goto_1
    return-void
.end method
