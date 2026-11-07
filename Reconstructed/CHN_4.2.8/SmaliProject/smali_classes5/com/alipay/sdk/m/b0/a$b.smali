.class public Lcom/alipay/sdk/m/b0/a$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/m/b0/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/net/ConnectivityManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/alipay/sdk/m/b0/a;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/m/b0/a;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/b0/a$b;->f:Lcom/alipay/sdk/m/b0/a;

    iput-object p2, p0, Lcom/alipay/sdk/m/b0/a$b;->a:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/alipay/sdk/m/b0/a$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/sdk/m/b0/a$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/sdk/m/b0/a$b;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/alipay/sdk/m/b0/a$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 9

    const-string v0, "mspl"

    const-string v1, "AlipayChinaMobileBridge checkNetworkAndRequest onAvailable"

    .line 1
    invoke-static {v0, v1}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/alipay/sdk/m/b0/a$b;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/alipay/sdk/m/b0/a$b;->f:Lcom/alipay/sdk/m/b0/a;

    iget-object v4, p0, Lcom/alipay/sdk/m/b0/a$b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/sdk/m/b0/a$b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/sdk/m/b0/a$b;->d:Ljava/util/Map;

    iget-object v7, p0, Lcom/alipay/sdk/m/b0/a$b;->e:Ljava/lang/String;

    new-instance v8, Lcom/alipay/sdk/m/b0/a$b$a;

    invoke-direct {v8, p0, p0}, Lcom/alipay/sdk/m/b0/a$b$a;-><init>(Lcom/alipay/sdk/m/b0/a$b;Landroid/net/ConnectivityManager$NetworkCallback;)V

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/alipay/sdk/m/b0/a;->a(Lcom/alipay/sdk/m/b0/a;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "AlipayChinaMobileBridge sendNetworkByWifiBridge net error "

    .line 13
    invoke-static {v0, p1}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
