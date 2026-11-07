.class public final Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;
.super Ljava/lang/Object;
.source "PermissionCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;",
        "",
        "()V",
        "TAG",
        "",
        "checkPermissionCompatTarget30",
        "",
        "activity",
        "Landroid/app/Activity;",
        "permissions",
        "",
        "listener",
        "Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;",
        "(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)V",
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
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;

.field private static final TAG:Ljava/lang/String; = "PermissionCompat"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkPermissionCompatTarget30(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v3, 0x2

    aput-object p2, v0, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "aac1c0218af35bfba54638ec4f9fdb60"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-string v3, "PermissionCompat"

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    const-class v0, Lcom/bytedance/ttgame/tob/common/host/framework/service/FWService;

    .line 21
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/service/FWService;

    if-eqz v0, :cond_4

    .line 22
    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/service/FWService;->getPermissionSettings()Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->getTarget30Compat()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Target30Compat: true"

    .line 23
    invoke-static {v3, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 45
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 25
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 26
    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;

    invoke-direct {v2, p1, p2, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;-><init>([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;Ljava/util/List;)V

    .line 36
    check-cast v0, Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/String;

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Ljava/lang/String;

    .line 35
    invoke-static {p0, p1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->checkPermission(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)V

    return-void

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string v0, "Target30Compat: false"

    .line 40
    invoke-static {v3, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->checkPermission(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;)V

    return-void
.end method

.method private static final checkPermissionCompatTarget30$lambda-2([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;Ljava/util/List;Z[Ljava/lang/String;[I)V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v3, 0x2

    aput-object p2, v0, v3

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v3, 0x4

    aput-object p4, v0, v3

    const/4 v3, 0x5

    aput-object p5, v0, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "84c76ac8c46731811c6d5ce0a47b313e"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "$permissions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$otherPermissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "grantResults"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    array-length p4, p0

    new-array p4, p4, [I

    .line 52
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 30
    invoke-interface {p2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 31
    :cond_1
    aget v4, p5, v4

    :goto_1
    aput v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {p1, p3, p0, p4}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;->onPermissionRequest(Z[Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic lambda$N00Yh8lJ1jGXxYSw_tu70XtS1Vs([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;Ljava/util/List;Z[Ljava/lang/String;[I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;->checkPermissionCompatTarget30$lambda-2([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;Ljava/util/List;Z[Ljava/lang/String;[I)V

    return-void
.end method
