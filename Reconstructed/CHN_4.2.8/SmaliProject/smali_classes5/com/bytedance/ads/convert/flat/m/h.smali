.class public final Lcom/bytedance/ads/convert/flat/m/h;
.super Lcom/bytedance/ads/convert/flat/m/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/ads/convert/flat/m/b<",
        "Lcom/bytedance/ads/convert/flat/j/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.zui.deviceidservice"

    invoke-direct {p0, v0}, Lcom/bytedance/ads/convert/flat/m/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/ads/convert/flat/m/o$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/ads/convert/flat/m/o$b<",
            "Lcom/bytedance/ads/convert/flat/j/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/ads/convert/flat/m/h$a;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/m/h$a;-><init>(Lcom/bytedance/ads/convert/flat/m/h;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.zui.deviceidservice"

    const-string v1, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
