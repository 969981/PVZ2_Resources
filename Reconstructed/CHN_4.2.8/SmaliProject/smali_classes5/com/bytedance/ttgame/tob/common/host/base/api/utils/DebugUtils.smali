.class public final Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;",
        "",
        "()V",
        "PKGNAME_DEBUG",
        "",
        "TAG",
        "mAttachDebugger",
        "",
        "mBoeHeader",
        "mEnv",
        "mInit",
        "mIsBoeOpen",
        "mIsDebug",
        "mIsPpeOpen",
        "mPpeHeader",
        "mockDeviceInfo",
        "getBoeHeader",
        "context",
        "Landroid/content/Context;",
        "getChannel",
        "getPpeHeader",
        "healthDebug",
        "",
        "data",
        "Lorg/json/JSONObject;",
        "init",
        "isAttachDebugger",
        "isBoeOpen",
        "isDebug",
        "isMockDeviceInfo",
        "isPpeOpen",
        "ch_base_api_tobRelease"
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
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

.field private static final PKGNAME_DEBUG:Ljava/lang/String; = "gbsdk.plugin.debug"

.field private static final TAG:Ljava/lang/String; = "DebugUtils"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static mAttachDebugger:Z

.field private static mBoeHeader:Ljava/lang/String;

.field private static mEnv:Ljava/lang/String;

.field private static mInit:Z

.field private static mIsBoeOpen:Z

.field private static mIsDebug:Z

.field private static mIsPpeOpen:Z

.field private static mPpeHeader:Ljava/lang/String;

.field private static mockDeviceInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    const-string v0, ""

    .line 18
    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mBoeHeader:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mPpeHeader:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mEnv:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBoeHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "916f7ef13115485cc85209a7865c8f8f"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->init(Landroid/content/Context;)V

    .line 54
    :cond_1
    sget-object p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mBoeHeader:Ljava/lang/String;

    return-object p0
.end method

.method public static final getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "889110fc7f125bb1581f9ac23c01f1ec"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    if-nez v0, :cond_1

    .line 36
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->init(Landroid/content/Context;)V

    .line 38
    :cond_1
    sget-object p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mEnv:Ljava/lang/String;

    return-object p0
.end method

.method public static final getPpeHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "74fbe255df6b782b61404400af8a4925"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->init(Landroid/content/Context;)V

    .line 62
    :cond_1
    sget-object p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mPpeHeader:Ljava/lang/String;

    return-object p0
.end method

.method public static final healthDebug(Lorg/json/JSONObject;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "9f9df983ed29ce8a2bcfd89f04d36e95"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "data"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    :try_start_0
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    .line 76
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    const-string v3, "com.bytedance.ttgame.tob.optional.debug.impl.IDebugService"

    invoke-interface {v1, v3}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v3

    const-string v4, "healthDebug"

    new-array v5, v0, [Ljava/lang/Class;

    .line 78
    const-class v6, Lorg/json/JSONObject;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.Class<out com.bytedance.ttgame.tob.framework.service.annotation.IService>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "b9fa3591eb50b84454ca7c063a92e6bf"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 101
    :cond_0
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;->isPluginSdk()Z

    move-result v1

    const-string v3, "DebugUtils"

    if-eqz v1, :cond_1

    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    const-string v4, "gbsdk.plugin.debug"

    invoke-interface {v1, v4}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;->isLoadedPlugin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "debug plugin not load"

    .line 102
    invoke-static {v3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_1
    sput-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    .line 107
    :try_start_0
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    const-string v4, "com.bytedance.ttgame.tob.optional.debug.impl.IDebugService"

    invoke-interface {v1, v4}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 108
    :cond_2
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 110
    sput-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mAttachDebugger:Z

    :cond_3
    const-string v5, "isDebug"

    new-array v6, v0, [Ljava/lang/Class;

    .line 112
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "null cannot be cast to non-null type kotlin.Boolean"

    if-eqz v5, :cond_a

    :try_start_1
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mIsDebug:Z

    const-string v5, "isBoeOpen"

    new-array v7, v0, [Ljava/lang/Class;

    .line 113
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/Object;

    aput-object p1, v7, v2

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mIsBoeOpen:Z

    const-string v5, "getBoeHeader"

    new-array v7, v0, [Ljava/lang/Class;

    .line 114
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/Object;

    aput-object p1, v7, v2

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "null cannot be cast to non-null type kotlin.String"

    if-eqz v5, :cond_8

    :try_start_2
    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mBoeHeader:Ljava/lang/String;

    const-string v5, "getPpeHeader"

    new-array v8, v0, [Ljava/lang/Class;

    .line 115
    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v2

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v0, [Ljava/lang/Object;

    aput-object p1, v8, v2

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mPpeHeader:Ljava/lang/String;

    const-string v5, "getEnv"

    new-array v8, v0, [Ljava/lang/Class;

    .line 116
    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v2

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v0, [Ljava/lang/Object;

    aput-object p1, v8, v2

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mEnv:Ljava/lang/String;

    const-string v5, "isPpeOpen"

    new-array v7, v0, [Ljava/lang/Class;

    .line 117
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/Object;

    aput-object p1, v7, v2

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mIsPpeOpen:Z

    const-string v5, "isMockDeviceInfo"

    new-array v7, v0, [Ljava/lang/Class;

    .line 118
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mockDeviceInfo:Z

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 120
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "invoke debug info fail"

    invoke-static {v3, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final isAttachDebugger(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "803acb08bd8eeb76c8a7173b7a4fca02"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->init(Landroid/content/Context;)V

    .line 89
    :cond_1
    sget-boolean p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mAttachDebugger:Z

    return p0
.end method

.method public static final isBoeOpen(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "27db0f17de35a5d68b55fa15ce53076b"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    if-nez v0, :cond_1

    .line 44
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->init(Landroid/content/Context;)V

    .line 46
    :cond_1
    sget-boolean p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mIsBoeOpen:Z

    return p0
.end method

.method public static final isDebug(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "61484d1f3879019c2d63aa70a90a4714"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->init(Landroid/content/Context;)V

    .line 30
    :cond_1
    sget-boolean p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mIsDebug:Z

    return p0
.end method

.method public static final isMockDeviceInfo(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "84b60f182595f132c7033a0fb7a65104"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    if-nez v0, :cond_1

    .line 95
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->init(Landroid/content/Context;)V

    .line 97
    :cond_1
    sget-boolean p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mockDeviceInfo:Z

    return p0
.end method

.method public static final isPpeOpen(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "af67a96f93d97ae2a92ff52dde37361c"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mInit:Z

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->init(Landroid/content/Context;)V

    .line 70
    :cond_1
    sget-boolean p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->mIsPpeOpen:Z

    return p0
.end method
