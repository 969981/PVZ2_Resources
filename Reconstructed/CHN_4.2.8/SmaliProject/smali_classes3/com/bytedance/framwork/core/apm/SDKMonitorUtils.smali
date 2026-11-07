.class public Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;
.super Ljava/lang/Object;
.source "SDKMonitorUtils.java"


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/framwork/core/apm/SDKMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertReportUrl(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 74
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/monitor/collect/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;
    .locals 3

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    sget-object v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 188
    const-class v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-direct {v1, p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;-><init>(Ljava/lang/String;)V

    .line 191
    sget-object v2, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 195
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;

    return-object p0

    .line 185
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "param \'aid\' is not allowed to assigned empty string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized initMonitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    .locals 8

    const-class v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    .line 124
    :try_start_0
    invoke-static/range {v1 .. v7}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initMonitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    .locals 8

    const-class p5, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter p5

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    .line 128
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;Lcom/apmplus/sdk/event/SDKEventIDynamicParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p5

    throw p0
.end method

.method public static declared-synchronized initMonitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;Lcom/apmplus/sdk/event/SDKEventIDynamicParams;)V
    .locals 2

    const-class p5, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter p5

    if-nez p0, :cond_0

    .line 147
    monitor-exit p5

    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    .line 155
    sget-object v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-virtual {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 156
    monitor-exit p5

    return-void

    .line 158
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ApmInsight"

    const-string v1, "Token can not be null!"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    sget-object v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;

    if-nez v0, :cond_3

    .line 163
    new-instance v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object p2, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {v0, p2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setToken(Ljava/lang/String;)V

    .line 169
    :goto_0
    invoke-virtual {v0, p4}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setDebug(Z)V

    .line 170
    invoke-virtual {v0, p7}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setDynamicParams(Lcom/apmplus/sdk/event/SDKEventIDynamicParams;)V

    .line 171
    sget-object p2, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/util/List;)V

    .line 172
    sget-object p2, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b(Ljava/util/List;)V

    .line 173
    invoke-virtual {v0, p0, p3, p6}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->init(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p5

    return-void

    .line 153
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param \'headerInfo\' is not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param \'aid\' is not allowed to assigned empty string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit p5

    throw p0
.end method

.method public static declared-synchronized initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    .locals 7

    const-class v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 96
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    .locals 7

    const-class v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    .line 107
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    .locals 8

    const-class v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter v0

    :try_start_0
    const-string v3, ""

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 112
    invoke-static/range {v1 .. v7}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setConfigUrl(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lgbsdk/common/host/abnb;->l(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    .line 52
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultReportUrl(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lgbsdk/common/host/abnb;->l(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    sget-object v1, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    .line 66
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
