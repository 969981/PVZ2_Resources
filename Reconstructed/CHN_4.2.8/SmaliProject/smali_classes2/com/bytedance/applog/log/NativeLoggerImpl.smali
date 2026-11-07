.class public Lcom/bytedance/applog/log/NativeLoggerImpl;
.super Lcom/bytedance/applog/log/LoggerImpl;
.source "NativeLoggerImpl.java"


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/bytedance/applog/log/LoggerImpl;-><init>()V

    const-string v0, "NativeLoggerImpl"

    .line 17
    iput-object v0, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/bytedance/applog/log/LoggerImpl;-><init>()V

    const-string v0, "NativeLoggerImpl"

    .line 17
    iput-object v0, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

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

    .line 31
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

    invoke-virtual {p0, p3}, Lcom/bytedance/applog/log/NativeLoggerImpl;->getTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->tags(Ljava/util/List;)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p0, p5, p6}, Lcom/bytedance/applog/log/NativeLoggerImpl;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->message(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->build()Lcom/bytedance/applog/log/LogInfo;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getLevel()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    .line 48
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 40
    :cond_1
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    :cond_2
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 34
    :cond_3
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
