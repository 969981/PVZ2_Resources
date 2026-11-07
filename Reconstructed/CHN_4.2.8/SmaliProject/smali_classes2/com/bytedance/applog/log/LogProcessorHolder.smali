.class public Lcom/bytedance/applog/log/LogProcessorHolder;
.super Ljava/lang/Object;
.source "LogProcessorHolder.java"


# static fields
.field private static final commonProcessors:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/bytedance/applog/log/ILogProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAppProcessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/applog/log/ILogProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcessors:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->mAppProcessors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProcessor(Lcom/bytedance/applog/log/ILogProcessor;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcessors:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static commonProcess(Lcom/bytedance/applog/log/LogInfo;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcessors:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/bytedance/applog/log/LogProcessorHolder;->getCommonProcessors()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/log/ILogProcessor;

    invoke-interface {v1, p0}, Lcom/bytedance/applog/log/ILogProcessor;->onLog(Lcom/bytedance/applog/log/LogInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getAppProcessor(Ljava/lang/String;)Lcom/bytedance/applog/log/ILogProcessor;
    .locals 1

    .line 69
    invoke-static {p0}, Lcom/bytedance/applog/log/LogProcessorHolder;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->mAppProcessors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/log/ILogProcessor;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppProcessors()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/bytedance/applog/log/ILogProcessor;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->mAppProcessors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static getCommonProcessors()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/bytedance/applog/log/ILogProcessor;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcessors:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static isNotEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static noAnyProcessor()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcessors:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->mAppProcessors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setProcessor(Ljava/lang/String;Lcom/bytedance/applog/log/ILogProcessor;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/bytedance/applog/log/LogProcessorHolder;->mAppProcessors:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
