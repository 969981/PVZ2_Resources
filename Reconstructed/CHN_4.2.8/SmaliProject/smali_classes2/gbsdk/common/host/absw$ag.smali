.class public final Lgbsdk/common/host/absw$ag;
.super Landroid/os/Handler;
.source "ZeusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/absw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/main/plugin/ZeusManager$mainHandler$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
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
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 341
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static final gA()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/absw$ag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ab020c74dd8bf82614436d77737fe832"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 346
    :cond_0
    sget-object v0, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {v0}, Lgbsdk/common/host/absw;->gh()V

    return-void
.end method

.method private static final gB()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/absw$ag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "97acc9aeda617f0f99a43fd7a6f61d52"

    invoke-static {v1, v3, v2, v4, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 352
    :cond_0
    sget-object v1, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-static {v1, v0, v4, v3}, Lgbsdk/common/host/absw;->a(Lgbsdk/common/host/absw;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final gC()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/absw$ag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "94c438b53ed2fb1448fbb709020b87a9"

    invoke-static {v1, v3, v2, v4, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 358
    :cond_0
    sget-object v1, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {v1, v0}, Lgbsdk/common/host/absw;->B(Z)V

    return-void
.end method

.method public static synthetic lambda$QDz74JaNgqmMvvyVwNtOTt2pV14()V
    .locals 0

    invoke-static {}, Lgbsdk/common/host/absw$ag;->gA()V

    return-void
.end method

.method public static synthetic lambda$_1kVPhV0cbfNXufkLoha9hg58Es()V
    .locals 0

    invoke-static {}, Lgbsdk/common/host/absw$ag;->gB()V

    return-void
.end method

.method public static synthetic lambda$fD2Pk-mrV3_ZFFwAfLOB5xMHJXs()V
    .locals 0

    invoke-static {}, Lgbsdk/common/host/absw$ag;->gC()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/absw$ag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "905252fb9e70c9c49cb6c611f703917c"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "msg"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "workThread"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_3

    .line 357
    :cond_1
    sget-object p1, Lgbsdk/common/host/absw;->aDE:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    sget-object p1, Lgbsdk/common/host/-$$Lambda$absw$ag$fD2Pk-mrV3_ZFFwAfLOB5xMHJXs;->INSTANCE:Lgbsdk/common/host/-$$Lambda$absw$ag$fD2Pk-mrV3_ZFFwAfLOB5xMHJXs;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    .line 351
    :cond_3
    sget-object p1, Lgbsdk/common/host/absw;->aDE:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    sget-object p1, Lgbsdk/common/host/-$$Lambda$absw$ag$_1kVPhV0cbfNXufkLoha9hg58Es;->INSTANCE:Lgbsdk/common/host/-$$Lambda$absw$ag$_1kVPhV0cbfNXufkLoha9hg58Es;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    .line 345
    :cond_5
    sget-object p1, Lgbsdk/common/host/absw;->aDE:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p1

    :goto_2
    sget-object p1, Lgbsdk/common/host/-$$Lambda$absw$ag$QDz74JaNgqmMvvyVwNtOTt2pV14;->INSTANCE:Lgbsdk/common/host/-$$Lambda$absw$ag$QDz74JaNgqmMvvyVwNtOTt2pV14;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_3
    return-void
.end method
