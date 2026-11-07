.class public final Lgbsdk/common/host/absw$af;
.super Lcom/volcengine/zeus/ZeusPluginStateListener;
.source "ZeusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/absw;->gg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J7\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0016\u0010\u0008\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\n0\t\"\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/main/plugin/ZeusManager$listenPluginState$1",
        "Lcom/volcengine/zeus/ZeusPluginStateListener;",
        "onStateChangeOnCurThread",
        "",
        "pkgName",
        "",
        "eventType",
        "",
        "objects",
        "",
        "",
        "(Ljava/lang/String;I[Ljava/lang/Object;)V",
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
.method constructor <init>()V
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/volcengine/zeus/ZeusPluginStateListener;-><init>()V

    return-void
.end method

.method private static final a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    sget-object v2, Lgbsdk/common/host/absw$af;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "feaaa0215038df5ae203301277cca34f"

    invoke-static {v1, v4, v2, v3, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "$objects"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    sget v1, Lgbsdk/common/host/absw;->aDP:I

    if-ne v1, v0, :cond_1

    .line 516
    sget-object v0, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lgbsdk/common/host/absw;->a(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 518
    :cond_1
    sget-object v0, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lgbsdk/common/host/absw;->b(Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$FhpWmj1mhaJVn2yAu--_OzMfaiY(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lgbsdk/common/host/absw$af;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs onStateChangeOnCurThread(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/common/host/absw$af;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4fe39a85668c39875a42660b5893928a"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "objects"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    .line 514
    :cond_1
    sget-object v0, Lgbsdk/common/host/absw;->aDE:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    const-string v0, "workThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    new-instance v1, Lgbsdk/common/host/-$$Lambda$absw$af$FhpWmj1mhaJVn2yAu--_OzMfaiY;

    invoke-direct {v1, p1, p2, p3}, Lgbsdk/common/host/-$$Lambda$absw$af$FhpWmj1mhaJVn2yAu--_OzMfaiY;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
