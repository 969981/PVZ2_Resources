.class public Lgbsdk/common/host/af;
.super Ljava/lang/Object;
.source "UserProfileReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic a:I

.field public final synthetic ae:Lgbsdk/common/host/ah;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/ah;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/af;->ae:Lgbsdk/common/host/ah;

    iput p2, p0, Lgbsdk/common/host/af;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/af;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "dcb1f153473cc4a49655108fa417d18d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/af;->ae:Lgbsdk/common/host/ah;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/ah;->ag:Lgbsdk/common/host/ad;

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lgbsdk/common/host/af;->a:I

    check-cast v0, Lgbsdk/common/host/ae$ab;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/ae$ab;->a(I)V

    :cond_1
    return-void
.end method
