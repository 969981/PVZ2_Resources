.class public final Lgbsdk/common/host/abqf$1;
.super Ljava/lang/Object;
.source "SoPatchManager.java"

# interfaces
.implements Lgbsdk/common/host/abqd$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abqf;->f(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic xH:Ljava/lang/String;

.field final synthetic xI:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lgbsdk/common/host/abqf$1;->xH:Ljava/lang/String;

    iput-object p2, p0, Lgbsdk/common/host/abqf$1;->xI:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e([Ljava/lang/String;)V
    .locals 7

    .line 595
    invoke-static {p1}, Lgbsdk/common/host/abqd;->d([Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Frankie"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try autoLoad so abort, getLoadedSo invalid, loadedSo:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abpt;->W(Landroid/content/Context;)Lgbsdk/common/host/abpt;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abqf$1;->xH:Ljava/lang/String;

    iget-object v4, p0, Lgbsdk/common/host/abqf$1;->xI:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLoadedSo invalid, loadedSo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, v1, v4, p1}, Lgbsdk/common/host/abpt;->a(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 600
    :cond_2
    array-length v0, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 601
    invoke-static {v4}, Lgbsdk/common/host/abqd;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 602
    iget-object v5, p0, Lgbsdk/common/host/abqf$1;->xI:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 603
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "try autoLoad so abort, find so already loaded:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abpt;->W(Landroid/content/Context;)Lgbsdk/common/host/abpt;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abqf$1;->xH:Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/common/host/abqf$1;->xI:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find so already loaded:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v1, v3}, Lgbsdk/common/host/abpt;->a(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 608
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try autoLoad so:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgbsdk/common/host/abqf$1;->xI:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", find all so not loaded, proceed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lgbsdk/common/host/abqf$1;->xI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    const/4 v3, 0x1

    if-ge v1, v0, :cond_6

    .line 611
    iget-object v4, p0, Lgbsdk/common/host/abqf$1;->xI:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    if-ne v1, v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 612
    :goto_4
    invoke-static {v4, v3}, Lgbsdk/common/host/abqf;->g(Ljava/lang/String;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 614
    :cond_6
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abpt;->W(Landroid/content/Context;)Lgbsdk/common/host/abpt;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abqf$1;->xH:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abqf$1;->xI:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " loaded so"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v1, v2, p1}, Lgbsdk/common/host/abpt;->a(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
