.class public Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;
.super Ljava/lang/Object;
.source "LogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$1;)V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->time:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$1;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    return-object v0
.end method

.method public level(I)Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    iput p1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->level:I

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->message:Ljava/lang/String;

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public thread(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->thread:Ljava/lang/String;

    return-object p0
.end method

.method public throwable(Ljava/lang/Throwable;)Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public tips(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "2beae998f7cc86a1f65e6c6a91175492"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;

    return-object p1

    .line 134
    :cond_0
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    iput-boolean v0, v1, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->remind:Z

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;->logInfo:Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->tips:Ljava/lang/String;

    return-object p0
.end method
