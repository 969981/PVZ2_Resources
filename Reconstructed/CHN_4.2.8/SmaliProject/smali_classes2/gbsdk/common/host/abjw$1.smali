.class public Lgbsdk/common/host/abjw$1;
.super Lgbsdk/common/host/abjw$ab;
.source "NetThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abjw;->e(Lgbsdk/common/host/abjv;)Lgbsdk/common/host/abjw$ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hc:Lgbsdk/common/host/abjv;

.field final synthetic hd:Lgbsdk/common/host/abjw;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abjw;Lgbsdk/common/host/abjv;Lgbsdk/common/host/abjv;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lgbsdk/common/host/abjw$1;->hd:Lgbsdk/common/host/abjw;

    iput-object p3, p0, Lgbsdk/common/host/abjw$1;->hc:Lgbsdk/common/host/abjv;

    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abjw$ab;-><init>(Lgbsdk/common/host/abjw;Lgbsdk/common/host/abjv;)V

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abjw$ab;)I
    .locals 1

    .line 147
    iget-object v0, p0, Lgbsdk/common/host/abjw$1;->hc:Lgbsdk/common/host/abjv;

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p1, Lgbsdk/common/host/abjw$ab;->he:Lgbsdk/common/host/abjv;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abjv;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 144
    check-cast p1, Lgbsdk/common/host/abjw$ab;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abjw$1;->a(Lgbsdk/common/host/abjw$ab;)I

    move-result p1

    return p1
.end method

.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lgbsdk/common/host/abjw$1;->hc:Lgbsdk/common/host/abjv;

    invoke-virtual {v0}, Lgbsdk/common/host/abjv;->bi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lgbsdk/common/host/abjw$1;->hc:Lgbsdk/common/host/abjv;

    invoke-virtual {v0}, Lgbsdk/common/host/abjv;->bf()Lgbsdk/common/host/abju$ab;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/abju$ab;->gS:Lgbsdk/common/host/abju$ab;

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lgbsdk/common/host/abjw$1;->hd:Lgbsdk/common/host/abjw;

    invoke-virtual {v0}, Lgbsdk/common/host/abjw;->bm()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abjw$1;->hc:Lgbsdk/common/host/abjv;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjw$1;->hd:Lgbsdk/common/host/abjw;

    invoke-virtual {v0}, Lgbsdk/common/host/abjw;->bn()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abjw$1;->hc:Lgbsdk/common/host/abjv;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
