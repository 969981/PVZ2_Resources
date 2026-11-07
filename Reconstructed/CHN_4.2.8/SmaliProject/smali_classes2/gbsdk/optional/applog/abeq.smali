.class public final Lgbsdk/optional/applog/abeq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00102\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J6\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00122\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/bytedance/applog/exposure/scroll/ScrollExposureHelper;",
        "",
        "appLog",
        "Lcom/bytedance/applog/AppLogInstance;",
        "(Lcom/bytedance/applog/AppLogInstance;)V",
        "defaultData",
        "Lcom/bytedance/applog/exposure/ViewExposureData;",
        "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;",
        "getDefaultData",
        "()Lcom/bytedance/applog/exposure/ViewExposureData;",
        "globalConfig",
        "observeViewScroll",
        "",
        "view",
        "Lgbsdk/androidx/recyclerview/widget/RecyclerView;",
        "data",
        "Lgbsdk/androidx/viewpager/widget/ViewPager;",
        "sendScrollExposure",
        "Landroid/view/View;",
        "dx",
        "",
        "dy",
        "direction",
        "",
        "Companion",
        "agent_liteChinaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final a:Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

.field public final b:Lcom/bytedance/applog/exposure/ViewExposureData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/applog/exposure/ViewExposureData<",
            "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 7

    const-string v0, "appLog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abeq;->c:Lcom/bytedance/bdtracker/d;

    new-instance v4, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {v4, p1, v0, v1, v0}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;-><init>(ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, p0, Lgbsdk/optional/applog/abeq;->a:Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    new-instance p1, Lcom/bytedance/applog/exposure/ViewExposureData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/applog/exposure/ViewExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/exposure/IExposureConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abeq;->b:Lcom/bytedance/applog/exposure/ViewExposureData;

    return-void
.end method

.method public static final synthetic a(Lgbsdk/optional/applog/abeq;Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;FFI)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lgbsdk/optional/applog/abeq;->a(Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;FFI)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;FFI)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/bytedance/applog/exposure/ViewExposureData<",
            "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;",
            ">;FFI)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getEventName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "$bav2b_slide"

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lgbsdk/optional/applog/abce;->b(Landroid/view/View;Z)Lgbsdk/optional/applog/abeh;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "page_key"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lgbsdk/optional/applog/abeh;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "page_title"

    :try_start_1
    iget-object v4, p1, Lgbsdk/optional/applog/abeh;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "element_path"

    :try_start_2
    iget-object v4, p1, Lgbsdk/optional/applog/abeh;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "element_width"

    :try_start_3
    iget v4, p1, Lgbsdk/optional/applog/abeh;->k:I

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "element_height"

    :try_start_4
    iget v4, p1, Lgbsdk/optional/applog/abeh;->l:I

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "element_id"

    :try_start_5
    iget-object v4, p1, Lgbsdk/optional/applog/abeh;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "element_type"

    :try_start_6
    iget-object p1, p1, Lgbsdk/optional/applog/abeh;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "$offsetX"

    :try_start_7
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p1, "$offsetY"

    :try_start_8
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$direction"

    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p3, p0, Lgbsdk/optional/applog/abeq;->c:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object p3, p3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p4, v3, [Ljava/lang/Object;

    const/4 p5, 0x7

    const-string v2, "[ScrollExposure] JSON handle failed"

    .line 10
    invoke-interface {p3, p5, v2, p1, p4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object p1

    check-cast p1, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->getScrollCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lgbsdk/optional/applog/abeq;->a:Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->getScrollCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    :goto_2
    new-instance p2, Lcom/bytedance/applog/exposure/ViewExposureParam;

    invoke-direct {p2, v1}, Lcom/bytedance/applog/exposure/ViewExposureParam;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lgbsdk/optional/applog/abeq;->c:Lcom/bytedance/bdtracker/d;

    .line 11
    invoke-virtual {p1, v0, v1, v3}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    goto :goto_3

    .line 12
    :cond_3
    iget-object p1, p0, Lgbsdk/optional/applog/abeq;->c:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[ScrollExposure] filter sendScrollExposure event "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public final a(Lgbsdk/androidx/recyclerview/widget/RecyclerView;Lcom/bytedance/applog/exposure/ViewExposureData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/androidx/recyclerview/widget/RecyclerView;",
            "Lcom/bytedance/applog/exposure/ViewExposureData<",
            "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abeq;->c:Lcom/bytedance/bdtracker/d;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->isScrollObserveEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->getMinOffset()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1e

    :goto_0
    new-instance v3, Lgbsdk/optional/applog/abfz;

    new-instance v4, Lgbsdk/optional/applog/abeq$ab;

    invoke-direct {v4, p0, p2, p1}, Lgbsdk/optional/applog/abeq$ab;-><init>(Lgbsdk/optional/applog/abeq;Lcom/bytedance/applog/exposure/ViewExposureData;Lgbsdk/androidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v3, v2, v4}, Lgbsdk/optional/applog/abfz;-><init>(ILkotlin/jvm/functions/Function3;)V

    invoke-virtual {p1, v3}, Lgbsdk/androidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lgbsdk/androidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lgbsdk/optional/applog/abeq;->c:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "[ScrollExposure] observeScrollExposure failed isScrollExposureEnabled false."

    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x7

    const-string v2, "Run task failed"

    .line 4
    invoke-interface {p2, v1, v2, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final a(Lgbsdk/androidx/viewpager/widget/ViewPager;Lcom/bytedance/applog/exposure/ViewExposureData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/androidx/viewpager/widget/ViewPager;",
            "Lcom/bytedance/applog/exposure/ViewExposureData<",
            "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abeq;->c:Lcom/bytedance/bdtracker/d;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->isScrollObserveEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->getMinOffset()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1e

    :goto_0
    new-instance v3, Lgbsdk/optional/applog/abeo;

    new-instance v4, Lgbsdk/optional/applog/abeq$ac;

    invoke-direct {v4, p0, p2, p1}, Lgbsdk/optional/applog/abeq$ac;-><init>(Lgbsdk/optional/applog/abeq;Lcom/bytedance/applog/exposure/ViewExposureData;Lgbsdk/androidx/viewpager/widget/ViewPager;)V

    invoke-direct {v3, v2, v4}, Lgbsdk/optional/applog/abeo;-><init>(ILkotlin/jvm/functions/Function3;)V

    invoke-virtual {p1, v3}, Lgbsdk/androidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Lgbsdk/androidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lgbsdk/optional/applog/abeq;->c:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "[ScrollExposure] observeScrollExposure failed isScrollExposureEnabled false."

    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    invoke-interface {p1, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 7
    iget-object p2, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x7

    const-string v2, "Run task failed"

    .line 8
    invoke-interface {p2, v1, v2, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
