.class public Lcom/bytedance/ads/convert/flat/n/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/bytedance/ads/convert/flat/n/d;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ads/convert/flat/n/d;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/n/d;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/n/e;->a:Lcom/bytedance/ads/convert/flat/n/d;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/n/e;->b:Ljava/util/Map;

    return-void
.end method
