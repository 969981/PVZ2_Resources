.class public Lcom/bytedance/ads/convert/flat/m/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/k/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ads/convert/flat/m/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;
    .locals 4

    new-instance v0, Lcom/bytedance/ads/convert/flat/m/m$a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/m/m$a;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "content://com.pico.idprovider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    const-string v2, "request_oaid"

    invoke-virtual {p1, v2, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object p1, v1

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    if-eqz p1, :cond_1

    :goto_2
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    if-eqz v2, :cond_2

    const-string p1, "oaid"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "forbidden"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/bytedance/ads/convert/flat/k/c$a;->b:Z

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, p1

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    throw v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
