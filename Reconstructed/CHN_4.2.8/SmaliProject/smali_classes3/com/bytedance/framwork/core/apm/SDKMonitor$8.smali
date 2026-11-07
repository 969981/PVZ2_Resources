.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$8;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->init(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;

.field final synthetic d:Lcom/bytedance/framwork/core/apm/SDKMonitor;


# direct methods
.method constructor <init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->d:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iput-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->c:Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->d:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->b:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->c:Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V

    .line 254
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->d:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->d:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;->d:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abnk;->k(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    :cond_0
    return-void
.end method
