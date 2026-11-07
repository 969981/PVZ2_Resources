.class public Lgbsdk/common/host/am;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static a:I

.field public static ak:Lgbsdk/common/host/abaf;

.field public static al:Lgbsdk/common/host/abaf;

.field public static final am:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static d:J

.field public static e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lgbsdk/common/host/am;->am:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Lgbsdk/common/host/abaf;
    .locals 2

    .line 1
    sget-object v0, Lgbsdk/common/host/am;->ak:Lgbsdk/common/host/abaf;

    .line 2
    sget-object v1, Lgbsdk/common/host/am;->al:Lgbsdk/common/host/abaf;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lgbsdk/common/host/abaf;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object p4, v0, v2

    sget-object v2, Lgbsdk/common/host/am;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b1ad5c0b0003faaa86b0bf5035d6376d"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/common/host/abaf;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lgbsdk/common/host/abaf;

    invoke-direct {v0}, Lgbsdk/common/host/abaf;-><init>()V

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_1
    iput-object p0, v0, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    .line 13
    :goto_0
    invoke-virtual {v0, p2, p3}, Lgbsdk/common/host/aban;->a(J)V

    const-wide/16 p0, -0x1

    .line 14
    iput-wide p0, v0, Lgbsdk/common/host/abaf;->bP:J

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p4, ""

    .line 15
    :goto_1
    iput-object p4, v0, Lgbsdk/common/host/abaf;->m:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/apm/applog/AppLog;->receive(Lgbsdk/common/host/aban;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/am;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "a950fbb18e2227abade7643e5c8ede74"

    invoke-static {v0, p0, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    sget-object v2, Lgbsdk/common/host/am;->e:Ljava/lang/String;

    const-string v4, ""

    invoke-static {p1, v4, v0, v1, v2}, Lgbsdk/common/host/am;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lgbsdk/common/host/abaf;

    move-result-object p1

    sput-object p1, Lgbsdk/common/host/am;->ak:Lgbsdk/common/host/abaf;

    .line 6
    sget-object v0, Lgbsdk/common/host/am;->am:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v3

    iput p2, p1, Lgbsdk/common/host/abaf;->o:I

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object p2, Lgbsdk/common/host/am;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "df26c4dbd2f77d366781930fc800ee4d"

    invoke-static {v0, p0, p2, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p2, Lgbsdk/common/host/am;->am:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/am;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "532a74bae64b944ac30c9b30e08ba48f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lgbsdk/common/host/am;->am:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/am;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f8cfe7347fba33ab0dd70eb2b3c5e9c4"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, Lgbsdk/common/host/am;->ak:Lgbsdk/common/host/abaf;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    sput-object v0, Lgbsdk/common/host/am;->e:Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lgbsdk/common/host/am;->d:J

    .line 8
    sget-object v2, Lgbsdk/common/host/am;->ak:Lgbsdk/common/host/abaf;

    .line 9
    invoke-virtual {v2}, Lgbsdk/common/host/aban;->K()Lgbsdk/common/host/aban;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abaf;

    .line 10
    invoke-virtual {v3, v0, v1}, Lgbsdk/common/host/aban;->a(J)V

    .line 11
    iget-wide v4, v2, Lgbsdk/common/host/aban;->b:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    const-wide/16 v0, 0x3e8

    .line 15
    :cond_1
    iput-wide v0, v3, Lgbsdk/common/host/abaf;->bP:J

    .line 16
    invoke-static {v3}, Lcom/apm/applog/AppLog;->receive(Lgbsdk/common/host/aban;)V

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lgbsdk/common/host/am;->ak:Lgbsdk/common/host/abaf;

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    :cond_2
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/am;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "8613bdd2b03288280b38d8ec1634b1c1"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lgbsdk/common/host/am;->e:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v3, v5, v1, v2, v4}, Lgbsdk/common/host/am;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lgbsdk/common/host/abaf;

    move-result-object v1

    sput-object v1, Lgbsdk/common/host/am;->ak:Lgbsdk/common/host/abaf;

    .line 4
    sget-object v2, Lgbsdk/common/host/am;->am:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput v0, v1, Lgbsdk/common/host/abaf;->o:I

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget p1, Lgbsdk/common/host/am;->a:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lgbsdk/common/host/am;->a:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object p1, Lgbsdk/common/host/am;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lgbsdk/common/host/am;->a:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lgbsdk/common/host/am;->a:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    sput-object p1, Lgbsdk/common/host/am;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    sput-wide v0, Lgbsdk/common/host/am;->d:J

    :cond_0
    return-void
.end method
