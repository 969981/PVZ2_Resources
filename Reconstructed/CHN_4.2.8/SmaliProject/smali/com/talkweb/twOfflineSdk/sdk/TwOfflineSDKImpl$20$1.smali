.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20$1;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;->isAgreement(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;)V
    .locals 0

    .line 2032
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20$1;->this$1:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2036
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20$1;->this$1:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;->val$privacyAgreementCallback:Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;->isAgreement(Z)V

    return-void
.end method
