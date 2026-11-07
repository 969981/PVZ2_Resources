.class public Lcom/bytedance/applog/log/LogInfoBuilder;
.super Ljava/lang/Object;
.source "LogInfoBuilder.java"


# instance fields
.field private final logInfo:Lcom/bytedance/applog/log/LogInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/bytedance/applog/log/LogInfo;

    invoke-direct {v0}, Lcom/bytedance/applog/log/LogInfo;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/applog/log/LogInfoBuilder;->time(J)Lcom/bytedance/applog/log/LogInfoBuilder;

    return-void
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfo;->setAppId(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/bytedance/applog/log/LogInfo;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    return-object v0
.end method

.method public category(I)Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfo;->setCategory(I)V

    return-object p0
.end method

.method public level(I)Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfo;->setLevel(I)V

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfo;->setMessage(Ljava/lang/String;)V

    return-object p0
.end method

.method public tags(Ljava/util/List;)Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/applog/log/LogInfoBuilder;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfo;->setTags(Ljava/util/List;)V

    return-object p0
.end method

.method public thread(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfo;->setThread(Ljava/lang/String;)V

    return-object p0
.end method

.method public throwable(Ljava/lang/Throwable;)Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfo;->setThrowable(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public time(J)Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfoBuilder;->logInfo:Lcom/bytedance/applog/log/LogInfo;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/applog/log/LogInfo;->setTime(J)V

    return-object p0
.end method
