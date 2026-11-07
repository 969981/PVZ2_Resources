.class public abstract Lgbsdk/common/host/abgy;
.super Lgbsdk/common/host/abjv;
.source "ApiThread.java"


# static fields
.field public static gL:Lgbsdk/common/host/abjr;


# instance fields
.field protected final gK:Lgbsdk/common/host/abju$ab;

.field public final mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lgbsdk/common/host/abju$ab;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgbsdk/common/host/abjv;-><init>()V

    .line 15
    iput-object p2, p0, Lgbsdk/common/host/abgy;->gK:Lgbsdk/common/host/abju$ab;

    .line 16
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_0
    iput-object p1, p0, Lgbsdk/common/host/abgy;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abju;)I
    .locals 2

    .line 64
    invoke-virtual {p0}, Lgbsdk/common/host/abgy;->bf()Lgbsdk/common/host/abju$ab;

    move-result-object v0

    .line 65
    invoke-interface {p1}, Lgbsdk/common/host/abju;->bf()Lgbsdk/common/host/abju$ab;

    move-result-object v1

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    :cond_0
    if-nez v1, :cond_1

    .line 70
    sget-object v1, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    :cond_1
    if-ne v0, v1, :cond_2

    .line 74
    invoke-virtual {p0}, Lgbsdk/common/host/abgy;->bg()I

    move-result v0

    invoke-interface {p1}, Lgbsdk/common/host/abju;->bg()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lgbsdk/common/host/abju$ab;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lgbsdk/common/host/abju$ab;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public bf()Lgbsdk/common/host/abju$ab;
    .locals 1

    .line 50
    iget-object v0, p0, Lgbsdk/common/host/abgy;->gK:Lgbsdk/common/host/abju$ab;

    return-object v0
.end method

.method public bg()I
    .locals 1

    .line 55
    iget v0, p0, Lgbsdk/common/host/abgy;->gO:I

    return v0
.end method

.method public bh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lgbsdk/common/host/abju;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abgy;->a(Lgbsdk/common/host/abju;)I

    move-result p1

    return p1
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 3

    .line 36
    iget-object v0, p0, Lgbsdk/common/host/abgy;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    sget-object v0, Lgbsdk/common/host/abgy;->gL:Lgbsdk/common/host/abjr;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lgbsdk/common/host/abjr;->bq()Lgbsdk/common/host/abjr;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abgy;->gL:Lgbsdk/common/host/abjr;

    .line 40
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/abgy;->bh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lgbsdk/common/host/abgy;->gL:Lgbsdk/common/host/abjr;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abjr;->a(Lgbsdk/common/host/abgy;)V

    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lgbsdk/common/host/abgy;->gL:Lgbsdk/common/host/abjr;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abjr;->b(Lgbsdk/common/host/abgy;)V

    :cond_2
    :goto_0
    return-void
.end method
