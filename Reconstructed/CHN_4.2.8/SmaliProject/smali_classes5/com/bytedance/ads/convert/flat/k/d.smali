.class public final Lcom/bytedance/ads/convert/flat/k/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Boolean;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Long;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/k/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/k/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ads/convert/flat/k/d;->c:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/bytedance/ads/convert/flat/k/d;->d:Ljava/lang/Long;

    iput-object p5, p0, Lcom/bytedance/ads/convert/flat/k/d;->e:Ljava/lang/Long;

    iput-object p6, p0, Lcom/bytedance/ads/convert/flat/k/d;->f:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/bytedance/ads/convert/flat/k/d;->g:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/k/d;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/k/d;->b:Ljava/lang/String;

    const-string v2, "req_id"

    invoke-static {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/k/d;->c:Ljava/lang/Boolean;

    const-string v2, "is_track_limited"

    invoke-static {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/k/d;->d:Ljava/lang/Long;

    const-string v2, "take_ms"

    invoke-static {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/k/d;->e:Ljava/lang/Long;

    const-string v2, "time"

    invoke-static {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/k/d;->f:Ljava/lang/Integer;

    const-string v2, "query_times"

    invoke-static {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/k/d;->g:Ljava/lang/Long;

    const-string v2, "hw_id_version_code"

    invoke-static {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/k/d;->h:Ljava/lang/String;

    const-string v2, "error_msg"

    invoke-static {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/ads/convert/flat/k/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
