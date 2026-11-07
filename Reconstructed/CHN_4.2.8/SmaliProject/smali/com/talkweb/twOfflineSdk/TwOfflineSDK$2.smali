.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->doInit(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;->val$context:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2$1;-><init>(Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;)V

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->parsePayConfig(Landroid/content/Context;Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;)V

    return-void
.end method
