.class public Lgbsdk/common/host/ag;
.super Ljava/lang/Object;
.source "UserProfileReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic af:Lgbsdk/common/host/ah;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/ah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/ag;->af:Lgbsdk/common/host/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "43937110a2b40caef3d53d45c1d1abaa"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ag;->af:Lgbsdk/common/host/ah;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/ah;->ag:Lgbsdk/common/host/ad;

    .line 3
    check-cast v0, Lgbsdk/common/host/ae$ab;

    invoke-virtual {v0}, Lgbsdk/common/host/ae$ab;->a()V

    return-void
.end method
