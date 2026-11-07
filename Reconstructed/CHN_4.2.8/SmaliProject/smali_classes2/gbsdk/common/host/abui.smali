.class public final Lgbsdk/common/host/abui;
.super Ljava/lang/Object;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abui$ac;,
        Lgbsdk/common/host/abui$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002+,B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0013J\u0006\u0010\u001c\u001a\u00020\u0013J\u0006\u0010\u001d\u001a\u00020\u0010J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020\u0010J\u0006\u0010 \u001a\u00020\u0010J\u0006\u0010!\u001a\u00020\u0010J\u0006\u0010\"\u001a\u00020\u0010J\u000e\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u0016J\u0014\u0010%\u001a\u00020\u001a2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\'J\u0014\u0010(\u001a\u00020\u001a2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\'J\u0016\u0010)\u001a\u00020\u001a2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\'H\u0002J\u000e\u0010*\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/StateManager;",
        "",
        "()V",
        "MASK_MODIFIER",
        "",
        "MASK_RESULT",
        "MASK_STAGE",
        "MODIFIER_FINAL",
        "RESULT_FAIL",
        "RESULT_ING",
        "RESULT_SUCCESS",
        "STAGE_INIT",
        "STAGE_PREPARE",
        "TAG",
        "",
        "initRequestCompleted",
        "",
        "isZeusPrepared",
        "mCurrentState",
        "Lcom/bytedance/ttgame/tob/common/host/main/StateManager$State;",
        "mListeners",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "Lcom/bytedance/ttgame/tob/common/host/main/StateManager$OnStateChangeListener;",
        "mMainHandler",
        "Landroid/os/Handler;",
        "changeState",
        "",
        "state",
        "getCurrentState",
        "isInitFailed",
        "isInitialingDid",
        "isInitialingPreInit",
        "isInitialized",
        "isInitializingAfDidGot",
        "isPrepared",
        "registerStateChangeListener",
        "listener",
        "setInitRequestCompleted",
        "onChangeSuccess",
        "Lkotlin/Function0;",
        "setZeusPrepared",
        "tryChangeStateToPrepared",
        "unregisterStateChangeListener",
        "OnStateChangeListener",
        "State",
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
.field private static final RESULT_SUCCESS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "StateManager"

.field public static final aAj:Lgbsdk/common/host/abui;

.field private static final aAk:I = 0xf

.field private static final aAl:I = 0xf0

.field private static final aAm:I = 0xf00

.field private static final aAn:I = 0x0

.field private static final aAo:I = 0x10

.field private static final aAp:I = 0x1

.field private static final aAq:I = 0x2

.field private static final aAr:I = 0x100

.field private static volatile aAs:Lgbsdk/common/host/abui$ac;

.field private static final aAt:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lgbsdk/common/host/abui$ab;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile aAu:Z

.field private static volatile aAv:Z

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbsdk/common/host/abui;

    invoke-direct {v0}, Lgbsdk/common/host/abui;-><init>()V

    sput-object v0, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    .line 47
    sget-object v0, Lgbsdk/common/host/abui$ac;->aAx:Lgbsdk/common/host/abui$ac;

    sput-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lgbsdk/common/host/abui;->mMainHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lgbsdk/common/host/abui;->aAt:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final c(Lgbsdk/common/host/abui$ac;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abui;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "5b4db80761fd4debeabf39088a56624a"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "$state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lgbsdk/common/host/abui;->aAt:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 147
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abui$ab;

    .line 78
    invoke-interface {v1, p0}, Lgbsdk/common/host/abui$ab;->a(Lgbsdk/common/host/abui$ac;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final declared-synchronized f(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abui;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "93f937c03749bc0bd6ae61ef7d5b4ed8"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "StateManager"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]tryChangeStateToPrepared, isZeusPreperad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lgbsdk/common/host/abui;->aAu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", initRequestCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lgbsdk/common/host/abui;->aAv:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-boolean v0, Lgbsdk/common/host/abui;->aAu:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lgbsdk/common/host/abui;->aAv:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgbsdk/common/host/abui;->fg()Lgbsdk/common/host/abui$ac;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAA:Lgbsdk/common/host/abui$ac;

    if-eq v0, v1, :cond_1

    .line 100
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 101
    sget-object p1, Lgbsdk/common/host/abui$ac;->aAA:Lgbsdk/common/host/abui$ac;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abui;->b(Lgbsdk/common/host/abui$ac;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic lambda$FlC3LFk_2VCiZFbLI8h_o3iUKFs(Lgbsdk/common/host/abui$ac;)V
    .locals 0

    invoke-static {p0}, Lgbsdk/common/host/abui;->c(Lgbsdk/common/host/abui$ac;)V

    return-void
.end method


# virtual methods
.method public final a(Lgbsdk/common/host/abui$ab;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abui;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "89e6039fc2b41ea7a3dda6babaf32265"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lgbsdk/common/host/abui;->aAt:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lgbsdk/common/host/abui$ab;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abui;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "586f5fd34b1c415f3d551c9b4c20845a"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lgbsdk/common/host/abui;->aAt:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized b(Lgbsdk/common/host/abui$ac;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abui;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "529d582bf3b60032d7bc9fec88247bee"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "StateManager"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[osdk_init]changeState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_2
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    invoke-virtual {v0}, Lgbsdk/common/host/abui$ac;->fp()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    const-string v0, "StateManager"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state change on final state, current is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", next is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :try_start_3
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abui$ac;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4

    .line 68
    invoke-virtual {p1}, Lgbsdk/common/host/abui$ac;->fo()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lgbsdk/common/host/abui$ac;->fn()I

    move-result v0

    sget-object v1, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    invoke-virtual {v1}, Lgbsdk/common/host/abui$ac;->fn()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    const-string v0, "StateManager"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state change order, current is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", next is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 74
    :cond_4
    :try_start_4
    sput-object p1, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    .line 76
    sget-object v0, Lgbsdk/common/host/abui;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lgbsdk/common/host/-$$Lambda$abui$FlC3LFk_2VCiZFbLI8h_o3iUKFs;

    invoke-direct {v1, p1}, Lgbsdk/common/host/-$$Lambda$abui$FlC3LFk_2VCiZFbLI8h_o3iUKFs;-><init>(Lgbsdk/common/host/abui$ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abui;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "17025fd88894ccdd842317d1484b93c0"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "onChangeSuccess"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sput-boolean v0, Lgbsdk/common/host/abui;->aAu:Z

    .line 86
    invoke-direct {p0, p1}, Lgbsdk/common/host/abui;->f(Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abui;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "92e95b457c57af2b695b85549e8b6ef3"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "onChangeSuccess"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sput-boolean v0, Lgbsdk/common/host/abui;->aAv:Z

    .line 92
    invoke-direct {p0, p1}, Lgbsdk/common/host/abui;->f(Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final fg()Lgbsdk/common/host/abui$ac;
    .locals 1

    .line 56
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    return-object v0
.end method

.method public final fh()Z
    .locals 2

    .line 115
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAA:Lgbsdk/common/host/abui$ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final fi()Z
    .locals 2

    .line 120
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAB:Lgbsdk/common/host/abui$ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final fj()Z
    .locals 2

    .line 125
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAC:Lgbsdk/common/host/abui$ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final fk()Z
    .locals 2

    .line 130
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAD:Lgbsdk/common/host/abui$ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final fl()Z
    .locals 2

    .line 135
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAE:Lgbsdk/common/host/abui$ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final fm()Z
    .locals 2

    .line 140
    sget-object v0, Lgbsdk/common/host/abui;->aAs:Lgbsdk/common/host/abui$ac;

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAF:Lgbsdk/common/host/abui$ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
