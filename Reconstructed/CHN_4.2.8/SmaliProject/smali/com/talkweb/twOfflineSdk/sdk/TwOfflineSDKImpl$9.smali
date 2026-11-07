.class final Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->payTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$price:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;Ljava/lang/String;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;->val$orderNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;->val$price:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 2

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d4b\u8bd5\u652f\u4ed8\u8fd4\u56dereturnObject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "0000"

    .line 848
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 850
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;->val$orderNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;->val$price:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->access$000(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
