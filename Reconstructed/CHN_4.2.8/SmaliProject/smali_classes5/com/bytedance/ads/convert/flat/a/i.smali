.class public Lcom/bytedance/ads/convert/flat/a/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/a/i;->a:Ljava/lang/String;

    const-string v1, "-11128"

    iput-object v1, p0, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/a/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/a/i;->d:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/ads/convert/flat/a/i;->e:I

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/a/i;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/ads/convert/flat/a/i;->g:J

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tk"

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/ads/convert/flat/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "vd"

    :try_start_1
    iget-object v3, p0, Lcom/bytedance/ads/convert/flat/a/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "cr"

    :try_start_2
    iget-object v3, p0, Lcom/bytedance/ads/convert/flat/a/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "err"

    :try_start_3
    iget-object v3, p0, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "sl"

    :try_start_4
    iget v3, p0, Lcom/bytedance/ads/convert/flat/a/i;->e:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "pr"

    :try_start_5
    iget-object v3, p0, Lcom/bytedance/ads/convert/flat/a/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/ads/convert/flat/a/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
