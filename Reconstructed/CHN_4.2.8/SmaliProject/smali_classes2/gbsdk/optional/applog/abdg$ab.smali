.class public final Lgbsdk/optional/applog/abdg$ab;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abdg;-><init>(Landroid/os/Looper;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/bytedance/applog/aggregation/IAggregation;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abdg$ab;->a:Ljava/lang/String;

    iput-object p2, p0, Lgbsdk/optional/applog/abdg$ab;->b:Landroid/content/Context;

    iput-object p3, p0, Lgbsdk/optional/applog/abdg$ab;->c:Landroid/os/Looper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    const-string v0, "applog-aggregation-"

    .line 1
    invoke-static {v0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abdg$ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/applog/aggregation/IAggregation;->Companion:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

    new-instance v2, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;

    iget-object v3, p0, Lgbsdk/optional/applog/abdg$ab;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abdg$ab;->c:Landroid/os/Looper;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->newInstance(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)Lcom/bytedance/applog/aggregation/IAggregation;

    move-result-object v0

    return-object v0
.end method
