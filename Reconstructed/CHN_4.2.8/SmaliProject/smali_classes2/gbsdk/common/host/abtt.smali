.class public final Lgbsdk/common/host/abtt;
.super Ljava/lang/Object;
.source "PerformanceDelegateImpl.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abtt$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010\u000c\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\u000e\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/performance/PerformanceDelegateImpl;",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;",
        "()V",
        "canPerformance",
        "",
        "godzillaIsInit",
        "initialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "initGodzilla",
        "",
        "context",
        "Landroid/content/Context;",
        "initJato",
        "initPerformanceMonitor",
        "shrinkVM",
        "Companion",
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
.field public static final EG:Lgbsdk/common/host/abtt$ab;

.field private static final TAG:Ljava/lang/String; = "PerformanceService"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final EH:Z

.field private final EI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private EJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbsdk/common/host/abtt$ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abtt$ab;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgbsdk/common/host/abtt;->EG:Lgbsdk/common/host/abtt$ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/common/host/abtt;->EI:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final au(Landroid/content/Context;)V
    .locals 5

    const-string v0, "PerformanceService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abtt;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "054b13a9ba5ea60dedd24779c62c15a4"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 53
    :cond_0
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abrg;->ep()Lgbsdk/common/host/abrg;

    move-result-object v1

    iget-boolean v1, v1, Lgbsdk/common/host/abrg;->Dp:Z

    if-nez v1, :cond_1

    const-string p1, "shrink_vm config is false"

    .line 54
    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/abtt;->EI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    invoke-direct {p0, p1}, Lgbsdk/common/host/abtt;->av(Landroid/content/Context;)V

    .line 60
    :cond_2
    invoke-static {}, Lcom/bytedance/common/jato/Jato;->shrinkVM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v1, "shrink_vm config is error!"

    .line 62
    invoke-static {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final av(Landroid/content/Context;)V
    .locals 6

    const-string v0, "PerformanceService"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v4, Lgbsdk/common/host/abtt;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "41f046018cfaae122608acace6965c8e"

    invoke-static {v2, p0, v4, v3, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/abtt;->EI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    const-string p1, "context is null when init, abort"

    .line 72
    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lgbsdk/common/host/abtt;->EI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 76
    :cond_1
    new-instance v1, Lgbsdk/common/host/abtt$ae;

    invoke-direct {v1}, Lgbsdk/common/host/abtt$ae;-><init>()V

    check-cast v1, Lcom/bytedance/common/jato/JatoListener;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 87
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 85
    invoke-static {p1, v3, v1, v2}, Lcom/bytedance/common/jato/Jato;->init(Landroid/content/Context;ZLcom/bytedance/common/jato/JatoListener;Ljava/util/concurrent/ExecutorService;)V

    const-string p1, "initialized!"

    .line 89
    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.util.concurrent.ExecutorService"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v1, "Something wrong when init!"

    .line 92
    invoke-static {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    iget-object p1, p0, Lgbsdk/common/host/abtt;->EI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final aw(Landroid/content/Context;)V
    .locals 6

    const-string v0, "PerformanceService"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v4, Lgbsdk/common/host/abtt;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "81a4ef70ba80c1550827e6e344d9060f"

    invoke-static {v2, p0, v4, v3, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abrg;->ep()Lgbsdk/common/host/abrg;

    move-result-object v2

    .line 100
    iget-boolean v3, v2, Lgbsdk/common/host/abrg;->Dq:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lgbsdk/common/host/abtt;->EJ:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    new-instance v3, Lcom/bytedance/platform/godzilla/Godzilla$Builder;

    move-object v4, p1

    check-cast v4, Landroid/app/Application;

    invoke-direct {v3, v4}, Lcom/bytedance/platform/godzilla/Godzilla$Builder;-><init>(Landroid/app/Application;)V

    .line 105
    new-instance v4, Lcom/bytedance/platform/godzilla/sysopt/PthreadCreateHookPlugin;

    iget v2, v2, Lgbsdk/common/host/abrg;->Dr:I

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {v4, v2}, Lcom/bytedance/platform/godzilla/sysopt/PthreadCreateHookPlugin;-><init>(I)V

    check-cast v4, Lcom/bytedance/platform/godzilla/plugin/BasePlugin;

    invoke-virtual {v3, v4}, Lcom/bytedance/platform/godzilla/Godzilla$Builder;->plugin(Lcom/bytedance/platform/godzilla/plugin/BasePlugin;)Lcom/bytedance/platform/godzilla/Godzilla$Builder;

    .line 106
    new-instance v2, Lcom/bytedance/platform/godzilla/crash/uncaughtexecption/SuperUncaughtExceptionPlugin;

    new-instance v4, Lgbsdk/common/host/abtt$ac;

    invoke-direct {v4}, Lgbsdk/common/host/abtt$ac;-><init>()V

    check-cast v4, Lcom/bytedance/platform/godzilla/crash/uncaughtexecption/SuperUncaughtExceptionPlugin$ConfigFetcher;

    invoke-direct {v2, v4, p1}, Lcom/bytedance/platform/godzilla/crash/uncaughtexecption/SuperUncaughtExceptionPlugin;-><init>(Lcom/bytedance/platform/godzilla/crash/uncaughtexecption/SuperUncaughtExceptionPlugin$ConfigFetcher;Landroid/content/Context;)V

    check-cast v2, Lcom/bytedance/platform/godzilla/plugin/BasePlugin;

    invoke-virtual {v3, v2}, Lcom/bytedance/platform/godzilla/Godzilla$Builder;->plugin(Lcom/bytedance/platform/godzilla/plugin/BasePlugin;)Lcom/bytedance/platform/godzilla/Godzilla$Builder;

    .line 133
    new-instance v2, Lcom/bytedance/platform/godzilla/launch/safe/LaunchSafePlugin;

    new-instance v4, Lgbsdk/common/host/abtt$ad;

    invoke-direct {v4, p1}, Lgbsdk/common/host/abtt$ad;-><init>(Landroid/content/Context;)V

    check-cast v4, Lcom/bytedance/platform/godzilla/launch/safe/LaunchSafePlugin$IFetchConfig;

    invoke-direct {v2, v4}, Lcom/bytedance/platform/godzilla/launch/safe/LaunchSafePlugin;-><init>(Lcom/bytedance/platform/godzilla/launch/safe/LaunchSafePlugin$IFetchConfig;)V

    check-cast v2, Lcom/bytedance/platform/godzilla/plugin/BasePlugin;

    invoke-virtual {v3, v2}, Lcom/bytedance/platform/godzilla/Godzilla$Builder;->plugin(Lcom/bytedance/platform/godzilla/plugin/BasePlugin;)Lcom/bytedance/platform/godzilla/Godzilla$Builder;

    .line 163
    invoke-virtual {v3}, Lcom/bytedance/platform/godzilla/Godzilla$Builder;->build()Lcom/bytedance/platform/godzilla/Godzilla;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/platform/godzilla/Godzilla;->init(Lcom/bytedance/platform/godzilla/Godzilla;)Lcom/bytedance/platform/godzilla/Godzilla;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/platform/godzilla/Godzilla;->start()V

    .line 164
    invoke-static {}, Lcom/bytedance/platform/godzilla/Godzilla;->with()Lcom/bytedance/platform/godzilla/Godzilla;

    move-result-object p1

    sget-object v2, Lcom/bytedance/platform/godzilla/plugin/StartType;->REGISTER_EXCEPTION:Lcom/bytedance/platform/godzilla/plugin/StartType;

    invoke-virtual {p1, v2}, Lcom/bytedance/platform/godzilla/Godzilla;->start(Lcom/bytedance/platform/godzilla/plugin/StartType;)V

    .line 165
    iput-boolean v1, p0, Lgbsdk/common/host/abtt;->EJ:Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "GODZILLA config is close or already init"

    .line 101
    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v1, "GODZILLA config is error"

    .line 167
    invoke-static {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public initPerformanceMonitor(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abtt;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9e21e56eb6cbe4d7e053b932fb12f7bd"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lgbsdk/common/host/abtt;->EH:Z

    if-nez v0, :cond_1

    return-void

    .line 47
    :cond_1
    invoke-direct {p0, p1}, Lgbsdk/common/host/abtt;->au(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lgbsdk/common/host/abtt;->aw(Landroid/content/Context;)V

    return-void
.end method
