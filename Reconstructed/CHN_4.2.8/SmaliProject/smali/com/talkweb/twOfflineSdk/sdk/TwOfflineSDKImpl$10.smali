.class final Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$10;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->showPaylDialog(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$price:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$10;->val$orderNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$10;->val$price:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 882
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$10;->val$orderNumber:Ljava/lang/String;

    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$10;->val$price:Ljava/lang/String;

    const/16 v0, 0x270f

    const-string v1, "\u652f\u4ed8\u6210\u529f!"

    invoke-static {v0, v1, p1, p1, p2}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
