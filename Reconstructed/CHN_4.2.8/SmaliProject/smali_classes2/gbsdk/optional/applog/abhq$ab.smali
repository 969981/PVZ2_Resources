.class public Lgbsdk/optional/applog/abhq$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abfo$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abhq;->b()Lgbsdk/optional/applog/abfo$ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/optional/applog/abfo$ac<",
        "Lgbsdk/optional/applog/abey;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic b:Lgbsdk/optional/applog/abhq;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abhq;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abhq$ab;->b:Lgbsdk/optional/applog/abhq;

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

    sget-object v2, Lgbsdk/optional/applog/abhq$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a4b435f907fcac42890a933362267e8a"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 1
    :cond_0
    invoke-static {p1}, Lgbsdk/optional/applog/abey$ab;->a(Landroid/os/IBinder;)Lgbsdk/optional/applog/abey;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abhq$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ade2a4f33a85383986dc2f1b7bda0618"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    :cond_0
    check-cast p1, Lgbsdk/optional/applog/abey;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abhq$ab;->b:Lgbsdk/optional/applog/abhq;

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abhq;->e:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lgbsdk/optional/applog/abey$ab$ab;

    invoke-virtual {p1, v0}, Lgbsdk/optional/applog/abey$ab$ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
