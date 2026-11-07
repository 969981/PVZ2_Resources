.class public abstract Lgbsdk/optional/applog/abhs$ab;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abhs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abhs$ab$ab;
    }
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static a(Landroid/os/IBinder;)Lgbsdk/optional/applog/abhs;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/optional/applog/abhs$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "d0680b89b1e3795808a2c47f811ddfe6"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/optional/applog/abhs;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object v3

    :cond_1
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lgbsdk/optional/applog/abhs;

    if-eqz v1, :cond_2

    check-cast v0, Lgbsdk/optional/applog/abhs;

    return-object v0

    :cond_2
    new-instance v0, Lgbsdk/optional/applog/abhs$ab$ab;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abhs$ab$ab;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
