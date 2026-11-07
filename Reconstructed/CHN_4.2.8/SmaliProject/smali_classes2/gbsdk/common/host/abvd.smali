.class public abstract Lgbsdk/common/host/abvd;
.super Ljava/lang/Object;
.source "BaseMessageHandler.java"

# interfaces
.implements Lgbsdk/common/host/abux;


# static fields
.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected final a(Ljava/lang/String;Lgbsdk/common/host/abwh;)V
    .locals 3

    .line 175
    new-instance v0, Lgbsdk/common/host/abvq;

    iget-object v1, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    .line 8098
    iget-object p2, p2, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 175
    invoke-direct {v0, v1, p2, v2}, Lgbsdk/common/host/abvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 p2, 0x3

    .line 177
    iput p2, v0, Lgbsdk/common/host/abvq;->bd:I

    .line 178
    iput-object p1, v0, Lgbsdk/common/host/abvq;->m:Ljava/lang/String;

    .line 179
    invoke-static {v0}, Lgbsdk/common/host/abuw;->a(Lgbsdk/common/host/abvq;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/util/HashMap;Lgbsdk/common/host/abwh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lgbsdk/common/host/abwh;",
            ")V"
        }
    .end annotation

    .line 203
    new-instance v0, Lgbsdk/common/host/abvq;

    iget-object v1, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    .line 9098
    iget-object p3, p3, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    .line 203
    invoke-direct {v0, v1, p3, p2}, Lgbsdk/common/host/abvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 p2, 0x3

    .line 205
    iput p2, v0, Lgbsdk/common/host/abvq;->bd:I

    .line 206
    iput-object p1, v0, Lgbsdk/common/host/abvq;->m:Ljava/lang/String;

    .line 207
    invoke-static {v0}, Lgbsdk/common/host/abuw;->a(Lgbsdk/common/host/abvq;)V

    return-void
.end method

.method public final declared-synchronized a(Lgbsdk/common/host/abwh;)Z
    .locals 8

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lgbsdk/common/host/abvd;->a()Ljava/lang/String;

    move-result-object v0

    .line 1080
    iget-object v1, p1, Lgbsdk/common/host/abwh;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2098
    :try_start_1
    iget-object v2, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    .line 1131
    sget-object v3, Lgbsdk/common/host/abvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1132
    sget-object v3, Lgbsdk/common/host/abvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x2710

    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 1136
    :cond_1
    sget-object v3, Lgbsdk/common/host/abvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1139
    :cond_2
    sget-object v3, Lgbsdk/common/host/abvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    .line 3083
    iget-object v2, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    invoke-static {v2}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 3098
    iget-object v3, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    .line 3103
    iget-object v2, v2, Lgbsdk/common/host/abut;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 3084
    iget-object v2, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    invoke-static {v2}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 4072
    iget-object v2, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 3084
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/common/host/abvo;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "\u4ea7\u7269\u8d85\u8fc7\u9608\u503c\uff0c\u7b49\u5f85WiFi\u73af\u5883\u6267\u884c"

    .line 3085
    iget-object v3, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lgbsdk/common/host/abuu;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_6

    .line 54
    iget-object v2, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    invoke-static {v2}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 5072
    iget-object v2, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 54
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ApmInsight"

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "start handle message:"

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    :cond_5
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abvd;->b(Lgbsdk/common/host/abwh;)Z

    move-result p1
    :try_end_1
    .catch Lgbsdk/common/host/abvb; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 59
    :cond_6
    :try_start_2
    iget-object v2, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    invoke-static {v2}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 6072
    iget-object v2, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 59
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ApmInsight"

    const-string v3, "checkCmdInterval false: ignored for now."

    .line 60
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Lgbsdk/common/host/abvb; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :cond_7
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "\u7cfb\u7edf\u9519\u8bef\uff1a%s"

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    invoke-static {v2}, Lgbsdk/common/host/abvs;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0, p1}, Lgbsdk/common/host/abvd;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    monitor-exit p0

    return v1

    :catch_1
    move-exception v0

    .line 66
    :try_start_4
    invoke-virtual {v0}, Lgbsdk/common/host/abvb;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgbsdk/common/host/abvd;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final a(Lorg/json/JSONObject;Lgbsdk/common/host/abwh;)Z
    .locals 3

    const-string v0, "wifiOnly"

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    invoke-static {p1}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object p1

    .line 7072
    iget-object p1, p1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 155
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abvo;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 156
    new-instance p1, Lgbsdk/common/host/abvq;

    iget-object v0, p0, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    .line 7098
    iget-object p2, p2, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 156
    invoke-direct {p1, v0, p2, v2}, Lgbsdk/common/host/abvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 158
    iput v1, p1, Lgbsdk/common/host/abvq;->bd:I

    const-string p2, "4G\u73af\u5883\u4e0b\u4e0d\u6267\u884c\u6307\u4ee4"

    .line 159
    iput-object p2, p1, Lgbsdk/common/host/abvq;->m:Ljava/lang/String;

    .line 160
    invoke-static {p1}, Lgbsdk/common/host/abuw;->a(Lgbsdk/common/host/abvq;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public abstract b(Lgbsdk/common/host/abwh;)Z
.end method
