.class public abstract Lgbsdk/optional/applog/abho;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgbsdk/optional/applog/abfa;"
    }
.end annotation


# static fields
.field public static b:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lgbsdk/optional/applog/abdk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/optional/applog/abdk<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgbsdk/optional/applog/abho$ab;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abho$ab;-><init>(Lgbsdk/optional/applog/abho;)V

    iput-object v0, p0, Lgbsdk/optional/applog/abho;->d:Lgbsdk/optional/applog/abdk;

    iput-object p1, p0, Lgbsdk/optional/applog/abho;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abho;->b:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "cb5fef06c421fb65b24a77bac4f2c414"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lgbsdk/optional/applog/abho;->d:Lgbsdk/optional/applog/abdk;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lgbsdk/optional/applog/abdk;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Lgbsdk/optional/applog/abfa$ab;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abho;->b:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b37f6a5c17cb6f115fef23d786017670"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abfa$ab;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abho;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lgbsdk/optional/applog/abho;->b()Lgbsdk/optional/applog/abfo$ac;

    move-result-object v1

    new-instance v2, Lgbsdk/optional/applog/abfo;

    invoke-direct {v2, p1, v0, v1}, Lgbsdk/optional/applog/abfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Lgbsdk/optional/applog/abfo$ac;)V

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lgbsdk/optional/applog/abfa$ab;

    invoke-direct {v0}, Lgbsdk/optional/applog/abfa$ab;-><init>()V

    iput-object p1, v0, Lgbsdk/optional/applog/abfa$ab;->b:Ljava/lang/String;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public abstract b()Lgbsdk/optional/applog/abfo$ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/optional/applog/abfo$ac<",
            "TSERVICE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(Landroid/content/Context;)Landroid/content/Intent;
.end method
