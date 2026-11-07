.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$13;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->exit(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$13;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 984
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/16 p1, 0x1389

    .line 985
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onExitCallBack(I)V

    return-void
.end method
