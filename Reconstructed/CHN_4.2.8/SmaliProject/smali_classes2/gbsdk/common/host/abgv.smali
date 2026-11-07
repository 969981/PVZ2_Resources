.class public Lgbsdk/common/host/abgv;
.super Lgbsdk/common/host/abjv;
.source "ApiTask.java"


# instance fields
.field public final gJ:Z

.field private final gK:Lgbsdk/common/host/abju$ab;

.field public final mName:Ljava/lang/String;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgbsdk/common/host/abju$ab;ILjava/lang/Runnable;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgbsdk/common/host/abjv;-><init>()V

    .line 12
    iput-object p2, p0, Lgbsdk/common/host/abgv;->gK:Lgbsdk/common/host/abju$ab;

    .line 13
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_0
    iput p3, p0, Lgbsdk/common/host/abgv;->gN:I

    .line 17
    iput-object p1, p0, Lgbsdk/common/host/abgv;->mName:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lgbsdk/common/host/abgv;->mRunnable:Ljava/lang/Runnable;

    .line 19
    iput-boolean p5, p0, Lgbsdk/common/host/abgv;->gJ:Z

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abju;)I
    .locals 2

    .line 58
    invoke-virtual {p0}, Lgbsdk/common/host/abgv;->bf()Lgbsdk/common/host/abju$ab;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Lgbsdk/common/host/abju;->bf()Lgbsdk/common/host/abju$ab;

    move-result-object v1

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    :cond_0
    if-nez v1, :cond_1

    .line 64
    sget-object v1, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    :cond_1
    if-ne v0, v1, :cond_2

    .line 68
    invoke-virtual {p0}, Lgbsdk/common/host/abgv;->bg()I

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

    .line 39
    iget-object v0, p0, Lgbsdk/common/host/abgv;->gK:Lgbsdk/common/host/abju$ab;

    return-object v0
.end method

.method public bg()I
    .locals 1

    .line 44
    iget v0, p0, Lgbsdk/common/host/abgv;->gO:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lgbsdk/common/host/abju;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abgv;->a(Lgbsdk/common/host/abju;)I

    move-result p1

    return p1
.end method

.method public o(I)Lgbsdk/common/host/abgv;
    .locals 0

    .line 48
    iput p1, p0, Lgbsdk/common/host/abgv;->gO:I

    return-object p0
.end method

.method public synthetic p(I)Lgbsdk/common/host/abjv;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abgv;->o(I)Lgbsdk/common/host/abgv;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 1

    .line 24
    iget-object v0, p0, Lgbsdk/common/host/abgv;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgbsdk/common/host/abgv;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lgbsdk/common/host/abgv;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
