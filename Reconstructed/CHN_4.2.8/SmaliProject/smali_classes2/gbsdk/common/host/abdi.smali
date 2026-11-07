.class public abstract Lgbsdk/common/host/abdi;
.super Ljava/lang/Object;
.source "BaseOaidImpl.java"

# interfaces
.implements Lgbsdk/common/host/abdv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgbsdk/common/host/abdv;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final a:Ljava/lang/String;

.field public ce:Lgbsdk/common/host/abdj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abdj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lgbsdk/common/host/abdi$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abdi$ab;-><init>(Lgbsdk/common/host/abdi;)V

    iput-object v0, p0, Lgbsdk/common/host/abdi;->ce:Lgbsdk/common/host/abdj;

    .line 6
    iput-object p1, p0, Lgbsdk/common/host/abdi;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract Q()Lgbsdk/common/host/abcm$ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/common/host/abcm$ac<",
            "TSERVICE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public b(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abdi;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "5c6d14f4e73f239a86b60ee43371058a"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    return v2

    .line 1
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/abdi;->ce:Lgbsdk/common/host/abdj;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abdj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public abstract h(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public i(Landroid/content/Context;)Lgbsdk/common/host/abdv$ab;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abdi;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2a9422c42d5d8fc04ad1913e93766802"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/abdv$ab;

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abdi;->h(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lgbsdk/common/host/abdi;->Q()Lgbsdk/common/host/abcm$ac;

    move-result-object v1

    .line 3
    new-instance v2, Lgbsdk/common/host/abcm;

    invoke-direct {v2, p1, v0, v1}, Lgbsdk/common/host/abcm;-><init>(Landroid/content/Context;Landroid/content/Intent;Lgbsdk/common/host/abcm$ac;)V

    invoke-virtual {v2}, Lgbsdk/common/host/abcm;->L()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lgbsdk/common/host/abdv$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abdv$ab;-><init>()V

    .line 8
    iput-object p1, v0, Lgbsdk/common/host/abdv$ab;->a:Ljava/lang/String;

    move-object p1, v0

    :goto_0
    return-object p1
.end method
