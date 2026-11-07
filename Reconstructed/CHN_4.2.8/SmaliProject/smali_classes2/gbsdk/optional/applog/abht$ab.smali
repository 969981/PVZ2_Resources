.class public abstract Lgbsdk/optional/applog/abht$ab;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abht;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abht$ab$ab;
    }
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static a()Lgbsdk/optional/applog/abht;
    .locals 1

    sget-object v0, Lgbsdk/optional/applog/abht$ab$ab;->b:Lgbsdk/optional/applog/abht;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lgbsdk/optional/applog/abht;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/optional/applog/abht$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "c33bfbfbfa09ec1c4a74b0a7352b3905"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/optional/applog/abht;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object v3

    :cond_1
    const-string v0, "com.bun.lib.MsaIdInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lgbsdk/optional/applog/abht;

    if-eqz v1, :cond_2

    check-cast v0, Lgbsdk/optional/applog/abht;

    return-object v0

    :cond_2
    new-instance v0, Lgbsdk/optional/applog/abht$ab$ab;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abht$ab$ab;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
