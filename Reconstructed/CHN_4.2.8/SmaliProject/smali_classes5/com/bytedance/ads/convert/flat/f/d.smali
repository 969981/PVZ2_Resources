.class public final Lcom/bytedance/ads/convert/flat/f/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static final b:Lcom/bytedance/ads/convert/flat/f/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ads/convert/flat/f/d;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/f/d;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/f/d;->b:Lcom/bytedance/ads/convert/flat/f/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/bytedance/ads/convert/flat/f/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/bytedance/ads/convert/flat/f/d;->a:Z

    const-string v0, "launch_app"

    const-string v1, "label"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "2"

    const-string v1, "eventVersion"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/bytedance/ads/convert/flat/f/b;

    const-string v1, "launch_app"

    invoke-direct {v0, v1}, Lcom/bytedance/ads/convert/flat/f/b;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    .line 4
    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/f/b;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/f/b;->h:Lorg/json/JSONObject;

    const-string v1, "Convert:EventReporterV2"

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/ads/convert/flat/f/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
