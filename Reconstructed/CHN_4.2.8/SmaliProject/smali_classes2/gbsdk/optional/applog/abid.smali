.class public final Lgbsdk/optional/applog/abid;
.super Lgbsdk/optional/applog/abho;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/optional/applog/abho<",
        "Lgbsdk/optional/applog/abex;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.samsung.android.deviceidservice"

    invoke-direct {p0, v0}, Lgbsdk/optional/applog/abho;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Samsung"

    return-object v0
.end method

.method public b()Lgbsdk/optional/applog/abfo$ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/optional/applog/abfo$ac<",
            "Lgbsdk/optional/applog/abex;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/optional/applog/abid;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "47280186ff22c42acc209ea242afa245"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/optional/applog/abfo$ac;

    return-object v0

    :cond_0
    new-instance v0, Lgbsdk/optional/applog/abid$ab;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abid$ab;-><init>(Lgbsdk/optional/applog/abid;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lgbsdk/optional/applog/abid;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "2bc36fbb55aeb3a488a05a4a939962cd"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    return-object p1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.deviceidservice"

    const-string v1, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
