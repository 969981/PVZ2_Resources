.class public final Lcom/bytedance/applog/log/GlobalLoggerImpl;
.super Lcom/bytedance/applog/log/LoggerImpl;
.source "GlobalLoggerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bytedance/applog/log/LoggerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs process(IILjava/util/List;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/bytedance/applog/log/LogProcessorHolder;->noAnyProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LogInfo;->builder()Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->category(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->level(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->thread(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/bytedance/applog/log/LogInfoBuilder;->throwable(Ljava/lang/Throwable;)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/bytedance/applog/log/GlobalLoggerImpl;->getTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->tags(Ljava/util/List;)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p0, p5, p6}, Lcom/bytedance/applog/log/GlobalLoggerImpl;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->message(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->build()Lcom/bytedance/applog/log/LogInfo;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcess(Lcom/bytedance/applog/log/LogInfo;)V

    .line 28
    invoke-static {}, Lcom/bytedance/applog/log/LogProcessorHolder;->getAppProcessors()Ljava/util/Iterator;

    move-result-object p2

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/applog/log/ILogProcessor;

    invoke-interface {p3, p1}, Lcom/bytedance/applog/log/ILogProcessor;->onLog(Lcom/bytedance/applog/log/LogInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "You should not set appId on global logger instance"

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/applog/log/GlobalLoggerImpl;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
