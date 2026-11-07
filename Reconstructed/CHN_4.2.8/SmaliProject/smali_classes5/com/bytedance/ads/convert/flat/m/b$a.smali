.class public Lcom/bytedance/ads/convert/flat/m/b$a;
.super Lcom/bytedance/ads/convert/flat/n/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/flat/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/ads/convert/flat/n/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/bytedance/ads/convert/flat/m/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/m/b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/m/b$a;->c:Lcom/bytedance/ads/convert/flat/m/b;

    invoke-direct {p0}, Lcom/bytedance/ads/convert/flat/n/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/m/b$a;->c:Lcom/bytedance/ads/convert/flat/m/b;

    .line 2
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/m/b;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    :catchall_0
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
