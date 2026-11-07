.class public final Lgbsdk/common/host/absw$ak;
.super Lgbsdk/common/host/absz;
.source "ZeusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/absw;->E(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/main/plugin/ZeusManager$prepare$3$1",
        "Lcom/bytedance/ttgame/tob/common/host/main/plugin/RequestCallbackEx;",
        "onCallback",
        "",
        "isTimeOut",
        "",
        "remoteData",
        "",
        "Lcom/volcengine/zeus/download/PluginDownloadBean;",
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


# instance fields
.field final synthetic EU:J


# direct methods
.method constructor <init>(JI)V
    .locals 0

    iput-wide p1, p0, Lgbsdk/common/host/absw$ak;->EU:J

    .line 1142
    invoke-direct {p0, p3}, Lgbsdk/common/host/absz;-><init>(I)V

    return-void
.end method

.method private static final a(ZJLjava/util/List;)V
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p0}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    sget-object v1, Lgbsdk/common/host/absw$ak;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "9a3adb2ed9fc7e40d2d372766cb1fc7e"

    invoke-static {v0, v4, v1, v3, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 1146
    sget-object v5, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "ZeusManager"

    const-string v7, "[osdk_zeus_w]requestPluginInfo timeout!"

    invoke-static/range {v5 .. v10}, Lgbsdk/common/host/absw;->a(Lgbsdk/common/host/absw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1148
    :cond_1
    sget-object v0, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {v0, p1, p2, p0, p3}, Lgbsdk/common/host/absw;->a(JZLjava/util/List;)V

    .line 1150
    sget-object p0, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {p0, p3}, Lgbsdk/common/host/absw;->B(Ljava/util/List;)Lkotlin/Pair;

    move-result-object p0

    .line 1151
    sget-object p1, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-static {p1, v2, v3, v4}, Lgbsdk/common/host/absw;->b(Lgbsdk/common/host/absw;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1152
    sget-object p2, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {p2}, Lgbsdk/common/host/absw;->gn()Ljava/util/List;

    move-result-object p2

    .line 1153
    sget-object p3, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    .line 1156
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1157
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1153
    invoke-virtual {p3, p1, p2, v0, v1}, Lgbsdk/common/host/absw;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1159
    sget-object p1, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p2, p0}, Lgbsdk/common/host/absw;->d(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$e8OCXIX7G2GHfGYQ9QDbQeEXMzE(ZJLjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lgbsdk/common/host/absw$ak;->a(ZJLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lcom/volcengine/zeus/download/PluginDownloadBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lgbsdk/common/host/absw$ak;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f63143d09b21863584dfaea7de9dcd2e"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1144
    :cond_0
    sget-object v0, Lgbsdk/common/host/absw;->aDE:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-string v0, "workThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-wide v1, p0, Lgbsdk/common/host/absw$ak;->EU:J

    new-instance v3, Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;

    invoke-direct {v3, p1, v1, v2, p2}, Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;-><init>(ZJLjava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
