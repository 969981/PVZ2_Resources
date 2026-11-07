.class public Lgbsdk/optional/applog/abaa$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfu;Ljava/util/List;Z)Lgbsdk/optional/applog/abbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/d;

.field public final synthetic b:Z

.field public final synthetic c:J

.field public final synthetic d:Lgbsdk/optional/applog/abaa;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abaa;Lcom/bytedance/bdtracker/d;ZJ)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abaa$ab;->d:Lgbsdk/optional/applog/abaa;

    iput-object p2, p0, Lgbsdk/optional/applog/abaa$ab;->a:Lcom/bytedance/bdtracker/d;

    iput-boolean p3, p0, Lgbsdk/optional/applog/abaa$ab;->b:Z

    iput-wide p4, p0, Lgbsdk/optional/applog/abaa$ab;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appId"

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abaa$ab;->a:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "sessionId"

    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/abaa$ab;->d:Lgbsdk/optional/applog/abaa;

    .line 3
    iget-object v2, v2, Lgbsdk/optional/applog/abaa;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "isBackground"

    :try_start_2
    iget-boolean v2, p0, Lgbsdk/optional/applog/abaa$ab;->b:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "newLaunch"

    :try_start_3
    iget-wide v4, p0, Lgbsdk/optional/applog/abaa$ab;->c:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    return-object v0
.end method
