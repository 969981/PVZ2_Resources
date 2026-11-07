.class public Lgbsdk/common/host/abcq$ab;
.super Lgbsdk/common/host/abdj;
.source "OnePlusOaidImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abcq;
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


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abcq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgbsdk/common/host/abdj;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object p1, v1, v2

    .line 0
    sget-object v4, Lgbsdk/common/host/abcq$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "51641b6cc79d9d70cca4d2faa4312529"

    invoke-static {v1, p0, v4, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string v1, "com.heytap.openid"

    .line 1
    :try_start_0
    aget-object p1, p1, v2

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/bytedance/apm/common/utility/PackageUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, p1

    :goto_0
    const-wide/16 v6, 0x1

    cmp-long p1, v4, v6

    if-ltz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 11
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v3
.end method
