.class public Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;
.super Ljava/lang/Object;
.source "AppLifecycleManager.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;,
        Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLifecycleManager"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static volatile sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;


# instance fields
.field private isBackground:Z

.field private lifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->isBackground:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->lifecycleListeners:Ljava/util/List;

    .line 30
    invoke-static {}, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;->get()Lgbsdk/android/arch/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Lgbsdk/android/arch/lifecycle/LifecycleOwner;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgbsdk/android/arch/lifecycle/Lifecycle;->addObserver(Lgbsdk/android/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "f007c8e3ae0a50a0171d9e4d11b4bb04"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    return-object v0

    .line 34
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    if-nez v0, :cond_2

    .line 35
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    if-nez v1, :cond_1

    .line 37
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    invoke-direct {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;-><init>()V

    sput-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    .line 39
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_2
    :goto_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    return-object v0
.end method

.method private onAppBackground()V
    .locals 4
    .annotation runtime Lgbsdk/android/arch/lifecycle/OnLifecycleEvent;
        value = .enum Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_STOP:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "65558303f7feea0e6d44be6b395d8ddd"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "AppLifecycleManager"

    const-string v2, "onAppBackground"

    .line 73
    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->isBackground:Z

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;->enterBackground()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onAppForeground()V
    .locals 4
    .annotation runtime Lgbsdk/android/arch/lifecycle/OnLifecycleEvent;
        value = .enum Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_START:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bb76e7315b3d552841f2fa05461cf674"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "AppLifecycleManager"

    const-string v2, "onAppForeground"

    .line 82
    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->isBackground:Z

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;->enterForeground()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hasRegisterLifecycleListener(Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "518493102833ed9c8c9eeca3e85a128e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public isBackground()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9f5d26f92f92870eecd67a83e9b87f36"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->isBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLifecycleManager"

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->isBackground:Z

    return v0
.end method

.method public registerLifecycleListener(Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9ea3e6739e342f79d7f65846589514c9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public unregisterLifecycleListener(Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2a9c0a5b04af8ab1e3f0ada496118b6a"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
