.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->uploadUserInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$zero:J


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;J)V
    .locals 0

    .line 1489
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->val$activity:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->val$zero:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "0000"

    .line 1494
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u4e0a\u4f20\u690d\u7269\u5927\u6218\u50f5\u5c38\u7528\u6237\u4fe1\u606f\u6210\u529f!"

    .line 1495
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1496
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->access$100(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->val$activity:Landroid/app/Activity;

    .line 1497
    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->access$100(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->val$zero:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 1498
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->access$200(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u4e0a\u4f20\u690d\u7269\u5927\u6218\u50f5\u5c38\u7528\u6237\u4fe1\u606f\u5931\u8d25!"

    .line 1501
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
