.class public Lcom/bytedance/ttnet/config/AppConfig$ab$1;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/config/AppConfig$ab;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGz:Lcom/bytedance/ttnet/config/AppConfig$ab;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/config/AppConfig$ab;Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig$ab$1;->aGz:Lcom/bytedance/ttnet/config/AppConfig$ab;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 178
    invoke-static {}, Lgbsdk/common/host/abtc;->ha()Lgbsdk/common/host/abtc;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abtc;->hb()V

    return-void
.end method
