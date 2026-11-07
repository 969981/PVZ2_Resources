.class public final Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;
.super Ljava/lang/Object;
.source "ALogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J$\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J$\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J$\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J$\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;",
        "",
        "()V",
        "loggerWriter",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;",
        "getLoggerWriter",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;",
        "loggerWriter$delegate",
        "Lkotlin/Lazy;",
        "d",
        "",
        "tag",
        "",
        "msg",
        "throwable",
        "",
        "e",
        "message",
        "i",
        "v",
        "w",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static final loggerWriter$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;

    .line 13
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2$loggerWriter$2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2$loggerWriter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->loggerWriter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "23bd2999727fa50778e995ca427fede0"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v3, v0, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->d$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "fb514007f0cf9d8f94060dbc8951b4e3"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->getLoggerWriter()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static synthetic d$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object p4, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "90d97f59cd8b07c2acbedecd62405eff"

    invoke-static {v0, v3, p4, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    move-object p2, v3

    .line 26
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "7465c3f865f6a0988da1aea5dd6d3151"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v3, v0, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->e$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "3509dffaa19bcda166966286847f6d25"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->getLoggerWriter()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static synthetic e$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object p4, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "71b7ec0c70444348995970b9f5aa79a8"

    invoke-static {v0, v3, p4, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    move-object p2, v3

    .line 41
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final getLoggerWriter()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8af95a3a734f2f68a13cc7dfc33f9da1"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    return-object v0

    .line 13
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->loggerWriter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    return-object v0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "2cef34303b599c0660b90e80c90f3135"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v3, v0, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->i$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "962d8da95dd13d8612d639f24d2a852b"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->getLoggerWriter()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static synthetic i$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object p4, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "084aaa4709545c89382b7c6c59bc4ef5"

    invoke-static {v0, v3, p4, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    move-object p2, v3

    .line 34
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "5534967561455594685f4017601a6eec"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v3, v0, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->v$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "38eaa24e0d510dc8e0821a94535182ad"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->getLoggerWriter()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static synthetic v$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object p4, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "e9a2cd0a61edc7261402ecc0b8186cfb"

    invoke-static {v0, v3, p4, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    move-object p2, v3

    .line 19
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "d1ab9a5f2e7380cb7add5feeb00d6588"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v3, v0, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->w$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "694b1c892d20870e0f55750807c3e4ed"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->getLoggerWriter()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static synthetic w$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object p4, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "765bfbaea79bc528d2ef50b95bea3fbb"

    invoke-static {v0, v3, p4, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    move-object p2, v3

    .line 48
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
