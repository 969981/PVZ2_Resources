.class public Lcom/bytedance/ttnet/config/AppConfig$3;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/config/AppConfig;->tryLoadLocalConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGv:Lcom/bytedance/ttnet/config/AppConfig;

.field final synthetic aGy:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/config/AppConfig;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig$3;->aGv:Lcom/bytedance/ttnet/config/AppConfig;

    iput-object p3, p0, Lcom/bytedance/ttnet/config/AppConfig$3;->aGy:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 498
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig$3;->aGv:Lcom/bytedance/ttnet/config/AppConfig;

    iget-object v1, v1, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig$3;->aGy:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/ttnet/ITTNetDepend;->saveMapToProvider(Landroid/content/Context;Ljava/util/Map;)V

    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bytedance.ttnet.config.appconfig.SYNC_MAIN_PROCESS_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->sPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->sPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig$3;->aGv:Lcom/bytedance/ttnet/config/AppConfig;

    iget-object v1, v1, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
