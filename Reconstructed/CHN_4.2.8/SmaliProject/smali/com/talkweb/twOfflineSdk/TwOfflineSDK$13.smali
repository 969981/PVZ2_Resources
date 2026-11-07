.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$13;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->checkNumber(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$13;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 576
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$13;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->checkorder(Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;)V

    return-void
.end method
