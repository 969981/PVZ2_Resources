.class public Lgbsdk/optional/applog/abhi$ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abfo$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abhi;->b(Landroid/content/Context;)Lgbsdk/optional/applog/abfa$ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/optional/applog/abfo$ac<",
        "Lgbsdk/optional/applog/abev;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:J

.field public final synthetic d:Lgbsdk/optional/applog/abhi;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abhi;Landroid/content/Context;J)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abhi$ac;->d:Lgbsdk/optional/applog/abhi;

    iput-object p2, p0, Lgbsdk/optional/applog/abhi$ac;->b:Landroid/content/Context;

    iput-wide p3, p0, Lgbsdk/optional/applog/abhi$ac;->c:J

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

    sget-object v2, Lgbsdk/optional/applog/abhi$ac;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fe87b892aef6c50c09281f1301ef0ac7"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 1
    :cond_0
    invoke-static {p1}, Lgbsdk/optional/applog/abev$ab;->a(Landroid/os/IBinder;)Lgbsdk/optional/applog/abev;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abhi$ac;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "59140e8527e263a3d4b0016e829aa1c9"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    :cond_0
    check-cast p1, Lgbsdk/optional/applog/abev;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p0, Lgbsdk/optional/applog/abhi$ac;->d:Lgbsdk/optional/applog/abhi;

    iget-object v3, p0, Lgbsdk/optional/applog/abhi$ac;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v3}, Lgbsdk/optional/applog/abhi;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    const-string v4, "Oaid#OnePlusOaidImpl fetchResult sign -> "

    invoke-static {v4, v1}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    const-string v4, "Oaid#OnePlusOaidImpl fetchResult finish -> "

    invoke-static {v4}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lgbsdk/optional/applog/abhi$ac;->c:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lgbsdk/optional/applog/abhi$ac;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OUID"

    check-cast p1, Lgbsdk/optional/applog/abev$ab$ab;

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    :try_start_0
    const-string v7, "com.heytap.openid.IOpenID"

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p1, p1, Lgbsdk/optional/applog/abev$ab$ab;->b:Landroid/os/IBinder;

    invoke-interface {p1, v0, v5, v6, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
