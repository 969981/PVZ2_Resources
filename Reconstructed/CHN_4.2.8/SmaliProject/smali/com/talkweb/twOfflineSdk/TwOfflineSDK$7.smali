.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$7;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->wait(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 387
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 388
    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$7$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$7$1;-><init>(Lcom/talkweb/twOfflineSdk/TwOfflineSDK$7;)V

    .line 394
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->access$100()J

    move-result-wide v2

    .line 388
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
