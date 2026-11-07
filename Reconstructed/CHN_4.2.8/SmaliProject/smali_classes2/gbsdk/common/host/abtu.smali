.class public final Lgbsdk/common/host/abtu;
.super Ljava/lang/ClassLoader;
.source "PluginHotfixClassLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abtu$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/robust/PluginHotfixClassLoader;",
        "Ljava/lang/ClassLoader;",
        "()V",
        "findClass",
        "Ljava/lang/Class;",
        "name",
        "",
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
.field public static final EP:Lgbsdk/common/host/abtu$ab;

.field private static final TAG:Ljava/lang/String; = "PluginHotfixClassLoader"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbsdk/common/host/abtu$ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abtu$ab;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgbsdk/common/host/abtu;->EP:Lgbsdk/common/host/abtu$ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    const-class v0, Lgbsdk/common/host/abtu;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abtu;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "da0a9e99a334cfafa08b95cd086c1569"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    .line 18
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in any plugin"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
