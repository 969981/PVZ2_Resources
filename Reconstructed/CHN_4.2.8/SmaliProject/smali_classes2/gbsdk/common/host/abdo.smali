.class public Lgbsdk/common/host/abdo;
.super Ljava/lang/Object;
.source "PrivateAgreement.java"


# static fields
.field public static a:Z

.field public static bX:Lgbsdk/common/host/abay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abay<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgbsdk/common/host/abdo$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abdo$ab;-><init>()V

    sput-object v0, Lgbsdk/common/host/abdo;->bX:Lgbsdk/common/host/abay;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abdo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "27f2a1f4abebda3e4cae983af6c633ea"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    return v2

    .line 1
    :cond_1
    sget-boolean v1, Lgbsdk/common/host/abdo;->a:Z

    if-eqz v1, :cond_2

    return v0

    .line 2
    :cond_2
    sget-object v1, Lgbsdk/common/host/abdo;->bX:Lgbsdk/common/host/abay;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abay;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    const-string v0, "_install_started_v2"

    .line 3
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
