.class Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23$1;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;)V
    .locals 0

    .line 1580
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23$1;->this$0:Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 2

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifySecondLock onResult b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23$1;->this$0:Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    return-void
.end method
