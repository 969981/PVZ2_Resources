.class public Lgbsdk/optional/applog/abdj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abdj$ac;
    }
.end annotation


# instance fields
.field public final a:Lgbsdk/optional/applog/abbj;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgbsdk/optional/applog/abdj$ac;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abdj;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abdj;->d:Ljava/util/Set;

    const-string v0, ""

    iput-object v0, p0, Lgbsdk/optional/applog/abdj;->e:Ljava/lang/String;

    iput-object p1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bd_tracker_profile:"

    invoke-static {v1}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abdj;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(ILgbsdk/optional/applog/abdj$ac;)V
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 9
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/d;->x:Z

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final a(Lgbsdk/optional/applog/abdj$ac;)V
    .locals 3

    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lgbsdk/optional/applog/abao;

    const-string v1, "__profile_"

    invoke-static {v1}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lgbsdk/optional/applog/abdj$ac;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lgbsdk/optional/applog/abdj$ac;->b:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lgbsdk/optional/applog/abao;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abbj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v2, v1, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 2
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 3
    invoke-virtual {v2, v1, v0, p1}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfu;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v2, v1, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 5
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    invoke-virtual {v2, v1, v0}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/applog/IAppLogInstance;Lgbsdk/optional/applog/abfu;)V

    :goto_0
    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v1, v0}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/abfu;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abbj;->c()Lgbsdk/optional/applog/av;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lgbsdk/optional/applog/av;->c:Lgbsdk/optional/applog/an;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/an;->a(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lgbsdk/optional/applog/abdj;->b:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final a(Ljava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 12
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 14
    new-instance v1, Lgbsdk/optional/applog/abdj$ab;

    invoke-direct {v1, p0, p1, v0, p2}, Lgbsdk/optional/applog/abdj$ab;-><init>(Lgbsdk/optional/applog/abdj;Ljava/util/Set;Ljava/lang/String;Z)V

    const-string p1, "event_upload_eid"

    invoke-static {p1, v1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lgbsdk/optional/applog/abdj$ac;

    const-string v1, "set"

    invoke-direct {v0, v1, p1}, Lgbsdk/optional/applog/abdj$ac;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/16 p1, 0x64

    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abdj;->a(ILgbsdk/optional/applog/abdj$ac;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lgbsdk/optional/applog/abdj$ac;

    const-string v1, "set_once"

    invoke-direct {v0, v1, p1}, Lgbsdk/optional/applog/abdj$ac;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abdj;->a(ILgbsdk/optional/applog/abdj$ac;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lgbsdk/optional/applog/abdj$ac;

    const-string v1, "increment"

    invoke-direct {v0, v1, p1}, Lgbsdk/optional/applog/abdj$ac;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/16 p1, 0x67

    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abdj;->a(ILgbsdk/optional/applog/abdj$ac;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lgbsdk/optional/applog/abdj$ac;

    const-string v1, "unset"

    invoke-direct {v0, v1, p1}, Lgbsdk/optional/applog/abdj$ac;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/16 p1, 0x68

    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abdj;->a(ILgbsdk/optional/applog/abdj$ac;)V

    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lgbsdk/optional/applog/abdj$ac;

    const-string v1, "append"

    invoke-direct {v0, v1, p1}, Lgbsdk/optional/applog/abdj$ac;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/16 p1, 0x69

    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abdj;->a(ILgbsdk/optional/applog/abdj$ac;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    const-string v0, "ssid"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 1
    :pswitch_1
    iget-object p1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    iget-object v1, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v3, [Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 6
    invoke-virtual {p1}, Lgbsdk/optional/applog/abfy;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    const-string p1, "Handle flush with dr state:{}"

    invoke-interface {v1, v2, p1, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 7
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 8
    invoke-virtual {p1}, Lgbsdk/optional/applog/abfy;->n()I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abbj;->c()Lgbsdk/optional/applog/av;

    move-result-object p1

    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 9
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Lgbsdk/optional/applog/av;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 12
    iget-object v9, v9, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 13
    invoke-virtual {v9}, Lcom/bytedance/bdtracker/d;->getHeader()Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v8, v9}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "user_unique_id"

    :try_start_1
    invoke-static {v6}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgbsdk/optional/applog/abfu;

    invoke-virtual {v10}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v11, v10, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    invoke-static {v11}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v10, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    invoke-virtual {v8, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v10, v10, Lgbsdk/optional/applog/abfu;->E:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v9, v8}, Lgbsdk/optional/applog/abbj;->a(Lorg/json/JSONObject;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v5, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 14
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "Register to get ssid by temp header failed."

    :try_start_2
    new-array v7, v4, [Ljava/lang/Object;

    .line 16
    invoke-interface {v5, v2, v6, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v9, "event_v3"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "magic_tag"

    const-string v9, "ss_app_log"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "header"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "time_sync"

    :try_start_3
    sget-object v8, Lgbsdk/optional/applog/abcz;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, "local_time"

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v7, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v7}, Lgbsdk/optional/applog/abbj;->c()Lgbsdk/optional/applog/av;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v7, v8}, Lgbsdk/optional/applog/av;->b(Ljava/util/List;)V

    new-array v7, v3, [Ljava/lang/String;

    iget-object v8, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v8}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 17
    iget-object v8, v8, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 18
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 19
    iget-object v9, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 20
    iget-object v9, v9, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 21
    invoke-virtual {v8, v7, v6, v9}, Lgbsdk/optional/applog/abcz;->a([Ljava/lang/String;Lorg/json/JSONObject;Lgbsdk/optional/applog/abfl;)I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v6}, Lgbsdk/optional/applog/abbj;->c()Lgbsdk/optional/applog/av;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v6, v5}, Lgbsdk/optional/applog/av;->c(Ljava/util/List;)V

    invoke-virtual {p0, v1, v4}, Lgbsdk/optional/applog/abdj;->a(Ljava/util/Set;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v1, v3}, Lgbsdk/optional/applog/abdj;->a(Ljava/util/Set;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 22
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 23
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "Flush failed"

    .line 24
    invoke-interface {v6, v2, v8, v5, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v4}, Lgbsdk/optional/applog/abdj;->a(Ljava/util/Set;Z)V

    goto/16 :goto_0

    .line 25
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abdj$ac;

    .line 26
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 27
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 28
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string v4, "Handle append:{}"

    .line 29
    invoke-interface {v0, v2, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abdj;->a(Lgbsdk/optional/applog/abdj$ac;)V

    goto/16 :goto_8

    .line 30
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abdj$ac;

    .line 31
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 32
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 33
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string v4, "Handle unset:{}"

    .line 34
    invoke-interface {v0, v2, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abdj;->a(Lgbsdk/optional/applog/abdj$ac;)V

    goto/16 :goto_8

    .line 35
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abdj$ac;

    .line 36
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 37
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 38
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string v4, "Handle increment:{}"

    .line 39
    invoke-interface {v0, v2, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abdj;->a(Lgbsdk/optional/applog/abdj$ac;)V

    goto/16 :goto_8

    .line 40
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abdj$ac;

    .line 41
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 42
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 43
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string v5, "Handle setOnce:{}"

    .line 44
    invoke-interface {v0, v2, v5, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 45
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 46
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 47
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 48
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/optional/applog/abdj;->e:Ljava/lang/String;

    iget-object v1, p1, Lgbsdk/optional/applog/abdj$ac;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lgbsdk/optional/applog/abdj;->d:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v5, 0x0

    :cond_8
    iget-object v7, p0, Lgbsdk/optional/applog/abdj;->d:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    if-nez v5, :cond_10

    :cond_a
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 49
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 50
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "invoke profile set once."

    .line 51
    invoke-interface {v0, v2, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abdj;->a(Lgbsdk/optional/applog/abdj$ac;)V

    goto/16 :goto_8

    .line 52
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abdj$ac;

    .line 53
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 54
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 55
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string v5, "Handle set:{}"

    .line 56
    invoke-interface {v0, v2, v5, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->e:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 57
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 58
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 59
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 60
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/optional/applog/abdj;->e:Ljava/lang/String;

    iget-object v1, p1, Lgbsdk/optional/applog/abdj$ac;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lgbsdk/optional/applog/abdj;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lgbsdk/optional/applog/abdj;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lgbsdk/optional/applog/abdj;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgbsdk/optional/applog/abdj$ac;

    if-eqz v7, :cond_d

    :try_start_5
    iget-object v8, p1, Lgbsdk/optional/applog/abdj$ac;->b:Lorg/json/JSONObject;

    iget-object v7, v7, Lgbsdk/optional/applog/abdj$ac;->b:Lorg/json/JSONObject;

    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v7, :cond_d

    goto :goto_6

    :catchall_1
    move-exception v7

    iget-object v8, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 61
    iget-object v8, v8, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 62
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "JSON handle failed"

    .line 63
    invoke-interface {v8, v2, v10, v7, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v5, 0x0

    :cond_d
    :goto_7
    iget-object v7, p0, Lgbsdk/optional/applog/abdj;->c:Ljava/util/Map;

    invoke-interface {v7, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    if-eqz v0, :cond_f

    if-nez v5, :cond_10

    :cond_f
    iget-object v0, p0, Lgbsdk/optional/applog/abdj;->a:Lgbsdk/optional/applog/abbj;

    .line 64
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 65
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "invoke profile set."

    .line 66
    invoke-interface {v0, v2, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abdj;->a(Lgbsdk/optional/applog/abdj$ac;)V

    :cond_10
    :goto_8
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
