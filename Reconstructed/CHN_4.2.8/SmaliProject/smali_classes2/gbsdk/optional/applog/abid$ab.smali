.class public Lgbsdk/optional/applog/abid$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abfo$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abid;->b()Lgbsdk/optional/applog/abfo$ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/optional/applog/abfo$ac<",
        "Lgbsdk/optional/applog/abex;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abid$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "600a2fee60f871ab3e803b65d1f23049"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 1
    :cond_0
    invoke-static {p1}, Lgbsdk/optional/applog/abex$ab;->a(Landroid/os/IBinder;)Lgbsdk/optional/applog/abex;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abid$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0c6b5751ced37af16c0d4b61719b48ee"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 2
    :cond_0
    check-cast p1, Lgbsdk/optional/applog/abex$ab$ab;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abex$ab$ab;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
