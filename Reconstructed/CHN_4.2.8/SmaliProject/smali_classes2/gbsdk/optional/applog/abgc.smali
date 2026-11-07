.class public Lgbsdk/optional/applog/abgc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Lgbsdk/optional/applog/abfl;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abfl;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abgc;->b:Lgbsdk/optional/applog/abfl;

    iput-object p2, p0, Lgbsdk/optional/applog/abgc;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lgbsdk/optional/applog/abgc;->a:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v2, "appId"

    :try_start_0
    iget-object v3, p0, Lgbsdk/optional/applog/abgc;->b:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->b:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method
