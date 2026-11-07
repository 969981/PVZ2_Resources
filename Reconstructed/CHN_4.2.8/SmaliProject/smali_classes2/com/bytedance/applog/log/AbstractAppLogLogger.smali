.class public abstract Lcom/bytedance/applog/log/AbstractAppLogLogger;
.super Ljava/lang/Object;
.source "AbstractAppLogLogger.java"

# interfaces
.implements Lcom/bytedance/applog/log/IAppLogLogger;


# static fields
.field private static final CHAR_PLACEHOLDER:C = ' '

.field private static final loggerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/applog/log/IAppLogLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private final loggerTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerTags:Ljava/util/List;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logger@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/bytedance/applog/log/IAppLogLogger;
    .locals 1

    .line 45
    sget-object v0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/log/IAppLogLogger;

    return-object p0
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_4

    .line 98
    array-length v1, p2

    if-eqz v1, :cond_4

    const-string v1, "{}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    .line 105
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_1

    :cond_1
    const/16 v5, 0x20

    :goto_1
    const/16 v6, 0x7b

    if-ne v4, v6, :cond_3

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_3

    .line 107
    array-length v4, p2

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 108
    aget-object v3, p2, v3

    invoke-direct {p0, v3}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_4
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
.end method

.method protected getTags(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerTags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerTags:Ljava/util/List;

    return-object p1
.end method

.method protected varargs process(IILjava/util/List;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
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

    .line 52
    invoke-static {}, Lcom/bytedance/applog/log/LogProcessorHolder;->noAnyProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LogInfo;->builder()Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/LogInfoBuilder;->appId(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

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

    invoke-virtual {p0, p3}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->getTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->tags(Ljava/util/List;)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p0, p5, p6}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->message(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->build()Lcom/bytedance/applog/log/LogInfo;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcess(Lcom/bytedance/applog/log/LogInfo;)V

    .line 62
    iget-object p2, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->appId:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/applog/log/LogProcessorHolder;->getAppProcessor(Ljava/lang/String;)Lcom/bytedance/applog/log/ILogProcessor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 64
    invoke-interface {p2, p1}, Lcom/bytedance/applog/log/ILogProcessor;->onLog(Lcom/bytedance/applog/log/LogInfo;)V

    :cond_1
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    .line 37
    iput-object p1, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->appId:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Current logger bind to appId {}"

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
