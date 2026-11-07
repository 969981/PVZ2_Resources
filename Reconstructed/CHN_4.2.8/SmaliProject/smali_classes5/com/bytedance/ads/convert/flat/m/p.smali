.class public final Lcom/bytedance/ads/convert/flat/m/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/k/c;


# static fields
.field public static a:Ljava/lang/Object;

.field public static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ads/convert/flat/m/p;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ads/convert/flat/m/p;->a:Ljava/lang/Object;

    sget-object v0, Lcom/bytedance/ads/convert/flat/m/p;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getOAID"

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ads/convert/flat/m/p;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/bytedance/ads/convert/flat/k/c$a;

    invoke-direct {v1}, Lcom/bytedance/ads/convert/flat/k/c$a;-><init>()V

    sget-object v2, Lcom/bytedance/ads/convert/flat/m/p;->c:Ljava/lang/reflect/Method;

    .line 1
    sget-object v3, Lcom/bytedance/ads/convert/flat/m/p;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    :try_start_2
    iput-object p1, v1, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 0

    .line 1
    sget-object p1, Lcom/bytedance/ads/convert/flat/m/p;->b:Ljava/lang/Class;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bytedance/ads/convert/flat/m/p;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bytedance/ads/convert/flat/m/p;->c:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
