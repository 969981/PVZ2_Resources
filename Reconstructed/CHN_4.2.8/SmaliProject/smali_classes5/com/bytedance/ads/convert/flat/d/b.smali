.class public final Lcom/bytedance/ads/convert/flat/d/b;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lcom/bytedance/ads/convert/flat/d/c;

.field public static final b:Lcom/bytedance/ads/convert/flat/d/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ads/convert/flat/d/b;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/d/b;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/d/b;->b:Lcom/bytedance/ads/convert/flat/d/b;

    new-instance v0, Lcom/bytedance/ads/convert/flat/d/c;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/d/c;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [I

    :try_start_0
    new-instance v1, Lcom/bytedance/ad/common/interal/Nano;

    invoke-direct {v1}, Lcom/bytedance/ad/common/interal/Nano;-><init>()V

    .line 1
    invoke-virtual {v1}, Lcom/bytedance/ad/common/interal/Nano;->n()[I

    move-result-object v0

    .line 2
    sget-object v1, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "<set-?>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/bytedance/ads/convert/flat/d/c;->f:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method
