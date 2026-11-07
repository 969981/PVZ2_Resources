.class public final Lcom/bytedance/ads/convert/flat/m/d;
.super Lcom/bytedance/ads/convert/flat/m/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/ads/convert/flat/m/b<",
        "Lcom/bytedance/ads/convert/flat/j/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.coolpad.deviceidsupport"

    invoke-direct {p0, v0}, Lcom/bytedance/ads/convert/flat/m/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/m/d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "coolos.oaid"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/ads/convert/flat/k/c$a;

    invoke-direct {v1}, Lcom/bytedance/ads/convert/flat/k/c$a;-><init>()V

    iput-object v0, v1, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/ads/convert/flat/m/b;->a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/bytedance/ads/convert/flat/m/o$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/ads/convert/flat/m/o$b<",
            "Lcom/bytedance/ads/convert/flat/j/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/ads/convert/flat/m/d$a;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/m/d$a;-><init>(Lcom/bytedance/ads/convert/flat/m/d;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.coolpad.deviceidsupport"

    const-string v2, "com.coolpad.deviceidsupport.DeviceIdService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method
