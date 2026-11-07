.class public final Lcom/tencent/mm/opensdk/a/f;
.super Ljava/lang/Object;


# instance fields
.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:I

.field public O:I

.field public P:J

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/Long;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/Integer;

.field public aa:Ljava/lang/Integer;

.field public ab:Lorg/json/JSONObject;

.field public appId:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public prepayId:Ljava/lang/String;

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    iput-object v0, p0, Lcom/tencent/mm/opensdk/a/f;->H:Ljava/lang/String;

    const-string v0, "opensdk"

    iput-object v0, p0, Lcom/tencent/mm/opensdk/a/f;->I:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/opensdk/a/f;->O:I

    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "platform"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sys_id"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->I:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "trace_id"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->J:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_id"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_ver"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->K:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "wechat_ver"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->L:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_ver"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->M:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v2, p0, Lcom/tencent/mm/opensdk/a/f;->N:I

    if-lez v2, :cond_0

    const-string v2, "os_api"

    iget v3, p0, Lcom/tencent/mm/opensdk/a/f;->N:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "prepay_id"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->prepayId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "partner_id"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->partnerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_resend"

    iget v3, p0, Lcom/tencent/mm/opensdk/a/f;->O:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/tencent/mm/opensdk/a/f;->P:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-string v2, "ts"

    iget-wide v3, p0, Lcom/tencent/mm/opensdk/a/f;->P:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "command"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "stage"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->R:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "step"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->S:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "outcome"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reason_category"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->U:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reason"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->V:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tencent/mm/opensdk/a/f;->W:Ljava/lang/Long;

    if-eqz v2, :cond_2

    const-string v2, "cost_ms"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->W:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "cost_type"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->X:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tencent/mm/opensdk/a/f;->Z:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    const-string v2, "err_code"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->Z:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/opensdk/a/f;->aa:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    const-string v2, "sys_code"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->aa:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "result"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->result:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ext"

    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/f;->ab:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catch_0
    :catchall_0
    return-object v0
.end method
