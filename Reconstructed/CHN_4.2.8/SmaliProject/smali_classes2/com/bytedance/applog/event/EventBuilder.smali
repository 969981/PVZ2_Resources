.class public Lcom/bytedance/applog/event/EventBuilder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/bdtracker/d;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->d:Lorg/json/JSONObject;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public build()Lgbsdk/optional/applog/abbm;
    .locals 7

    new-instance v6, Lgbsdk/optional/applog/abbm;

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v1, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/bytedance/applog/event/EventBuilder;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgbsdk/optional/applog/abbm;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->c:Ljava/lang/String;

    iput-object v0, v6, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string v3, "EventBuilder build: {}"

    .line 4
    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public setAbSdkVersion(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/event/EventBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/event/EventBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public track()V
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/applog/event/EventBuilder;->build()Lgbsdk/optional/applog/abbm;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "EventBuilder track: "

    .line 2
    invoke-static {v2}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/applog/event/EventBuilder;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-interface {v1, v4, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/bdtracker/d;->receive(Lgbsdk/optional/applog/abfu;)V

    return-void
.end method
