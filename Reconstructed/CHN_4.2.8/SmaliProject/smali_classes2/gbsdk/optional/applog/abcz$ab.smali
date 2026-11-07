.class public Lgbsdk/optional/applog/abcz$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abcz;->b(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Lgbsdk/optional/applog/abcz;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abcz;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abcz$ab;->b:Lgbsdk/optional/applog/abcz;

    iput-object p2, p0, Lgbsdk/optional/applog/abcz$ab;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lgbsdk/optional/applog/abcz$ab;->a:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v1, "appId"

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abcz$ab;->b:Lgbsdk/optional/applog/abcz;

    iget-object v2, v2, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method
