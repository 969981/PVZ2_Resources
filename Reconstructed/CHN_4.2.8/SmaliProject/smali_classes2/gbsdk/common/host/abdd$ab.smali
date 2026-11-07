.class public abstract Lgbsdk/common/host/abdd$ab;
.super Landroid/os/Binder;
.source "IDeviceIdService.java"

# interfaces
.implements Lgbsdk/common/host/abdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abdd$ab$ab;
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static b(Landroid/os/IBinder;)Lgbsdk/common/host/abdd;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abdd$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "c7ee2a04d328f3c5eedf4bd79a571830"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/common/host/abdd;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object v3

    :cond_1
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v1, v0, Lgbsdk/common/host/abdd;

    if-eqz v1, :cond_2

    .line 3
    check-cast v0, Lgbsdk/common/host/abdd;

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lgbsdk/common/host/abdd$ab$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abdd$ab$ab;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
