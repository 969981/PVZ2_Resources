.class public Lgbsdk/optional/applog/abcz$ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Ljava/net/HttpURLConnection;

.field public final synthetic g:Lgbsdk/optional/applog/abcz;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abcz;Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abcz$ac;->g:Lgbsdk/optional/applog/abcz;

    iput-object p2, p0, Lgbsdk/optional/applog/abcz$ac;->a:Ljava/lang/String;

    iput p3, p0, Lgbsdk/optional/applog/abcz$ac;->b:I

    iput-object p4, p0, Lgbsdk/optional/applog/abcz$ac;->c:[B

    iput-object p5, p0, Lgbsdk/optional/applog/abcz$ac;->d:Ljava/lang/String;

    iput-wide p6, p0, Lgbsdk/optional/applog/abcz$ac;->e:J

    iput-object p8, p0, Lgbsdk/optional/applog/abcz$ac;->f:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appId"

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abcz$ac;->g:Lgbsdk/optional/applog/abcz;

    iget-object v2, v2, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "nid"

    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/abcz$ac;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "statusCode"

    :try_start_2
    iget v2, p0, Lgbsdk/optional/applog/abcz$ac;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "responseByte"

    :try_start_3
    iget-object v2, p0, Lgbsdk/optional/applog/abcz$ac;->c:[B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "responseString"

    :try_start_4
    iget-object v2, p0, Lgbsdk/optional/applog/abcz$ac;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "time"

    :try_start_5
    iget-wide v2, p0, Lgbsdk/optional/applog/abcz$ac;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v1, "header"

    :try_start_6
    iget-object v2, p0, Lgbsdk/optional/applog/abcz$ac;->g:Lgbsdk/optional/applog/abcz;

    iget-object v3, p0, Lgbsdk/optional/applog/abcz$ac;->f:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v2, v3}, Lgbsdk/optional/applog/abcz;->a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    return-object v0
.end method
