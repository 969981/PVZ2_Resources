.class public final Lgbsdk/optional/applog/abdg$ad;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/bytedance/applog/aggregation/IMetricsTracker;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lgbsdk/optional/applog/abdg$ad;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abdg$ad;

    invoke-direct {v0}, Lgbsdk/optional/applog/abdg$ad;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abdg$ad;->a:Lgbsdk/optional/applog/abdg$ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method
