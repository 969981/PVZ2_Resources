.class public Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;
.super Ljava/lang/Object;
.source "StartConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private startConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->startConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->startConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;

    return-object v0
.end method

.method public cloudGameInfo(Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;)Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->startConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;->cloudGameInfo:Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;

    :cond_0
    return-object p0
.end method

.method public extraInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7ca76f0efcc6e4c401705d434ecacb24"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 35
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->startConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;->extraInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public extraInfo(Ljava/util/HashMap;)Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "00372053cfd733c323b896757e7b8ed7"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 43
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->extraInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public packageChannel(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->startConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;->packageChannel:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public packageTag(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig$Builder;->startConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;->packageTag:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
