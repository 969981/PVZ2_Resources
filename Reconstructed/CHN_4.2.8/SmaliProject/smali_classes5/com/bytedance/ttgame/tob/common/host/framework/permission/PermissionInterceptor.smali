.class public final Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;
.super Ljava/lang/Object;
.source "PermissionInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0007R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;",
        "",
        "()V",
        "mHandler",
        "Ljava/lang/ref/SoftReference;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionRequestHandler;",
        "handlePermissionRequest",
        "",
        "permissions",
        "",
        "",
        "callback",
        "Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;",
        "([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)Z",
        "setPermissionRequestHandler",
        "",
        "handler",
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
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static mHandler:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionRequestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final handlePermissionRequest([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "59aa986dfe8ab02406d355afd82b2a80"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "permissions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;->mHandler:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionRequestHandler;

    :cond_1
    if-eqz v4, :cond_2

    .line 23
    invoke-interface {v4, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionRequestHandler;->requestPermission([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public static final setPermissionRequestHandler(Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionRequestHandler;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "814c3faf98a051390c8adb7f58c2c25a"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 16
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionInterceptor;->mHandler:Ljava/lang/ref/SoftReference;

    :cond_1
    return-void
.end method
