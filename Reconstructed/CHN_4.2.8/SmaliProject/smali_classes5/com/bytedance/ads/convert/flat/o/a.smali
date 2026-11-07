.class public Lcom/bytedance/ads/convert/flat/o/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:Lcom/bytedance/ads/convert/flat/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/ads/convert/flat/n/c<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bytedance/ads/convert/flat/o/a;->a:I

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2
    new-instance v0, Lcom/bytedance/ads/convert/flat/o/a$a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/o/a$a;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/o/a;->b:Lcom/bytedance/ads/convert/flat/n/c;

    return-void
.end method
