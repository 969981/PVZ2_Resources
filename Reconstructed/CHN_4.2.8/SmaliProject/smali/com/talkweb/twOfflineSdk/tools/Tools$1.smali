.class final Lcom/talkweb/twOfflineSdk/tools/Tools$1;
.super Landroid/os/Handler;
.source "Tools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/Tools;->setChanenlLogo(Landroid/content/Context;FZIILcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

.field final synthetic val$dialog:Lcom/talkweb/twOfflineSdk/activity/SplashDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;Lcom/talkweb/twOfflineSdk/activity/SplashDialog;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/Tools$1;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/tools/Tools$1;->val$dialog:Lcom/talkweb/twOfflineSdk/activity/SplashDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 260
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 261
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/Tools$1;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/Tools$1;->val$dialog:Lcom/talkweb/twOfflineSdk/activity/SplashDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/activity/SplashDialog;->dismiss()V

    const-string p1, "TwSplash dialog dismissed"

    .line 263
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
