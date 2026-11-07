.class public Lcom/bytedance/ads/convert/flat/m/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/m/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/m/h;->a()Lcom/bytedance/ads/convert/flat/m/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/ads/convert/flat/m/o$b<",
        "Lcom/bytedance/ads/convert/flat/j/c;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/m/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/ads/convert/flat/j/c$a;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bytedance/ads/convert/flat/j/c;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/bytedance/ads/convert/flat/j/c;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/ads/convert/flat/j/c$a$a;

    invoke-direct {v0, p1}, Lcom/bytedance/ads/convert/flat/j/c$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/bytedance/ads/convert/flat/j/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/ads/convert/flat/j/c;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
