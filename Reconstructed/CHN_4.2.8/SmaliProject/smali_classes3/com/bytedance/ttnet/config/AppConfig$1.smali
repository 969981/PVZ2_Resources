.class public Lcom/bytedance/ttnet/config/AppConfig$1;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/config/AppConfig;->tryRefreshConfigInternal(Lgbsdk/common/host/abwt$ab;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGv:Lcom/bytedance/ttnet/config/AppConfig;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/config/AppConfig;Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig$1;->aGv:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig$1;->aGv:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-virtual {v0}, Lcom/bytedance/ttnet/config/AppConfig;->tryLoadDomainConfig4OtherProcess()V

    return-void
.end method
