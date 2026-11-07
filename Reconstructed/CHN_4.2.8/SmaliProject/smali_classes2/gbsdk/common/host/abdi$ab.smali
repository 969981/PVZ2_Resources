.class public Lgbsdk/common/host/abdi$ab;
.super Lgbsdk/common/host/abdj;
.source "BaseOaidImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abdi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/common/host/abdj<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic cf:Lgbsdk/common/host/abdi;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abdi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/abdi$ab;->cf:Lgbsdk/common/host/abdi;

    invoke-direct {p0}, Lgbsdk/common/host/abdj;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abdi$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0eb61eafef020275c9b5b788f52f12b1"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 1
    :cond_0
    aget-object p1, p1, v1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lgbsdk/common/host/abdi$ab;->cf:Lgbsdk/common/host/abdi;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/abdi;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/apm/common/utility/PackageUtils;->existsPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
