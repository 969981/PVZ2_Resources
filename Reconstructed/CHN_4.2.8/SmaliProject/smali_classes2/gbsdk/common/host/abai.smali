.class public abstract Lgbsdk/common/host/abai;
.super Ljava/lang/Object;
.source "CacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abai$ae;
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public b:Landroid/os/Handler;

.field public bx:Lgbsdk/common/host/abai;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lgbsdk/common/host/abai$ae;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Lgbsdk/common/host/abai$ae<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    sget-object v3, Lgbsdk/common/host/abai;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "1341229ae1af919ab2c1d81cdffc8068"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    :cond_0
    if-eqz p3, :cond_8

    .line 3
    iget-object v0, p0, Lgbsdk/common/host/abai;->bx:Lgbsdk/common/host/abai;

    .line 4
    invoke-interface {p3}, Lgbsdk/common/host/abai$ae;->L()Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-interface {p3, p1}, Lgbsdk/common/host/abai$ae;->a(Ljava/lang/Object;)Z

    move-result v4

    .line 7
    invoke-interface {p3, v3}, Lgbsdk/common/host/abai$ae;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    move-object p1, v3

    :cond_1
    if-eqz v0, :cond_3

    .line 13
    invoke-interface {p3, p1, p2, v0}, Lgbsdk/common/host/abai$ae;->a(Ljava/lang/Object;Ljava/lang/Object;Lgbsdk/common/host/abai;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-interface {p3, p1, v3}, Lgbsdk/common/host/abai$ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 15
    invoke-interface {p3, p1}, Lgbsdk/common/host/abai$ae;->d(Ljava/lang/Object;)V

    :cond_2
    return-object p1

    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move-object p2, p1

    :goto_0
    if-eqz v1, :cond_5

    .line 25
    invoke-interface {p3, p2}, Lgbsdk/common/host/abai$ae;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    if-eqz v4, :cond_7

    .line 26
    invoke-interface {p3, p2, v3}, Lgbsdk/common/host/abai$ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 27
    :cond_6
    invoke-interface {p3, p2}, Lgbsdk/common/host/abai$ae;->d(Ljava/lang/Object;)V

    :cond_7
    return-object p2

    .line 28
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "agent == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/os/Handler;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abai;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fc832dc88b3aa161790aed6b36dd1b5e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abai;->bx:Lgbsdk/common/host/abai;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, p1}, Lgbsdk/common/host/abai;->a(Landroid/os/Handler;)V

    .line 32
    :cond_1
    iput-object p1, p0, Lgbsdk/common/host/abai;->b:Landroid/os/Handler;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abai;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3d925c9df1e1ac535a9fdda6263705b3"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abai;->bx:Lgbsdk/common/host/abai;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lgbsdk/common/host/abai;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abai;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "975f20bef49ae720bd49bf72b6ee7c80"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lgbsdk/common/host/abai$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abai$ab;-><init>(Lgbsdk/common/host/abai;)V

    .line 30
    invoke-virtual {p0, p1, p2, v0}, Lgbsdk/common/host/abai;->a(Ljava/lang/Object;Ljava/lang/Object;Lgbsdk/common/host/abai$ae;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abai;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "68744b8441ccf3a14f9be027ee30c1d0"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lgbsdk/common/host/abai$ac;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abai$ac;-><init>(Lgbsdk/common/host/abai;)V

    .line 30
    invoke-virtual {p0, p1, p2, v0}, Lgbsdk/common/host/abai;->a(Ljava/lang/Object;Ljava/lang/Object;Lgbsdk/common/host/abai$ae;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abai;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3f1201f416b4fc9b4cc62c1b319a5001"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lgbsdk/common/host/abai$ad;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abai$ad;-><init>(Lgbsdk/common/host/abai;)V

    .line 30
    invoke-virtual {p0, p1, p2, v0}, Lgbsdk/common/host/abai;->a(Ljava/lang/Object;Ljava/lang/Object;Lgbsdk/common/host/abai$ae;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
