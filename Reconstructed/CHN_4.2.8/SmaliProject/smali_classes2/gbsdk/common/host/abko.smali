.class public Lgbsdk/common/host/abko;
.super Ljava/lang/Object;
.source "SsHttpExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static volatile sh:Lgbsdk/common/host/abjx;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lgbsdk/common/host/abjq;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lgbsdk/common/host/abjr;->a(Lgbsdk/common/host/abjq;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 9

    if-eqz p1, :cond_7

    .line 36
    sget-object v0, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    .line 39
    instance-of v1, p1, Lcom/bytedance/retrofit2/SsRunnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/bytedance/retrofit2/SsRunnable;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/SsRunnable;->priority()I

    move-result v1

    if-nez v1, :cond_0

    .line 42
    sget-object v1, Lgbsdk/common/host/abju$ab;->gP:Lgbsdk/common/host/abju$ab;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 44
    sget-object v1, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, v1, :cond_2

    .line 46
    sget-object v1, Lgbsdk/common/host/abju$ab;->gR:Lgbsdk/common/host/abju$ab;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v2, v1, :cond_3

    .line 48
    sget-object v1, Lgbsdk/common/host/abju$ab;->gS:Lgbsdk/common/host/abju$ab;

    goto :goto_0

    .line 50
    :cond_3
    sget-object v1, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    .line 52
    :goto_0
    invoke-interface {v0}, Lcom/bytedance/retrofit2/SsRunnable;->isStreaming()Z

    move-result v2

    .line 53
    invoke-interface {v0}, Lcom/bytedance/retrofit2/SsRunnable;->getRequestDelayTime()I

    move-result v0

    move v6, v0

    move-object v5, v1

    goto :goto_1

    :cond_4
    move-object v5, v0

    const/4 v6, 0x0

    .line 56
    :goto_1
    sget-object v0, Lgbsdk/common/host/abko;->sh:Lgbsdk/common/host/abjx;

    if-nez v0, :cond_5

    .line 57
    invoke-static {}, Lgbsdk/common/host/abjr;->bq()Lgbsdk/common/host/abjr;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abko;->sh:Lgbsdk/common/host/abjx;

    .line 60
    :cond_5
    new-instance v0, Lgbsdk/common/host/abgv;

    const-string v4, "NetExecutor"

    move-object v3, v0

    move-object v7, p1

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lgbsdk/common/host/abgv;-><init>(Ljava/lang/String;Lgbsdk/common/host/abju$ab;ILjava/lang/Runnable;Z)V

    if-eqz v2, :cond_6

    .line 62
    sget-object p1, Lgbsdk/common/host/abko;->sh:Lgbsdk/common/host/abjx;

    invoke-interface {p1, v0}, Lgbsdk/common/host/abjx;->a(Lgbsdk/common/host/abjv;)V

    goto :goto_2

    .line 64
    :cond_6
    sget-object p1, Lgbsdk/common/host/abko;->sh:Lgbsdk/common/host/abjx;

    invoke-interface {p1, v0}, Lgbsdk/common/host/abjx;->b(Lgbsdk/common/host/abjv;)V

    :cond_7
    :goto_2
    return-void
.end method
