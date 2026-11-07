.class public final Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "IAppLogEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static synthetic addParamsInfo$default(Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;Ljava/lang/String;Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;ZILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p5, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "3996915cba1e82673b9bdcc8a5e6fe89"

    invoke-static {v0, v4, v2, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_2

    and-int/2addr p4, v3

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 40
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;->addParamsInfo(Ljava/lang/String;Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addParamsInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addParamsInfo$default(Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p5, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "06776cfa3920949b16807a667902c00c"

    invoke-static {v0, v4, v2, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_2

    and-int/2addr p4, v3

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 25
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;->addParamsInfo(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addParamsInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addParamsInfo$default(Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p5, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "36e6550fd8a829cd600e654f1e5cd85f"

    invoke-static {v0, v4, v2, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_2

    and-int/2addr p4, v3

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 48
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;->addParamsInfo(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addParamsInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addParamsInfo$default(Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;Ljava/util/Map;ZILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "a1153a702b4fe680c7dc700fae4b9d76"

    invoke-static {v0, v4, v2, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_2

    and-int/2addr p3, v3

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 32
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;->addParamsInfo(Ljava/util/Map;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addParamsInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic registerEventHandler$default(Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;Lcom/bytedance/applog/event/IEventHandler;IILjava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "66f6857c6c0f4a0bf7faf5f4c3e27a41"

    invoke-static {v0, v4, v2, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-nez p4, :cond_2

    and-int/2addr p3, v3

    if-eqz p3, :cond_1

    const/16 p2, 0x32

    .line 64
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;->registerEventHandler(Lcom/bytedance/applog/event/IEventHandler;I)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: registerEventHandler"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
