.class public Lcom/bytedance/ttnet/config/AppConfig$2;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/config/AppConfig;->doRefresh(Lgbsdk/common/host/abwt$ab;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGv:Lcom/bytedance/ttnet/config/AppConfig;

.field final synthetic aGw:Lgbsdk/common/host/abwt$ab;

.field final synthetic aGx:Z


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/config/AppConfig;Ljava/lang/String;Lgbsdk/common/host/abwt$ab;Z)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig$2;->aGv:Lcom/bytedance/ttnet/config/AppConfig;

    iput-object p3, p0, Lcom/bytedance/ttnet/config/AppConfig$2;->aGw:Lgbsdk/common/host/abwt$ab;

    iput-boolean p4, p0, Lcom/bytedance/ttnet/config/AppConfig$2;->aGx:Z

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig$2;->aGv:Lcom/bytedance/ttnet/config/AppConfig;

    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig$2;->aGw:Lgbsdk/common/host/abwt$ab;

    iget-boolean v2, p0, Lcom/bytedance/ttnet/config/AppConfig$2;->aGx:Z

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ttnet/config/AppConfig;->updateConfig(Lgbsdk/common/host/abwt$ab;Z)V

    return-void
.end method
