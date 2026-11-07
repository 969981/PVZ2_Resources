.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$4;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->doPay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$payWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Lcom/talkweb/twOfflineSdk/bean/PayWay;Landroid/app/Activity;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$4;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$4;->val$payWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 453
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$4;->val$payWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getSelloff()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 455
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$4;->val$activity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u5fae\u4fe1\u3001\u652f\u4ed8\u5b9d\u7b49\u65b9\u5f0f\u652f\u4ed8\u4eab\u53d7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6298\u4f18\u60e0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
