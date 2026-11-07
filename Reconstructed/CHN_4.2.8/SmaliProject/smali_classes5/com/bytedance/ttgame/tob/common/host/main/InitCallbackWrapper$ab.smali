.class public final Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper$ab;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0018\u0010\n\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "globalCallbackSet",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;",
        "clearGlobalCallbackSet",
        "",
        "wrap",
        "callback",
        "start",
        "",
        "ch_main_tobRelease"
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper$ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;J)Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ce07bbfe63a1c6e768c35a6e485adc41"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    return-object p1

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 30
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;->globalCallbackSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance p1, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;

    invoke-direct {p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;-><init>(J)V

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;

    invoke-direct {p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;-><init>(J)V

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    :goto_0
    return-object p1
.end method

.method public final eX()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "69e324dd17611e7ce3b9ec3707729ccb"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;->globalCallbackSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method
