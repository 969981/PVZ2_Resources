.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->secondLockInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fApiKey:Ljava/lang/String;

.field final synthetic val$fChanelUserId:Ljava/lang/String;

.field final synthetic val$fChannelId:I

.field final synthetic val$fHead:Ljava/lang/String;

.field final synthetic val$fLoginInfo:Ljava/lang/String;

.field final synthetic val$fMd5:Ljava/lang/String;

.field final synthetic val$fUserId:Ljava/lang/String;

.field final synthetic val$missing:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1477
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$missing:Ljava/util/List;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fLoginInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fChanelUserId:Ljava/lang/String;

    iput-object p5, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fHead:Ljava/lang/String;

    iput-object p6, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fMd5:Ljava/lang/String;

    iput p7, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fChannelId:I

    iput-object p8, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fApiKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1481
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$missing:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e8c\u7ea7\u9501\u53c2\u6570\u5f02\u5e38\uff0c\u7f3a\u5c11\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$missing:Ljava/util/List;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->access$400(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->access$500(Ljava/lang/String;)V

    .line 1485
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/talkweb/secondlock/SecondLockUtil;->getInstance()Lcom/talkweb/secondlock/SecondLockUtil;

    move-result-object v1

    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fLoginInfo:Ljava/lang/String;

    iget-object v5, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fChanelUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fHead:Ljava/lang/String;

    iget-object v7, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fMd5:Ljava/lang/String;

    iget v8, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fChannelId:I

    iget-object v9, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;->val$fApiKey:Ljava/lang/String;

    invoke-virtual/range {v1 .. v9}, Lcom/talkweb/secondlock/SecondLockUtil;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1488
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecondLockUtil.init failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e8c\u7ea7\u9501\u521d\u59cb\u5316\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->access$500(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
