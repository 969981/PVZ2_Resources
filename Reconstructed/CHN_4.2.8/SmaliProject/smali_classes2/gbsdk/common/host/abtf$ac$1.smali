.class public Lgbsdk/common/host/abtf$ac$1;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "TTStateConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abtf$ac;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHz:Lgbsdk/common/host/abtf$ac;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abtf$ac;Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lgbsdk/common/host/abtf$ac$1;->aHz:Lgbsdk/common/host/abtf$ac;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    invoke-static {}, Lgbsdk/common/host/abte;->hi()Lgbsdk/common/host/abte;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abte;->hj()V

    return-void
.end method
