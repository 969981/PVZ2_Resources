.class public final Lcom/bytedance/ads/convert/flat/m/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/m/o$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/ads/convert/flat/m/o$b<",
        "Lcom/bytedance/ads/convert/flat/j/i;",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/ads/convert/flat/j/i$a;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bytedance/ads/convert/flat/j/i;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/bytedance/ads/convert/flat/j/i;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/ads/convert/flat/j/i$a$a;

    invoke-direct {v0, p1}, Lcom/bytedance/ads/convert/flat/j/i$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/bytedance/ads/convert/flat/j/i;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/ads/convert/flat/j/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/ads/convert/flat/j/i;->b()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method
