.class public abstract Lgbsdk/common/host/abro$ab;
.super Landroid/os/Binder;
.source "IApkSourceDirFetcher.java"

# interfaces
.implements Lgbsdk/common/host/abro;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abro$ab$ab;
    }
.end annotation


# static fields
.field static final CP:I = 0x1

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bytedance.ttgame.tob.common.host.base.impl.applog.IApkSourceDirFetcher"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.bytedance.ttgame.tob.common.host.base.impl.applog.IApkSourceDirFetcher"

    .line 18
    invoke-virtual {p0, p0, v0}, Lgbsdk/common/host/abro$ab;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/os/IBinder;)Lgbsdk/common/host/abro;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abro$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "dd27b9ef50bdeb6a357f81ffc5522bea"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/common/host/abro;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object v3

    :cond_1
    const-string v0, "com.bytedance.ttgame.tob.common.host.base.impl.applog.IApkSourceDirFetcher"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    instance-of v1, v0, Lgbsdk/common/host/abro;

    if-eqz v1, :cond_2

    .line 31
    check-cast v0, Lgbsdk/common/host/abro;

    return-object v0

    .line 33
    :cond_2
    new-instance v0, Lgbsdk/common/host/abro$ab$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abro$ab$ab;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    sget-object v3, Lgbsdk/common/host/abro$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "54b8df85d8f8fd196d495ef2f73ca994"

    invoke-static {v0, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "com.bytedance.ttgame.tob.common.host.base.impl.applog.IApkSourceDirFetcher"

    if-eq p1, v1, :cond_2

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 46
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 50
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lgbsdk/common/host/abro$ab;->eb()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
