.class public final Lcom/bytedance/applog/exposure/ViewExposureManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/exposure/ViewExposureManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 22\u00020\u0001:\u00012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u001eJ\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0008J\u0008\u0010!\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\"\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0008J\u001e\u0010\"\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00082\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010$J\u001e\u0010%\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020&2\u000e\u0008\u0002\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\'0$J\u001e\u0010%\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020(2\u000e\u0008\u0002\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\'0$J\u0018\u0010)\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00082\u0006\u0010*\u001a\u00020\tH\u0002J\u0008\u0010+\u001a\u00020\u001cH\u0002J\u0018\u0010,\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00082\u0006\u0010*\u001a\u00020\tH\u0002J\u0010\u0010-\u001a\u00020\u001c2\u0008\u0010.\u001a\u0004\u0018\u00010/J\u000e\u00100\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\u000bR&\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0011\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/bytedance/applog/exposure/ViewExposureManager;",
        "",
        "appLog",
        "Lcom/bytedance/applog/AppLogInstance;",
        "(Lcom/bytedance/applog/AppLogInstance;)V",
        "activitiesMap",
        "Ljava/util/WeakHashMap;",
        "Landroid/app/Activity;",
        "Landroid/view/View;",
        "Lcom/bytedance/applog/exposure/ViewExposureHolder;",
        "globalConfig",
        "Lcom/bytedance/applog/exposure/ViewExposureConfig;",
        "scrollExposureHelper",
        "Lcom/bytedance/applog/exposure/scroll/ScrollExposureHelper;",
        "getScrollExposureHelper",
        "()Lcom/bytedance/applog/exposure/scroll/ScrollExposureHelper;",
        "scrollExposureHelper$delegate",
        "Lkotlin/Lazy;",
        "started",
        "",
        "task",
        "Lcom/bytedance/applog/exposure/task/ViewExposureTask;",
        "getTask",
        "()Lcom/bytedance/applog/exposure/task/ViewExposureTask;",
        "task$delegate",
        "viewTreeChangeObserver",
        "Lcom/bytedance/applog/exposure/ViewTreeChangeObserver;",
        "checkViewExposureFromActivity",
        "",
        "activity",
        "checkViewExposureFromActivity$agent_liteChinaRelease",
        "disposeViewExposure",
        "view",
        "getCurrActivity",
        "observeViewExposure",
        "data",
        "Lcom/bytedance/applog/exposure/ViewExposureData;",
        "observeViewScroll",
        "Lgbsdk/androidx/recyclerview/widget/RecyclerView;",
        "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;",
        "Lgbsdk/androidx/viewpager/widget/ViewPager;",
        "sendViewExposureEvent",
        "holder",
        "start",
        "triggeredExposure",
        "updateExposureCheckStrategy",
        "exposureCheckType",
        "Lcom/bytedance/applog/exposure/ExposureCheckType;",
        "updateViewExposureConfig",
        "viewExposureConfig",
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


# static fields
.field public static final Companion:Lcom/bytedance/applog/exposure/ViewExposureManager$a;

.field public static final synthetic h:[Lkotlin/reflect/KProperty;

.field public static final i:Lcom/bytedance/applog/exposure/ViewExposureConfig;


# instance fields
.field public final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lgbsdk/optional/applog/abcg;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Lgbsdk/optional/applog/abfg;

.field public d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;

.field public final g:Lcom/bytedance/bdtracker/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-class v0, Lcom/bytedance/applog/exposure/ViewExposureManager;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "task"

    const-string v5, "getTask()Lcom/bytedance/applog/exposure/task/ViewExposureTask;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "scrollExposureHelper"

    const-string v4, "getScrollExposureHelper()Lcom/bytedance/applog/exposure/scroll/ScrollExposureHelper;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->h:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/bytedance/applog/exposure/ViewExposureManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/applog/exposure/ViewExposureManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/applog/exposure/ViewExposureManager;->Companion:Lcom/bytedance/applog/exposure/ViewExposureManager$a;

    new-instance v0, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/applog/exposure/ViewExposureManager;->i:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 2

    const-string v0, "appLog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    new-instance p1, Lgbsdk/optional/applog/abfg;

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p1, v0}, Lgbsdk/optional/applog/abfg;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lgbsdk/optional/applog/abfg;

    sget-object p1, Lcom/bytedance/applog/exposure/ViewExposureManager;->i:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    new-instance p1, Lcom/bytedance/applog/exposure/ViewExposureManager$c;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/exposure/ViewExposureManager$c;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->e:Lkotlin/Lazy;

    new-instance p1, Lcom/bytedance/applog/exposure/ViewExposureManager$b;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/exposure/ViewExposureManager$b;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lkotlin/Lazy;

    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isExposureEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lgbsdk/optional/applog/abfg;

    new-instance v1, Lgbsdk/optional/applog/abcx;

    invoke-direct {v1, p0}, Lgbsdk/optional/applog/abcx;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V

    invoke-virtual {p1, v1}, Lgbsdk/optional/applog/abfg;->a(Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lgbsdk/optional/applog/abfg;

    new-instance v1, Lgbsdk/optional/applog/abft;

    invoke-direct {v1, p0}, Lgbsdk/optional/applog/abft;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V

    invoke-virtual {p1, v1}, Lgbsdk/optional/applog/abfg;->a(Lkotlin/jvm/functions/Function2;)V

    iput-boolean v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->b:Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[ViewExposure] init failed isExposureEnabled false."

    .line 6
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getActivitiesMap$p(Lcom/bytedance/applog/exposure/ViewExposureManager;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static final synthetic access$getAppLog$p(Lcom/bytedance/applog/exposure/ViewExposureManager;)Lcom/bytedance/bdtracker/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    return-object p0
.end method

.method public static final synthetic access$getTask$p(Lcom/bytedance/applog/exposure/ViewExposureManager;)Lgbsdk/optional/applog/ay;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->e:Lkotlin/Lazy;

    sget-object v0, Lcom/bytedance/applog/exposure/ViewExposureManager;->h:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/optional/applog/ay;

    return-object p0
.end method

.method public static synthetic observeViewScroll$default(Lcom/bytedance/applog/exposure/ViewExposureManager;Lgbsdk/androidx/recyclerview/widget/RecyclerView;Lcom/bytedance/applog/exposure/ViewExposureData;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->a()Lgbsdk/optional/applog/abeq;

    move-result-object p2

    .line 1
    iget-object p2, p2, Lgbsdk/optional/applog/abeq;->b:Lcom/bytedance/applog/exposure/ViewExposureData;

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/applog/exposure/ViewExposureManager;->observeViewScroll(Lgbsdk/androidx/recyclerview/widget/RecyclerView;Lcom/bytedance/applog/exposure/ViewExposureData;)V

    return-void
.end method

.method public static synthetic observeViewScroll$default(Lcom/bytedance/applog/exposure/ViewExposureManager;Lgbsdk/androidx/viewpager/widget/ViewPager;Lcom/bytedance/applog/exposure/ViewExposureData;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->a()Lgbsdk/optional/applog/abeq;

    move-result-object p2

    .line 3
    iget-object p2, p2, Lgbsdk/optional/applog/abeq;->b:Lcom/bytedance/applog/exposure/ViewExposureData;

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/applog/exposure/ViewExposureManager;->observeViewScroll(Lgbsdk/androidx/viewpager/widget/ViewPager;Lcom/bytedance/applog/exposure/ViewExposureData;)V

    return-void
.end method


# virtual methods
.method public final a()Lgbsdk/optional/applog/abeq;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/optional/applog/abeq;

    return-object v0
.end method

.method public final a(Landroid/view/View;Lgbsdk/optional/applog/abcg;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p2, Lgbsdk/optional/applog/abcg;->a:Lcom/bytedance/applog/exposure/ViewExposureData;

    .line 2
    invoke-virtual {v3}, Lcom/bytedance/applog/exposure/ViewExposureData;->getEventName()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "$bav2b_exposure"

    :goto_0
    const/4 v5, 0x1

    :try_start_1
    invoke-static {p1, v5}, Lgbsdk/optional/applog/abce;->b(Landroid/view/View;Z)Lgbsdk/optional/applog/abeh;

    move-result-object p1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "page_key"

    :try_start_2
    iget-object v8, p1, Lgbsdk/optional/applog/abeh;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "page_title"

    :try_start_3
    iget-object v8, p1, Lgbsdk/optional/applog/abeh;->e:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, "element_path"

    :try_start_4
    iget-object v8, p1, Lgbsdk/optional/applog/abeh;->f:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v7, "element_width"

    :try_start_5
    iget v8, p1, Lgbsdk/optional/applog/abeh;->k:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v7, "element_height"

    :try_start_6
    iget v8, p1, Lgbsdk/optional/applog/abeh;->l:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v7, "element_id"

    :try_start_7
    iget-object v8, p1, Lgbsdk/optional/applog/abeh;->g:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v7, "element_type"

    :try_start_8
    iget-object v8, p1, Lgbsdk/optional/applog/abeh;->h:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v7, p1, Lgbsdk/optional/applog/abeh;->j:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-nez v7, :cond_3

    const-string v7, "positions"

    :try_start_9
    new-instance v8, Lorg/json/JSONArray;

    iget-object v9, p1, Lgbsdk/optional/applog/abeh;->j:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v7, p1, Lgbsdk/optional/applog/abeh;->i:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :cond_5
    :goto_3
    if-nez v5, :cond_6

    const-string v5, "texts"

    :try_start_a
    new-instance v7, Lorg/json/JSONArray;

    iget-object p1, p1, Lgbsdk/optional/applog/abeh;->i:Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    const-string p1, "$exposure_type"

    .line 3
    :try_start_b
    iget-object p2, p2, Lgbsdk/optional/applog/abcg;->c:Lgbsdk/optional/applog/abfi;

    .line 4
    iget p2, p2, Lgbsdk/optional/applog/abfi;->g:I

    .line 5
    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/applog/exposure/ViewExposureData;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1, v6}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_c
    iget-object p2, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const-string v5, "[ViewExposure] JSON handle failed"

    :try_start_d
    new-array v7, v2, [Ljava/lang/Object;

    .line 7
    invoke-interface {p2, v1, v5, p1, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object p1

    check-cast p1, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getExposureCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getExposureCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    :goto_5
    new-instance p2, Lcom/bytedance/applog/exposure/ViewExposureParam;

    invoke-direct {p2, v6}, Lcom/bytedance/applog/exposure/ViewExposureParam;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 8
    invoke-virtual {p1, v4, v6, v2}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    goto :goto_6

    .line 9
    :cond_9
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ViewExposure] filter sendViewExposureEvent event "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Run task failed"

    .line 13
    invoke-interface {p2, v1, v2, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method

.method public final b(Landroid/view/View;Lgbsdk/optional/applog/abcg;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lgbsdk/optional/applog/abcg;->c:Lgbsdk/optional/applog/abfi;

    .line 2
    sget-object v1, Lgbsdk/optional/applog/abcd;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/applog/exposure/ViewExposureManager;->a(Landroid/view/View;Lgbsdk/optional/applog/abcg;)V

    sget-object p1, Lgbsdk/optional/applog/abfi;->b:Lgbsdk/optional/applog/abfi;

    invoke-virtual {p2, p1}, Lgbsdk/optional/applog/abcg;->a(Lgbsdk/optional/applog/abfi;)V

    goto :goto_2

    :cond_1
    sget-object v0, Lgbsdk/optional/applog/abfi;->b:Lgbsdk/optional/applog/abfi;

    goto :goto_0

    :cond_2
    sget-object v0, Lgbsdk/optional/applog/abfi;->a:Lgbsdk/optional/applog/abfi;

    :goto_0
    invoke-virtual {p2, v0}, Lgbsdk/optional/applog/abcg;->a(Lgbsdk/optional/applog/abfi;)V

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/applog/exposure/ViewExposureManager;->a(Landroid/view/View;Lgbsdk/optional/applog/abcg;)V

    .line 3
    :goto_2
    iput-boolean v1, p2, Lgbsdk/optional/applog/abcg;->b:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p2, Lgbsdk/optional/applog/abcg;->d:J

    return-void
.end method

.method public final checkViewExposureFromActivity$agent_liteChinaRelease(Landroid/app/Activity;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "activity"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    const/4 v3, 0x7

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-eqz v0, :cond_c

    const-string v5, "activitiesMap[activity] ?: return@runSafely"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbsdk/optional/applog/abcg;

    .line 1
    iget-object v7, v5, Lgbsdk/optional/applog/abcg;->a:Lcom/bytedance/applog/exposure/ViewExposureData;

    const-string v8, "view"

    .line 2
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object v8

    check-cast v8, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getAreaRatio()Ljava/lang/Float;

    move-result-object v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v10, "$this$isVisibleInViewport"

    .line 3
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lgbsdk/optional/applog/abce;->c(Landroid/view/View;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int v10, v10, v12

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    mul-int v13, v13, v12

    int-to-float v12, v13

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    mul-float v12, v12, v8

    cmpl-float v8, v10, v12

    if-ltz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const-wide/16 v12, 0x0

    if-eqz v8, :cond_4

    .line 4
    iget-wide v14, v5, Lgbsdk/optional/applog/abcg;->d:J

    cmp-long v10, v14, v12

    if-nez v10, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    goto :goto_4

    :cond_4
    move-wide v14, v12

    :cond_5
    :goto_4
    iput-wide v14, v5, Lgbsdk/optional/applog/abcg;->d:J

    .line 5
    iget-boolean v10, v5, Lgbsdk/optional/applog/abcg;->b:Z

    if-eq v10, v8, :cond_0

    if-nez v10, :cond_8

    const-string v8, "data"

    .line 6
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v9, v5, Lgbsdk/optional/applog/abcg;->d:J

    sub-long/2addr v14, v9

    invoke-virtual {v7}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object v8

    check-cast v8, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getStayTriggerTime()J

    move-result-wide v12

    :cond_6
    cmp-long v8, v14, v12

    if-ltz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_9

    const-string v8, "holder"

    .line 7
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v5}, Lcom/bytedance/applog/exposure/ViewExposureManager;->b(Landroid/view/View;Lgbsdk/optional/applog/abcg;)V

    goto :goto_6

    .line 8
    :cond_8
    iput-boolean v4, v5, Lgbsdk/optional/applog/abcg;->b:Z

    .line 9
    :cond_9
    :goto_6
    invoke-virtual {v7}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object v8

    check-cast v8, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 10
    iget-boolean v8, v5, Lgbsdk/optional/applog/abcg;->b:Z

    .line 11
    invoke-static {v6, v8}, Lgbsdk/optional/applog/abce;->a(Landroid/view/View;Z)V

    :cond_b
    iget-object v8, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ViewExposure] visible change to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-boolean v10, v5, Lgbsdk/optional/applog/abcg;->b:Z

    .line 15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", exposureTriggerType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v5, v5, Lgbsdk/optional/applog/abcg;->c:Lgbsdk/optional/applog/abfi;

    .line 17
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", config="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object v5

    check-cast v5, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " view="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v8, v3, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 18
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Run task failed"

    .line 19
    invoke-interface {v2, v3, v5, v0, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public final disposeViewExposure(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/optional/applog/abce;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    const-string v3, "ActivityUtil.findActivit\u2026view) ?: return@runSafely"

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/WeakHashMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/optional/applog/abcg;

    if-eqz v2, :cond_2

    const-string v3, "activitiesMap[activity]?\u2026view) ?: return@runSafely"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v2, Lgbsdk/optional/applog/abcg;->a:Lcom/bytedance/applog/exposure/ViewExposureData;

    .line 4
    invoke-virtual {v2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lgbsdk/optional/applog/abce;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x7

    const-string v3, "Run task failed"

    .line 6
    invoke-interface {v0, v2, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final getCurrActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lgbsdk/optional/applog/abfg;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abfg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public final observeViewExposure(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->observeViewExposure(Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;)V

    return-void
.end method

.method public final observeViewExposure(Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/bytedance/applog/exposure/ViewExposureData<",
            "Lcom/bytedance/applog/exposure/ViewExposureConfig;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "view"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    const/4 v4, 0x7

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isExposureEnabled()Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v6, 0x0

    if-nez v0, :cond_1

    move-object v8, v6

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lgbsdk/optional/applog/abce;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_2

    .line 2
    iget-object v0, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "[ViewExposure] observe failed: The view context is not Activity."

    :try_start_1
    new-array v6, v5, [Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v4, v2, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_2
    invoke-static/range {p1 .. p1}, Lgbsdk/optional/applog/abaz;->a(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v0, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "[ViewExposure] observe failed: The view is ignored."

    :try_start_2
    new-array v6, v5, [Ljava/lang/Object;

    .line 6
    invoke-interface {v0, v4, v2, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    iget-object v9, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v9, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/WeakHashMap;

    if-nez v9, :cond_4

    new-instance v9, Ljava/util/WeakHashMap;

    invoke-direct {v9}, Ljava/util/WeakHashMap;-><init>()V

    iget-object v10, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v10, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/IExposureConfig;

    move-result-object v11

    check-cast v11, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    goto :goto_1

    :cond_5
    move-object v11, v6

    :goto_1
    const-string v12, "$this$copyWith"

    .line 7
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getAreaRatio()Ljava/lang/Float;

    move-result-object v13

    if-eqz v13, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getAreaRatio()Ljava/lang/Float;

    move-result-object v13

    :goto_2
    move-object v14, v13

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    move-result-object v13

    if-eqz v13, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v10}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    move-result-object v13

    :goto_3
    move-object v15, v13

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getStayTriggerTime()J

    move-result-wide v16

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getStayTriggerTime()J

    move-result-wide v16

    :goto_4
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getExposureCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v11

    if-eqz v11, :cond_9

    move-object/from16 v18, v11

    goto :goto_5

    :cond_9
    invoke-virtual {v10}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getExposureCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    move-object/from16 v18, v10

    :goto_5
    move-object v13, v12

    invoke-direct/range {v13 .. v18}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;)V

    .line 8
    new-instance v10, Lcom/bytedance/applog/exposure/ViewExposureData;

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getEventName()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_a
    move-object v11, v6

    :goto_6
    if-eqz v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getProperties()Lorg/json/JSONObject;

    move-result-object v6

    :cond_b
    invoke-direct {v10, v11, v6, v12}, Lcom/bytedance/applog/exposure/ViewExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/exposure/IExposureConfig;)V

    new-instance v6, Lgbsdk/optional/applog/abcg;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0xe

    move-object/from16 v19, v6

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v25}, Lgbsdk/optional/applog/abcg;-><init>(Lcom/bytedance/applog/exposure/ViewExposureData;ZLgbsdk/optional/applog/abfi;JI)V

    invoke-interface {v9, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "$this$enableViewExposureDebugMode"

    .line 9
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_d

    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_c

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    new-instance v7, Lgbsdk/optional/applog/abdz;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v7, v9}, Lgbsdk/optional/applog/abdz;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    new-instance v6, Lgbsdk/optional/applog/abdz;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lgbsdk/optional/applog/abdz;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_d
    invoke-virtual {v1, v8}, Lcom/bytedance/applog/exposure/ViewExposureManager;->checkViewExposureFromActivity$agent_liteChinaRelease(Landroid/app/Activity;)V

    iget-object v6, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lgbsdk/optional/applog/abfg;

    invoke-virtual {v6, v0}, Lgbsdk/optional/applog/abfg;->a(Landroid/view/View;)V

    iget-object v6, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ViewExposure] observe successful, data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", view="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v6, v4, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    :goto_7
    iget-object v0, v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "[ViewExposure] observe failed: InitConfig.exposureEnabled is not true."

    :try_start_3
    new-array v6, v5, [Ljava/lang/Object;

    .line 14
    invoke-interface {v0, v4, v2, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 15
    iget-object v2, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v5, "Run task failed"

    .line 16
    invoke-interface {v2, v4, v5, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_8
    return-void
.end method

.method public final observeViewScroll(Lgbsdk/androidx/recyclerview/widget/RecyclerView;Lcom/bytedance/applog/exposure/ViewExposureData;)V
    .locals 1
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

    invoke-virtual {p0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->a()Lgbsdk/optional/applog/abeq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgbsdk/optional/applog/abeq;->a(Lgbsdk/androidx/recyclerview/widget/RecyclerView;Lcom/bytedance/applog/exposure/ViewExposureData;)V

    return-void
.end method

.method public final observeViewScroll(Lgbsdk/androidx/viewpager/widget/ViewPager;Lcom/bytedance/applog/exposure/ViewExposureData;)V
    .locals 1
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

    invoke-virtual {p0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->a()Lgbsdk/optional/applog/abeq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgbsdk/optional/applog/abeq;->a(Lgbsdk/androidx/viewpager/widget/ViewPager;Lcom/bytedance/applog/exposure/ViewExposureData;)V

    return-void
.end method

.method public final updateExposureCheckStrategy(Lcom/bytedance/applog/exposure/ExposureCheckType;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/optional/applog/ay;

    .line 2
    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/ay;->a(Lcom/bytedance/applog/exposure/ExposureCheckType;)V

    return-void
.end method

.method public final updateViewExposureConfig(Lcom/bytedance/applog/exposure/ViewExposureConfig;)V
    .locals 1

    const-string v0, "viewExposureConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    return-void
.end method
