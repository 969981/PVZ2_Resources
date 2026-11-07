.class public final Lcom/bytedance/ttnet/config/AppConfig$ab;
.super Landroid/content/BroadcastReceiver;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttnet/config/AppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.bytedance.ttnet.config.appconfig.SYNC_MAIN_PROCESS_CONFIG"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    new-instance p1, Lcom/bytedance/ttnet/config/AppConfig$ab$1;

    const-string p2, "SyncMainProcessConfig"

    invoke-direct {p1, p0, p2}, Lcom/bytedance/ttnet/config/AppConfig$ab$1;-><init>(Lcom/bytedance/ttnet/config/AppConfig$ab;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/bytedance/ttnet/config/AppConfig$ab$1;->start()V

    :cond_0
    return-void
.end method
