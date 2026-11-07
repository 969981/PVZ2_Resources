.class public Lcom/bytedance/ads/convert/flat/c/c$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/c/c;->a(Lcom/bytedance/ads/convert/flat/c/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/ads/convert/flat/c/c$b;

.field public final synthetic b:Lcom/bytedance/ads/convert/flat/c/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/c/c;Lcom/bytedance/ads/convert/flat/c/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/c/c$a;->b:Lcom/bytedance/ads/convert/flat/c/c;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/c/c$a;->a:Lcom/bytedance/ads/convert/flat/c/c$b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/c/c$a;->b:Lcom/bytedance/ads/convert/flat/c/c;

    .line 1
    iput-object p1, v0, Lcom/bytedance/ads/convert/flat/c/c;->c:Landroid/net/Network;

    .line 2
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/c/c$a;->a:Lcom/bytedance/ads/convert/flat/c/c$b;

    invoke-interface {v0, p1}, Lcom/bytedance/ads/convert/flat/c/c$b;->a(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/c/c$a;->b:Lcom/bytedance/ads/convert/flat/c/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/ads/convert/flat/c/c;->a(Lcom/bytedance/ads/convert/flat/c/c;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/c/c$a;->b:Lcom/bytedance/ads/convert/flat/c/c;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/bytedance/ads/convert/flat/c/c;->c:Landroid/net/Network;

    .line 4
    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/c/c$a;->a:Lcom/bytedance/ads/convert/flat/c/c$b;

    invoke-interface {p1, v0}, Lcom/bytedance/ads/convert/flat/c/c$b;->a(Landroid/net/Network;)V

    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/c/c$a;->b:Lcom/bytedance/ads/convert/flat/c/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/ads/convert/flat/c/c;->a(Lcom/bytedance/ads/convert/flat/c/c;Z)Z

    return-void
.end method
