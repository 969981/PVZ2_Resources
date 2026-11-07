.class public final Lgbsdk/common/host/abcj;
.super Lgbsdk/common/host/abdi;
.source "SamsungOaidImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/common/host/abdi<",
        "Lgbsdk/common/host/abdd;",
        ">;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.samsung.android.deviceidservice"

    .line 1
    invoke-direct {p0, v0}, Lgbsdk/common/host/abdi;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Q()Lgbsdk/common/host/abcm$ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/common/host/abcm$ac<",
            "Lgbsdk/common/host/abdd;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abcj;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "52f2461004c217261c664612ede465fa"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abcm$ac;

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Lgbsdk/common/host/abcj$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abcj$ab;-><init>(Lgbsdk/common/host/abcj;)V

    return-object v0
.end method

.method public h(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lgbsdk/common/host/abcj;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "1db1108ea39024a6de16fcf4413a207c"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.deviceidservice"

    const-string v1, "com.samsung.android.deviceidservice.DeviceIdService"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
