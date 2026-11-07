.class public Lgbsdk/common/host/abcq$ac;
.super Ljava/lang/Object;
.source "OnePlusOaidImpl.java"

# interfaces
.implements Lgbsdk/common/host/abcm$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abcq;->i(Landroid/content/Context;)Lgbsdk/common/host/abdv$ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/common/host/abcm$ac<",
        "Lgbsdk/common/host/abcf;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic cx:Lgbsdk/common/host/abcq;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abcq;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/abcq$ac;->cx:Lgbsdk/common/host/abcq;

    iput-object p2, p0, Lgbsdk/common/host/abcq$ac;->a:Landroid/content/Context;

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

    sget-object v2, Lgbsdk/common/host/abcq$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "41a9488bf38329e04aecc293c68d37ce"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 23
    :cond_0
    invoke-static {p1}, Lgbsdk/common/host/abcf$ab;->g(Landroid/os/IBinder;)Lgbsdk/common/host/abcf;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abcq$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "d07f46caf44642717d9da7a3de302c85"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 1
    :cond_0
    check-cast p1, Lgbsdk/common/host/abcf;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/abcq$ac;->cx:Lgbsdk/common/host/abcq;

    iget-object v3, p0, Lgbsdk/common/host/abcq$ac;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v3}, Lgbsdk/common/host/abcq;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iget-object v3, p0, Lgbsdk/common/host/abcq$ac;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OUID"

    check-cast p1, Lgbsdk/common/host/abcf$ab$ab;

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    :try_start_0
    const-string v7, "com.heytap.openid.IOpenID"

    .line 10
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lgbsdk/common/host/abcf$ab$ab;->cg:Landroid/os/IBinder;

    invoke-interface {p1, v0, v5, v6, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 16
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
