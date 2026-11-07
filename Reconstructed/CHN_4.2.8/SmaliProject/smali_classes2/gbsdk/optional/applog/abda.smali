.class public final Lgbsdk/optional/applog/abda;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abbk;


# instance fields
.field public final a:J

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abda;->b:Ljava/lang/String;

    iput-wide p2, p0, Lgbsdk/optional/applog/abda;->c:J

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lgbsdk/optional/applog/abda;->a:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "api_usage"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abda;->b:Ljava/lang/String;

    const-string v1, "api_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lgbsdk/optional/applog/abda;->c:J

    const-string v2, "api_time"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lgbsdk/optional/applog/abce;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lgbsdk/optional/applog/abda;->a:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "sdk_usage"

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgbsdk/optional/applog/abda;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {p0}, Lgbsdk/optional/applog/abfn$ab;->a(Lgbsdk/optional/applog/abfn;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgbsdk/optional/applog/abda;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Lgbsdk/optional/applog/abce;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "metrics_category"

    const-string v1, "metrics_name"

    const-string v2, "api_name"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
