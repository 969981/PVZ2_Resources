.class public Lcom/bytedance/ttnet/utils/RetrofitUtils;
.super Ljava/lang/Object;
.source "RetrofitUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttnet/utils/RetrofitUtils$ad;,
        Lcom/bytedance/ttnet/utils/RetrofitUtils$ab;,
        Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:I = 0x3a98

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json; charset=utf-8"

.field public static final HNAME_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HNAME_ETAG:Ljava/lang/String; = "ETag"

.field public static final HNAME_IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final HNAME_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HNAME_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final IO_TIMEOUT:I = 0x3a98

.field public static final PNAME_REMOTE_ADDRESS:Ljava/lang/String; = "x-net-info.remoteaddr"

.field private static final TAG:Ljava/lang/String; = "RetrofitUtils"

.field private static volatile sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static sOKRetrofitCache:Lgbsdk/common/host/abld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abld<",
            "Ljava/lang/String;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private static sRetrofitCache:Lgbsdk/common/host/abld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abld<",
            "Ljava/lang/String;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 448
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 451
    sget-object v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lcom/bytedance/retrofit2/Retrofit;->setCommonInterceptor(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 522
    new-instance v0, Lgbsdk/common/host/abld;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lgbsdk/common/host/abld;-><init>(I)V

    sput-object v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sRetrofitCache:Lgbsdk/common/host/abld;

    .line 591
    new-instance v0, Lgbsdk/common/host/abld;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abld;-><init>(I)V

    sput-object v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sOKRetrofitCache:Lgbsdk/common/host/abld;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCacheValidationHeaders(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lcom/bytedance/retrofit2/client/Header;

    const-string v1, "If-None-Match"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    invoke-static {p2}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 369
    new-instance p1, Lcom/bytedance/retrofit2/client/Header;

    const-string v0, "If-Modified-Since"

    invoke-direct {p1, v0, p2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static declared-synchronized addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)V
    .locals 2

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 494
    monitor-exit v0

    return-void

    .line 496
    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/ttnet/utils/RetrofitUtils$ad;

    invoke-direct {v1, p0}, Lcom/bytedance/ttnet/utils/RetrofitUtils$ad;-><init>(Lcom/bytedance/retrofit2/intercept/Interceptor;)V

    .line 497
    sget-object p0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 498
    sget-object p0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_1
    sget-object p0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sRetrofitCache:Lgbsdk/common/host/abld;

    invoke-static {p0, v1}, Lgbsdk/common/host/abwk;->a(Lgbsdk/common/host/abld;Lcom/bytedance/retrofit2/intercept/Interceptor;)V

    .line 503
    sget-object p0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sOKRetrofitCache:Lgbsdk/common/host/abld;

    invoke-static {p0, v1}, Lgbsdk/common/host/abwk;->a(Lgbsdk/common/host/abld;Lcom/bytedance/retrofit2/intercept/Interceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createOkRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;Lcom/bytedance/retrofit2/CallAdapter$Factory;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;",
            "Lcom/bytedance/retrofit2/Converter$Factory;",
            "Lcom/bytedance/retrofit2/CallAdapter$Factory;",
            ")",
            "Lcom/bytedance/retrofit2/Retrofit;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    .line 621
    :try_start_0
    new-instance v1, Lcom/bytedance/ttnet/utils/RetrofitUtils$4;

    invoke-direct {v1}, Lcom/bytedance/ttnet/utils/RetrofitUtils$4;-><init>()V

    .line 627
    invoke-static {p0, p1, p2, p3, v1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;Lcom/bytedance/retrofit2/CallAdapter$Factory;Lcom/bytedance/retrofit2/client/Client$Provider;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createOkService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    .line 712
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getOkRetrofit(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0

    .line 713
    invoke-static {p0, p1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createService(Lcom/bytedance/retrofit2/Retrofit;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;Lcom/bytedance/retrofit2/CallAdapter$Factory;Lcom/bytedance/retrofit2/client/Client$Provider;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;",
            "Lcom/bytedance/retrofit2/Converter$Factory;",
            "Lcom/bytedance/retrofit2/CallAdapter$Factory;",
            "Lcom/bytedance/retrofit2/client/Client$Provider;",
            ")",
            "Lcom/bytedance/retrofit2/Retrofit;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 635
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 636
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 639
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 640
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1
    invoke-static {p1, v2, v1, p4, p0}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createRetrofit(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/retrofit2/client/Client$Provider;Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createRetrofit(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/retrofit2/client/Client$Provider;Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/Converter$Factory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/CallAdapter$Factory;",
            ">;",
            "Lcom/bytedance/retrofit2/client/Client$Provider;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/retrofit2/Retrofit;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    if-nez p3, :cond_0

    .line 649
    :try_start_0
    new-instance p3, Lcom/bytedance/ttnet/utils/RetrofitUtils$5;

    invoke-direct {p3}, Lcom/bytedance/ttnet/utils/RetrofitUtils$5;-><init>()V

    .line 656
    :cond_0
    new-instance v1, Lcom/bytedance/retrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lcom/bytedance/retrofit2/Retrofit$Builder;-><init>()V

    .line 657
    invoke-virtual {v1, p4}, Lcom/bytedance/retrofit2/Retrofit$Builder;->setEndpoint(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/bytedance/retrofit2/Retrofit$Builder;->client(Lcom/bytedance/retrofit2/client/Client$Provider;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    move-result-object p3

    new-instance p4, Lgbsdk/common/host/abko;

    invoke-direct {p4}, Lgbsdk/common/host/abko;-><init>()V

    invoke-virtual {p3, p4}, Lcom/bytedance/retrofit2/Retrofit$Builder;->httpExecutor(Ljava/util/concurrent/Executor;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    move-result-object p3

    if-nez p1, :cond_1

    .line 660
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 662
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 663
    invoke-static {}, Lgbsdk/common/host/abkn;->cC()Lgbsdk/common/host/abkn;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bytedance/retrofit2/Converter$Factory;

    .line 666
    invoke-virtual {p3, p4}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addConverterFactory(Lcom/bytedance/retrofit2/Converter$Factory;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 669
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 670
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/retrofit2/CallAdapter$Factory;

    .line 671
    invoke-virtual {p3, p2}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addCallAdapterFactory(Lcom/bytedance/retrofit2/CallAdapter$Factory;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    goto :goto_1

    .line 676
    :cond_4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const/4 p2, 0x0

    if-eqz p0, :cond_8

    .line 677
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_8

    .line 678
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p4, 0x0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    .line 679
    instance-of v2, v1, Lgbsdk/common/host/abws;

    if-eqz v2, :cond_6

    if-nez p4, :cond_5

    .line 681
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x1

    goto :goto_3

    .line 686
    :cond_6
    instance-of v2, v1, Lgbsdk/common/host/abkt;

    if-eqz v2, :cond_7

    goto :goto_2

    .line 689
    :cond_7
    :goto_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const/4 p4, 0x0

    :cond_9
    if-nez p4, :cond_a

    .line 693
    new-instance p0, Lgbsdk/common/host/abws;

    invoke-direct {p0}, Lgbsdk/common/host/abws;-><init>()V

    invoke-interface {p1, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 695
    :cond_a
    sget-object p0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_b

    sget-object p0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-lez p0, :cond_b

    .line 696
    sget-object p0, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 698
    :cond_b
    new-instance p0, Lgbsdk/common/host/abkt;

    invoke-direct {p0}, Lgbsdk/common/host/abkt;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    .line 700
    invoke-virtual {p3, p1}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    goto :goto_4

    .line 702
    :cond_c
    invoke-virtual {p3}, Lcom/bytedance/retrofit2/Retrofit$Builder;->build()Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createService(Lcom/bytedance/retrofit2/Retrofit;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/retrofit2/Retrofit;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 718
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/retrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 720
    monitor-exit v0

    return-object p0
.end method

.method public static declared-synchronized createSsRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;",
            "Lcom/bytedance/retrofit2/Converter$Factory;",
            ")",
            "Lcom/bytedance/retrofit2/Retrofit;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    const/4 v1, 0x0

    .line 547
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createSsRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;Lcom/bytedance/retrofit2/CallAdapter$Factory;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createSsRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;Lcom/bytedance/retrofit2/CallAdapter$Factory;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;",
            "Lcom/bytedance/retrofit2/Converter$Factory;",
            "Lcom/bytedance/retrofit2/CallAdapter$Factory;",
            ")",
            "Lcom/bytedance/retrofit2/Retrofit;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    .line 561
    :try_start_0
    new-instance v1, Lcom/bytedance/ttnet/utils/RetrofitUtils$2;

    invoke-direct {v1}, Lcom/bytedance/ttnet/utils/RetrofitUtils$2;-><init>()V

    .line 567
    invoke-static {p0, p1, p2, p3, v1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;Lcom/bytedance/retrofit2/CallAdapter$Factory;Lcom/bytedance/retrofit2/client/Client$Provider;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createSsService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    .line 707
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getSsRetrofit(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0

    .line 708
    invoke-static {p0, p1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createService(Lcom/bytedance/retrofit2/Retrofit;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createTTNetRetrofit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/Converter$Factory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/CallAdapter$Factory;",
            ">;)",
            "Lcom/bytedance/retrofit2/Retrofit;"
        }
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    .line 582
    :try_start_0
    new-instance v1, Lcom/bytedance/ttnet/utils/RetrofitUtils$3;

    invoke-direct {v1}, Lcom/bytedance/ttnet/utils/RetrofitUtils$3;-><init>()V

    .line 588
    invoke-static {p1, p2, p3, v1, p0}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createRetrofit(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/retrofit2/client/Client$Provider;Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static downloadFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/ablj;Ljava/lang/String;Lgbsdk/common/host/ablb;Ljava/util/List;[Ljava/lang/String;[I)Z
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/ablj<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/ablb;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;[",
            "Ljava/lang/String;",
            "[I)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p7

    move-object/from16 v13, p9

    move-object/from16 v2, p10

    const-string v14, "Content-Type"

    const-string v15, "X-TT-LOGID"

    .line 160
    invoke-static/range {p1 .. p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 163
    :cond_0
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 164
    invoke-static {v1, v9}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->parseUrl(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_1

    return v4

    .line 168
    :cond_1
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 169
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 170
    const-class v3, Lcom/bytedance/ttnet/INetworkApi;

    invoke-static {v5, v3}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createSsService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/bytedance/ttnet/INetworkApi;

    .line 171
    new-instance v12, Lcom/bytedance/ttnet/http/RequestContext;

    invoke-direct {v12}, Lcom/bytedance/ttnet/http/RequestContext;-><init>()V

    .line 172
    iput-boolean v4, v12, Lcom/bytedance/ttnet/http/RequestContext;->is_need_monitor_in_cancel:Z

    const-wide/16 v16, -0x1

    if-eqz v5, :cond_1f

    const/4 v6, 0x0

    const/4 v3, 0x0

    move/from16 v7, p0

    move-object/from16 v10, p8

    move-object v11, v12

    .line 180
    :try_start_0
    invoke-interface/range {v5 .. v11}, Lcom/bytedance/ttnet/INetworkApi;->downloadFile(ZILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)Lcom/bytedance/retrofit2/Call;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v0, :cond_3

    .line 181
    :try_start_1
    iget-boolean v5, v0, Lgbsdk/common/host/ablb;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_3

    .line 309
    :try_start_2
    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v11, :cond_2

    .line 311
    invoke-interface {v11}, Lcom/bytedance/retrofit2/Call;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return v4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    move-object v3, v11

    goto/16 :goto_13

    .line 183
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v5

    invoke-interface {v5}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-nez v5, :cond_5

    .line 309
    :try_start_4
    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v11, :cond_4

    .line 311
    invoke-interface {v11}, Lcom/bytedance/retrofit2/Call;->cancel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return v4

    .line 189
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 191
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCdnConnectionQualitySamplerHook()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v5, :cond_6

    .line 192
    :try_start_6
    invoke-interface {v5, v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;->cdnShouldSampling(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 193
    sget-object v5, Lgbsdk/common/host/abhe$ab;->gq:Lgbsdk/common/host/abhe;

    invoke-virtual {v5}, Lgbsdk/common/host/abhe;->aX()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v5, 0x1

    const/16 v20, 0x1

    goto :goto_2

    :cond_6
    const/16 v20, 0x0

    .line 196
    :goto_2
    :try_start_7
    invoke-interface {v11}, Lcom/bytedance/retrofit2/Call;->execute()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-nez v5, :cond_9

    if-eqz v20, :cond_7

    .line 306
    sget-object v0, Lgbsdk/common/host/abhe$ab;->gq:Lgbsdk/common/host/abhe;

    invoke-virtual {v0}, Lgbsdk/common/host/abhe;->aY()V

    .line 309
    :cond_7
    :try_start_8
    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v11, :cond_8

    .line 311
    invoke-interface {v11}, Lcom/bytedance/retrofit2/Call;->cancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return v4

    .line 201
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 202
    :try_start_a
    invoke-virtual {v5}, Lcom/bytedance/retrofit2/SsResponse;->raw()Lcom/bytedance/retrofit2/client/Response;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/retrofit2/client/Response;->getExtraInfo()Ljava/lang/Object;

    move-result-object v6

    .line 203
    instance-of v7, v6, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v7, :cond_a

    .line 204
    :try_start_b
    check-cast v6, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v8, v6

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    :goto_4
    move-object v3, v11

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v7, v3

    move-object v13, v7

    move-object/from16 v16, v13

    move-object/from16 v21, v16

    :goto_5
    move-object/from16 v26, v12

    move-object/from16 v25, v14

    :goto_6
    move-object v14, v11

    goto/16 :goto_e

    :cond_a
    move-object v8, v3

    :goto_7
    if-eqz v8, :cond_b

    .line 207
    :try_start_c
    iput-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->completeReadResponse:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v7, v3

    move-object/from16 v16, v7

    move-object/from16 v21, v16

    move-object v13, v8

    goto :goto_5

    .line 209
    :cond_b
    :goto_8
    :try_start_d
    invoke-virtual {v5}, Lcom/bytedance/retrofit2/SsResponse;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/retrofit2/mime/TypedInput;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-eqz v6, :cond_c

    .line 211
    :try_start_e
    invoke-interface {v6}, Lcom/bytedance/retrofit2/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v16, v7

    goto :goto_9

    :cond_c
    move-object/from16 v16, v3

    .line 213
    :goto_9
    :try_start_f
    invoke-virtual {v5}, Lcom/bytedance/retrofit2/SsResponse;->headers()Ljava/util/List;

    move-result-object v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 214
    :try_start_10
    invoke-static {v7, v15}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getHeaderValueIgnoreCase(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 215
    :try_start_11
    invoke-static {v7, v14}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getHeaderValueIgnoreCase(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 216
    :try_start_12
    invoke-static {v8, v13, v7, v12, v3}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getOutIp(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;[Ljava/lang/String;Ljava/util/List;Lcom/bytedance/ttnet/http/RequestContext;Ljava/lang/Exception;)V

    .line 217
    invoke-virtual {v5}, Lcom/bytedance/retrofit2/SsResponse;->code()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_13

    if-eqz v6, :cond_13

    .line 219
    invoke-interface {v6}, Lcom/bytedance/retrofit2/mime/TypedInput;->length()J

    move-result-wide v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v2, :cond_d

    .line 220
    :try_start_13
    array-length v3, v2

    if-lez v3, :cond_d

    const/4 v3, 0x0

    .line 221
    aput v3, v2, v3

    const-wide/32 v22, 0x7fffffff

    cmp-long v24, v4, v22

    if-gtz v24, :cond_d

    long-to-int v5, v4

    .line 223
    aput v5, v2, v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v13, v8

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object/from16 v3, v17

    goto :goto_6

    .line 226
    :cond_d
    :goto_a
    :try_start_14
    invoke-interface {v6}, Lcom/bytedance/retrofit2/mime/TypedInput;->length()J

    move-result-wide v3

    .line 228
    new-instance v5, Lcom/bytedance/ttnet/utils/RetrofitUtils$1;

    invoke-direct {v5, v1, v11}, Lcom/bytedance/ttnet/utils/RetrofitUtils$1;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Call;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move-object/from16 v2, v16

    move/from16 v6, p0

    move-object/from16 v22, v7

    move-object/from16 v7, p2

    move-object v13, v8

    move-object/from16 v8, p3

    move-wide/from16 v23, v9

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v25, v14

    move-object v14, v11

    move-object/from16 v11, p6

    move-object/from16 v26, v12

    move-object/from16 v12, p7

    :try_start_15
    invoke-static/range {v2 .. v12}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->stream2File(Ljava/io/InputStream;JLgbsdk/common/host/abjn;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/ablj;Ljava/lang/String;Lgbsdk/common/host/ablb;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 251
    instance-of v0, v14, Lcom/bytedance/retrofit2/IMetricsCollect;

    if-eqz v0, :cond_e

    .line 252
    move-object v11, v14

    check-cast v11, Lcom/bytedance/retrofit2/IMetricsCollect;

    invoke-interface {v11}, Lcom/bytedance/retrofit2/IMetricsCollect;->doCollect()V

    .line 254
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v13, :cond_f

    .line 256
    iput-wide v3, v13, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 257
    invoke-static/range {v21 .. v21}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getContentBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    :cond_f
    sub-long v3, v3, v18

    move-wide/from16 p2, v3

    move-wide/from16 p4, v18

    move-object/from16 p6, p1

    move-object/from16 p7, v17

    move-object/from16 p8, v13

    .line 259
    invoke-static/range {p2 .. p8}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :cond_10
    if-eqz v20, :cond_11

    .line 306
    sget-object v0, Lgbsdk/common/host/abhe$ab;->gq:Lgbsdk/common/host/abhe;

    invoke-virtual {v0}, Lgbsdk/common/host/abhe;->aY()V

    .line 309
    :cond_11
    :try_start_16
    invoke-static/range {v16 .. v16}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v14, :cond_12

    .line 311
    invoke-interface {v14}, Lcom/bytedance/retrofit2/Call;->cancel()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_b
    return v2

    :cond_13
    move-object/from16 v22, v7

    move-object v13, v8

    move-wide/from16 v23, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object v14, v11

    if-ne v3, v5, :cond_14

    if-nez v6, :cond_14

    .line 263
    :try_start_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP TypedInput may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_14
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get url = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exception"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :catch_3
    move-exception v0

    move-object/from16 v3, v17

    move-object/from16 v7, v22

    move-wide/from16 v9, v23

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v22, v7

    move-object v13, v8

    move-wide/from16 v23, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object v14, v11

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v22, v7

    move-object v13, v8

    move-wide/from16 v23, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object v14, v11

    move-object/from16 v21, v3

    :goto_c
    move-object/from16 v3, v17

    goto/16 :goto_e

    :catch_6
    move-exception v0

    move-object/from16 v22, v7

    move-object v13, v8

    move-wide/from16 v23, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object v14, v11

    move-object/from16 v21, v3

    goto :goto_e

    :catchall_7
    move-exception v0

    move-object v14, v11

    goto/16 :goto_10

    :catch_7
    move-exception v0

    move-object v13, v8

    move-wide/from16 v23, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object v14, v11

    move-object v7, v3

    move-object/from16 v21, v7

    goto :goto_e

    :catch_8
    move-exception v0

    move-object v13, v8

    move-wide/from16 v23, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object v14, v11

    move-object v7, v3

    move-object/from16 v16, v7

    goto :goto_d

    :catch_9
    move-exception v0

    move-wide/from16 v23, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object v14, v11

    move-object v7, v3

    move-object v13, v7

    move-object/from16 v16, v13

    :goto_d
    move-object/from16 v21, v16

    goto :goto_e

    :catch_a
    move-exception v0

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    move-object v14, v11

    move-object v7, v3

    move-object v13, v7

    move-object/from16 v21, v13

    move-wide/from16 v9, v16

    move-object/from16 v16, v21

    .line 268
    :goto_e
    :try_start_18
    invoke-static {v3}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 269
    invoke-static {v7, v15}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getHeaderValueIgnoreCase(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_15
    move-object v2, v3

    .line 271
    :goto_f
    invoke-static/range {v21 .. v21}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v3, v25

    .line 272
    invoke-static {v7, v3}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getHeaderValueIgnoreCase(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :cond_16
    if-nez v13, :cond_17

    .line 274
    instance-of v3, v14, Lcom/bytedance/retrofit2/IRequestInfo;

    if-eqz v3, :cond_17

    .line 275
    move-object v11, v14

    check-cast v11, Lcom/bytedance/retrofit2/IRequestInfo;

    invoke-interface {v11}, Lcom/bytedance/retrofit2/IRequestInfo;->getRequestInfo()Ljava/lang/Object;

    move-result-object v3

    .line 276
    instance-of v4, v3, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    if-eqz v4, :cond_17

    .line 277
    check-cast v3, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    move-object v13, v3

    .line 280
    :cond_17
    instance-of v3, v14, Lcom/bytedance/retrofit2/IMetricsCollect;

    if-eqz v3, :cond_18

    .line 281
    move-object v11, v14

    check-cast v11, Lcom/bytedance/retrofit2/IMetricsCollect;

    invoke-interface {v11}, Lcom/bytedance/retrofit2/IMetricsCollect;->doCollect()V

    :cond_18
    move-object/from16 v3, p9

    move-object/from16 v4, v26

    .line 283
    invoke-static {v13, v3, v7, v4, v0}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getOutIp(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;[Ljava/lang/String;Ljava/util/List;Lcom/bytedance/ttnet/http/RequestContext;Ljava/lang/Exception;)V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v13, :cond_1b

    .line 286
    iget-wide v5, v13, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->completeReadResponse:J

    const-wide/16 v7, 0x0

    cmp-long v11, v5, v7

    if-gtz v11, :cond_19

    .line 287
    iput-wide v9, v13, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->completeReadResponse:J

    .line 289
    :cond_19
    iput-wide v3, v13, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 290
    iget-object v5, v13, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    if-eqz v5, :cond_1a

    .line 291
    iget-object v5, v13, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    const-string v6, "ex"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    :cond_1a
    invoke-static/range {v21 .. v21}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getContentBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    :cond_1b
    sub-long v3, v3, v18

    move-wide/from16 p2, v3

    move-wide/from16 p4, v18

    move-object/from16 p6, p1

    move-object/from16 p7, v2

    move-object/from16 p8, v13

    move-object/from16 p9, v0

    .line 295
    invoke-static/range {p2 .. p9}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiError(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/Throwable;)V

    .line 296
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_10

    :catchall_9
    move-exception v0

    move-object v14, v11

    move-object/from16 v16, v3

    :goto_10
    move-object v3, v14

    :goto_11
    move/from16 v4, v20

    goto :goto_13

    :catchall_a
    move-exception v0

    move-object v14, v11

    move-object/from16 v16, v3

    move-object v3, v14

    goto :goto_12

    :catchall_b
    move-exception v0

    move-object/from16 v16, v3

    :goto_12
    const/4 v4, 0x0

    .line 301
    :goto_13
    :try_start_19
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/lang/Exception;

    goto :goto_14

    :cond_1c
    new-instance v1, Ljava/lang/Exception;

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 303
    :goto_14
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :catchall_c
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_1d

    .line 306
    sget-object v0, Lgbsdk/common/host/abhe$ab;->gq:Lgbsdk/common/host/abhe;

    invoke-virtual {v0}, Lgbsdk/common/host/abhe;->aY()V

    .line 309
    :cond_1d
    :try_start_1a
    invoke-static/range {v16 .. v16}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v3, :cond_1e

    .line 311
    invoke-interface {v3}, Lcom/bytedance/retrofit2/Call;->cancel()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    :cond_1e
    :goto_15
    throw v1

    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public static extractMaxAge(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "Cache-Control"

    .line 422
    invoke-static {p0, v2}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getFirstHeader(Ljava/util/List;Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    .line 426
    :cond_1
    :try_start_0
    new-instance v2, Lgbsdk/common/host/abmb;

    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lgbsdk/common/host/abmb;-><init>(Ljava/lang/String;)V

    .line 427
    sget-object p0, Lgbsdk/common/host/abmb$ab;->rO:Lgbsdk/common/host/abmb$ab;

    invoke-virtual {v2, p0}, Lgbsdk/common/host/abmb;->a(Lgbsdk/common/host/abmb$ab;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 429
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-wide v0

    :catch_0
    move-exception p0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extract max-age exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "RetrofitUtils"

    invoke-static {v2, p0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static getEtag(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "ETag"

    .line 396
    invoke-static {p0, v1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getFirstHeader(Ljava/util/List;Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getFirstHeader(Ljava/util/List;Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/retrofit2/client/Header;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 408
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/client/Header;

    .line 412
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getHeaderValueIgnoreCase(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 142
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/retrofit2/client/Header;

    .line 146
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHostAddress(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 126
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\|"

    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 128
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 129
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "RetrofitUtils"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHostAddress remoteIp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    aget-object p0, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public static getLastModified(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "Last-Modified"

    .line 403
    invoke-static {p0, v1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getFirstHeader(Ljava/util/List;Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getOkRetrofit(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    .line 595
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 596
    monitor-exit v0

    return-object v2

    .line 598
    :cond_0
    :try_start_1
    sget-object v1, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sOKRetrofitCache:Lgbsdk/common/host/abld;

    invoke-virtual {v1, p0}, Lgbsdk/common/host/abld;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/Retrofit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 600
    monitor-exit v0

    return-object v1

    .line 602
    :cond_1
    :try_start_2
    invoke-static {p0, v2, v2, v2}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createOkRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;Lcom/bytedance/retrofit2/CallAdapter$Factory;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object v1

    .line 603
    sget-object v2, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sOKRetrofitCache:Lgbsdk/common/host/abld;

    invoke-virtual {v2, p0, v1}, Lgbsdk/common/host/abld;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getOutIp(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;[Ljava/lang/String;Ljava/util/List;Lcom/bytedance/ttnet/http/RequestContext;Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;",
            "Lcom/bytedance/ttnet/http/RequestContext;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 90
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 91
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/client/Header;

    const-string v2, "x-net-info.remoteaddr"

    .line 92
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 98
    iget-object v0, p3, Lcom/bytedance/ttnet/http/RequestContext;->remoteIp:Ljava/lang/String;

    .line 100
    :cond_2
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 101
    invoke-static {p4}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getHostAddress(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_3
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 106
    array-length p2, p1

    if-lez p2, :cond_5

    const/4 p2, 0x0

    .line 107
    aput-object v0, p1, p2

    :cond_5
    if-eqz p0, :cond_6

    .line 110
    iput-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->remoteIp:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz p1, :cond_6

    .line 112
    iget-object p0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iput-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->remoteIp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method public static declared-synchronized getSsRetrofit(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 3

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    .line 525
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 526
    monitor-exit v0

    return-object v2

    .line 528
    :cond_0
    :try_start_1
    sget-object v1, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sRetrofitCache:Lgbsdk/common/host/abld;

    invoke-virtual {v1, p0}, Lgbsdk/common/host/abld;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/Retrofit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 530
    monitor-exit v0

    return-object v1

    .line 532
    :cond_1
    :try_start_2
    invoke-static {p0, v2, v2, v2}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createSsRetrofit(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/Converter$Factory;Lcom/bytedance/retrofit2/CallAdapter$Factory;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object v1

    .line 533
    sget-object v2, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sRetrofitCache:Lgbsdk/common/host/abld;

    invoke-virtual {v2, p0, v1}, Lgbsdk/common/host/abld;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static parseContentType(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 383
    :cond_0
    :try_start_0
    new-instance v1, Lgbsdk/common/host/abkx;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abkx;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Lgbsdk/common/host/abkx;->cA()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "charset"

    .line 385
    invoke-virtual {v1, v2}, Lgbsdk/common/host/abkx;->aL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object p0, v0

    .line 388
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 390
    :goto_1
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static declared-synchronized removeInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)V
    .locals 2

    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 513
    monitor-exit v0

    return-void

    .line 515
    :cond_0
    :try_start_0
    sget-object v1, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 518
    sget-object v1, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sRetrofitCache:Lgbsdk/common/host/abld;

    invoke-static {v1, p0}, Lgbsdk/common/host/abwk;->b(Lgbsdk/common/host/abld;Lcom/bytedance/retrofit2/intercept/Interceptor;)V

    .line 519
    sget-object v1, Lcom/bytedance/ttnet/utils/RetrofitUtils;->sOKRetrofitCache:Lgbsdk/common/host/abld;

    invoke-static {v1, p0}, Lgbsdk/common/host/abwk;->b(Lgbsdk/common/host/abld;Lcom/bytedance/retrofit2/intercept/Interceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setTimeout(Ljava/net/URLConnection;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x3a98

    .line 443
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 444
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_0
    return-void
.end method

.method public static tryCompressData([BLcom/bytedance/ttnet/utils/RetrofitUtils$ac;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;",
            ")",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 325
    :cond_0
    array-length v1, p0

    .line 329
    sget-object v2, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKx:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    const/16 v3, 0x80

    const/16 v4, 0x2000

    if-ne v2, p1, :cond_1

    if-le v1, v3, :cond_1

    .line 330
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 331
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 333
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 341
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string p0, "gzip"

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "RetrofitUtils"

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compress with gzip exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-object v0

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw p0

    .line 343
    :cond_1
    sget-object v2, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKy:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    if-ne v2, p1, :cond_3

    if-le v1, v3, :cond_3

    .line 344
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 345
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 346
    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 347
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    new-array p0, v4, [B

    .line 349
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    const/4 v2, 0x0

    .line 351
    invoke-virtual {p1, p0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 356
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string p0, "deflate"

    goto :goto_1

    :cond_3
    move-object p0, v0

    .line 359
    :goto_1
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
