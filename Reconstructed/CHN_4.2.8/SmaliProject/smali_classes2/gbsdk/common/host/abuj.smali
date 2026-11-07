.class public final Lgbsdk/common/host/abuj;
.super Ljava/lang/Object;
.source "InitChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abuj$ac;,
        Lgbsdk/common/host/abuj$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u000f\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/checker/InitChecker;",
        "",
        "()V",
        "SUCCESS_CHECK_RESULT",
        "Lcom/bytedance/ttgame/tob/common/host/main/checker/InitChecker$CheckResult;",
        "getSUCCESS_CHECK_RESULT",
        "()Lcom/bytedance/ttgame/tob/common/host/main/checker/InitChecker$CheckResult;",
        "TAG",
        "",
        "check",
        "activity",
        "Landroid/app/Activity;",
        "getCheckers",
        "",
        "Lcom/bytedance/ttgame/tob/common/host/main/checker/InitChecker$Checker;",
        "CheckResult",
        "Checker",
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
.field private static final TAG:Ljava/lang/String; = "InitChecker"

.field public static final aBJ:Lgbsdk/common/host/abuj;

.field private static final aBK:Lgbsdk/common/host/abuj$ab;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lgbsdk/common/host/abuj;

    invoke-direct {v0}, Lgbsdk/common/host/abuj;-><init>()V

    sput-object v0, Lgbsdk/common/host/abuj;->aBJ:Lgbsdk/common/host/abuj;

    .line 10
    new-instance v0, Lgbsdk/common/host/abuj$ab;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abuj$ab;-><init>(ILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abuj;->aBK:Lgbsdk/common/host/abuj$ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abuj$ac;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abuj;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "caf11990f7ff7e45665c1a7c2e01c858"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lgbsdk/common/host/abuk;

    invoke-direct {v0}, Lgbsdk/common/host/abuk;-><init>()V

    .line 30
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lgbsdk/common/host/abuj$ab;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abuj;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9ebce1a3d46b39ca4794f842472abd41"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/abuj$ab;

    return-object p1

    :cond_0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :try_start_0
    invoke-direct {p0}, Lgbsdk/common/host/abuj;->fs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abuj$ac;

    .line 16
    invoke-interface {v1, p1}, Lgbsdk/common/host/abuj$ac;->a(Landroid/app/Activity;)Lgbsdk/common/host/abuj$ab;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lgbsdk/common/host/abuj$ab;->isSuccess()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return-object v1

    .line 26
    :cond_2
    sget-object p1, Lgbsdk/common/host/abuj;->aBK:Lgbsdk/common/host/abuj$ab;

    return-object p1

    :catch_0
    move-exception p1

    .line 22
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "InitChecker"

    const-string v1, "[osdk_init]InitChecker.check error!!"

    invoke-static {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    sget-object p1, Lgbsdk/common/host/abuj;->aBK:Lgbsdk/common/host/abuj$ab;

    return-object p1
.end method

.method public final fr()Lgbsdk/common/host/abuj$ab;
    .locals 1

    .line 10
    sget-object v0, Lgbsdk/common/host/abuj;->aBK:Lgbsdk/common/host/abuj$ab;

    return-object v0
.end method
