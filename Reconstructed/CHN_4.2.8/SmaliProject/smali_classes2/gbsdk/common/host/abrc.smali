.class public final Lgbsdk/common/host/abrc;
.super Ljava/lang/Object;
.source "ALoggerDelegateImpl.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/alog/ALoggerDelegateImpl;",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;",
        "()V",
        "writer",
        "com/bytedance/ttgame/tob/common/host/delegate/impl/alog/ALoggerDelegateImpl$writer$2$1",
        "getWriter",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/impl/alog/ALoggerDelegateImpl$writer$2$1;",
        "writer$delegate",
        "Lkotlin/Lazy;",
        "getLoggerWriter",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;",
        "initALogger",
        "",
        "context",
        "Landroid/content/Context;",
        "ch_delegate_impl_osdk_tobRelease"
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final Eb:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lgbsdk/common/host/abrc$ab;->Ec:Lgbsdk/common/host/abrc$ab;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abrc;->Eb:Lkotlin/Lazy;

    return-void
.end method

.method private final eD()Lgbsdk/common/host/abrc$ab$1;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrc;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f343a382b78d1a88dc298a8123774cc6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abrc$ab$1;

    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abrc;->Eb:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abrc$ab$1;

    return-object v0
.end method


# virtual methods
.method public getLoggerWriter()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrc;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4aae5f13212e8abf7ea47edcff3676c7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    return-object v0

    .line 37
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrc;->eD()Lgbsdk/common/host/abrc$ab$1;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LoggerWriter;

    return-object v0
.end method

.method public initALogger(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrc;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "604e886363b0ec640bd2e4fc47fba8d3"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lgbsdk/common/host/abua;->init(Landroid/content/Context;)V

    return-void
.end method
