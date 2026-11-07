.class public Lcom/talkweb/twOfflineSdk/tools/MyRunnable;
.super Ljava/lang/Thread;
.source "MyRunnable.java"


# instance fields
.field private context:Landroid/app/Activity;

.field gson:Lcom/google/gson/Gson;

.field private i:I

.field private isYoung:Ljava/lang/String;

.field private pi:Ljava/lang/String;

.field private si:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->i:I

    .line 39
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->gson:Lcom/google/gson/Gson;

    .line 33
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->pi:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->si:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->context:Landroid/app/Activity;

    .line 36
    iput-object p4, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->isYoung:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$008(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)I
    .locals 2

    .line 15
    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->i:I

    return v0
.end method

.method static synthetic access$100(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)Landroid/app/Activity;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->context:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public antiAddiction()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->context:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;-><init>(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 10

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->pi:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->si:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->isYoung:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 49
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "pi"

    .line 50
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "si"

    .line 51
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5fc3\u8df3\u53c2\u6570\u53d1\u9001\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/16 v0, 0x12

    .line 55
    new-instance v1, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$1;-><init>(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)V

    invoke-static {v0, v3, v1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    .line 63
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    .line 66
    div-long v4, v0, v2

    mul-long/2addr v4, v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x44aa200

    add-long/2addr v2, v4

    const-wide/32 v6, 0x4819080

    add-long/2addr v6, v4

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1zeroTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",time8:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",time22:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->antiAddiction()V

    const-string v0, "\u4e0d\u5c5e\u4e8e20\u70b9\u81f321\u70b9\u4e4b\u95f4\u4e0d\u53ef\u4ee5\u73a9\u6e38\u620f"

    .line 76
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-wide/32 v0, 0xea60

    .line 80
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
