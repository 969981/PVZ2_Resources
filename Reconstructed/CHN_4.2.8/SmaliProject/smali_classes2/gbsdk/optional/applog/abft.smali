.class public final Lgbsdk/optional/applog/abft;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/app/Activity;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/exposure/ViewExposureManager;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abft;->a:Lcom/bytedance/applog/exposure/ViewExposureManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/app/Activity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abft;->a:Lcom/bytedance/applog/exposure/ViewExposureManager;

    invoke-static {v0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->access$getActivitiesMap$p(Lcom/bytedance/applog/exposure/ViewExposureManager;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/WeakHashMap;

    if-eqz p1, :cond_3

    const-string v0, "activitiesMap[activity] \u2026erActivityStoppedCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/optional/applog/abcg;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lgbsdk/optional/applog/abcg;->c:Lgbsdk/optional/applog/abfi;

    sget-object v2, Lgbsdk/optional/applog/abfi;->e:Lgbsdk/optional/applog/abfi;

    if-eq v1, v2, :cond_2

    if-eqz p2, :cond_1

    sget-object v2, Lgbsdk/optional/applog/abfi;->d:Lgbsdk/optional/applog/abfi;

    goto :goto_1

    :cond_1
    sget-object v2, Lgbsdk/optional/applog/abfi;->c:Lgbsdk/optional/applog/abfi;

    :cond_2
    :goto_1
    iput-object v2, v0, Lgbsdk/optional/applog/abcg;->c:Lgbsdk/optional/applog/abfi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgbsdk/optional/applog/abcg;->b:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lgbsdk/optional/applog/abcg;->d:J

    goto :goto_0

    .line 3
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
