.class public final Lgbsdk/optional/applog/abia$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppLogEventHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static final b:Lgbsdk/optional/applog/abia$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abia$1;

    invoke-direct {v0}, Lgbsdk/optional/applog/abia$1;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abia$1;->b:Lgbsdk/optional/applog/abia$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/optional/applog/abia$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "70f333a762ad758477c5af06c229c69e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/util/UUIDUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/util/UUIDUtils;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/UUIDUtils;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
