.class public Lgbsdk/common/host/aq$ab;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/aq;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic aG:Lgbsdk/common/host/aq;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/aq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/aq$ab;->aG:Lgbsdk/common/host/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/aq$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4d352b418e303c6fa503ed61a1828255"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/aq$ab;->aG:Lgbsdk/common/host/aq;

    iget-object v0, v0, Lgbsdk/common/host/aq;->an:Lgbsdk/common/host/ap;

    .line 2
    iget-object v1, v0, Lgbsdk/common/host/ap;->av:Lgbsdk/common/host/at;

    .line 3
    invoke-virtual {v0, v1}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/ao;)V

    return-void
.end method
