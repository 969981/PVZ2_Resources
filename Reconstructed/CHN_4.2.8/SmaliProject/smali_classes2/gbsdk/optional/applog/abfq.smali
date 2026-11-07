.class public final Lgbsdk/optional/applog/abfq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/ai$ag;


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abbw;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbw;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abfq;->a:Lgbsdk/optional/applog/abbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lgbsdk/optional/applog/abfu;
    .locals 5

    iget-object v0, p0, Lgbsdk/optional/applog/abfq;->a:Lgbsdk/optional/applog/abbw;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfu;->o()Lgbsdk/optional/applog/abfu;

    move-result-object v0

    check-cast v0, Lgbsdk/optional/applog/abbw;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v2, "$page_duration"

    :try_start_0
    iget-wide v3, v0, Lgbsdk/optional/applog/abbw;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[Navigator] JSON handle failed"

    invoke-interface {v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    new-instance v0, Lgbsdk/optional/applog/abbm;

    const-string v2, "$bav2b_page_leave"

    invoke-direct {v0, v2}, Lgbsdk/optional/applog/abbm;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lgbsdk/optional/applog/abfu;->b(J)V

    .line 1
    iput-object v1, v0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    return-object v0
.end method
