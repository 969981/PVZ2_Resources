.class public Lcom/bytedance/ads/convert/flat/l/a;
.super Lcom/bytedance/ads/convert/flat/j/e$a;


# instance fields
.field public volatile a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/ads/convert/flat/j/e$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/l/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(IJZFDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "oa_id_flag"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/l/a;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
