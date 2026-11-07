.class public final Lcom/bytedance/ttnet/TTNetInit$1;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "TTNetInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/TTNetInit;->tryInitTTNet(Landroid/content/Context;Landroid/app/Application;Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;Z[Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic aFn:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    .line 273
    iput-object p2, p0, Lcom/bytedance/ttnet/TTNetInit$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/bytedance/ttnet/TTNetInit$1;->aFn:Z

    invoke-direct {p0, p1}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/bytedance/ttnet/TTNetInit$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttnet/config/AppConfig;->tryLoadLocalConfig()V

    .line 280
    iget-object v0, p0, Lcom/bytedance/ttnet/TTNetInit$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/abwt$ab;->aJH:Lgbsdk/common/host/abwt$ab;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ttnet/config/AppConfig;->tryRefreshConfig(Lgbsdk/common/host/abwt$ab;Z)V

    .line 282
    iget-object v0, p0, Lcom/bytedance/ttnet/TTNetInit$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/bytedance/ttnet/TTNetInit$1;->aFn:Z

    invoke-static {v0, v1, v2}, Lcom/bytedance/ttnet/TTNetInit;->tryInitCookieManager(Landroid/content/Context;ZZ)V

    return-void
.end method
