.class final Lcom/tencent/mm/opensdk/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic an:Ljava/lang/String;

.field final synthetic au:Landroid/content/Context;

.field final synthetic ay:Lcom/tencent/mm/opensdk/a/i$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/a/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/opensdk/a/m;->au:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/a/m;->an:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/opensdk/a/m;->ay:Lcom/tencent/mm/opensdk/a/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v0, Lcom/tencent/mm/opensdk/a/i$b;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/a/i$b;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/m;->au:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/m;->an:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/m;->an:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/m;->au:Landroid/content/Context;

    const-string v2, "wx_pay_report_pending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/opensdk/a/i;->b(Landroid/content/SharedPreferences;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/opensdk/a/i;->b(Lorg/json/JSONObject;J)Z

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/opensdk/a/m;->an:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v3, "t"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iput-object v3, v0, Lcom/tencent/mm/opensdk/a/i$b;->J:Ljava/lang/String;

    const-string v3, "s"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/tencent/mm/opensdk/a/i$b;->aq:J

    const-string v3, "p"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/opensdk/a/i$b;->partnerId:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/opensdk/a/m;->an:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pending_map"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store resolve ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicroMsg.SDK.PayReport"

    invoke-static {v2, v1}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/m;->ay:Lcom/tencent/mm/opensdk/a/i$a;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/a/i$a;->a(Lcom/tencent/mm/opensdk/a/i$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method
