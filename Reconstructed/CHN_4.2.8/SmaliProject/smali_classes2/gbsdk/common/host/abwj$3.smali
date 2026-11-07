.class public final Lgbsdk/common/host/abwj$3;
.super Ljava/lang/Object;
.source "CloudMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abwj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aKI:Lgbsdk/common/host/abwj;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abwj;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "ran"

    const-string v1, "application/json"

    const-string v2, "?"

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 333
    iget-object v5, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 1046
    iget-object v5, v5, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 333
    invoke-static {v5}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v5

    .line 1072
    iget-object v5, v5, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 333
    invoke-virtual {v5}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result v5

    const-string v6, "ApmInsight"

    if-nez v5, :cond_0

    .line 334
    iget-object v5, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 2046
    iget-wide v7, v5, Lgbsdk/common/host/abwj;->bw:J

    sub-long v7, v3, v7

    const-wide/32 v9, 0x1d4c0

    cmp-long v5, v7, v9

    if-gez v5, :cond_0

    const-string v0, "fetchCommandImmediately too fast. just ignore for this time."

    .line 335
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 340
    :cond_0
    iget-object v5, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 3046
    iput-wide v3, v5, Lgbsdk/common/host/abwj;->bw:J

    .line 343
    :try_start_0
    iget-object v3, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 4046
    iget-object v3, v3, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 344
    invoke-static {v3}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v3

    .line 4072
    iget-object v3, v3, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 344
    invoke-virtual {v3}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getCloudRequestUrls()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 5046
    iget-object v5, v5, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 345
    invoke-static {v5}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v5

    invoke-virtual {v5}, Lgbsdk/common/host/abut;->a()Ljava/util/Map;

    move-result-object v5

    .line 6014
    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_2

    .line 6017
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_2

    .line 6018
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6020
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "400"

    const-string v9, "sdk_version"

    const-string v10, "&"

    const-string v11, "="

    const-string v12, "UTF-8"

    if-eqz v7, :cond_3

    .line 6021
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v12}, Lgbsdk/common/host/abgf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v12}, Lgbsdk/common/host/abgf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 6023
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v12}, Lgbsdk/common/host/abgf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v12}, Lgbsdk/common/host/abgf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6025
    :goto_0
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 6026
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 6027
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6028
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 6029
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 6030
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6031
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lgbsdk/common/host/abgf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6032
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lgbsdk/common/host/abgf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 6034
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lgbsdk/common/host/abgf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6035
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lgbsdk/common/host/abgf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 346
    :cond_6
    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Content-Type"

    .line 347
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Version-Code"

    const-string v7, "1"

    .line 348
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Accept"

    .line 349
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v1, Lgbsdk/common/host/abwi;->b:Ljava/lang/String;

    iget-object v5, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 6046
    iget-object v5, v5, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 350
    invoke-static {v5}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v5

    .line 6072
    iget-object v5, v5, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 350
    invoke-virtual {v5}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lgbsdk/common/host/abwi;->c:Ljava/lang/String;

    iget-object v5, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 7046
    iget-object v5, v5, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 351
    invoke-static {v5}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v5

    .line 7072
    iget-object v5, v5, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 351
    invoke-virtual {v5}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v1, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 7086
    iget-object v1, v1, Lgbsdk/common/host/abwj;->aKH:Lgbsdk/common/host/abgm;

    .line 352
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 353
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/common/host/abwj;->q(Ljava/lang/String;)[B

    move-result-object v5

    .line 352
    invoke-interface {v1, v3, v5, v2}, Lgbsdk/common/host/abgm;->a(Ljava/lang/String;[BLjava/util/Map;)Lgbsdk/common/host/abgj;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 8046
    iget-object v2, v2, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 354
    invoke-static {v2}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 8072
    iget-object v2, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 354
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    new-array v2, v5, [Ljava/lang/String;

    const-string v7, "fetchCommandImmediately: url="

    .line 355
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6, v2}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    if-nez v1, :cond_8

    const-string v0, "fetchCommandImmediately: res null"

    .line 358
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 9029
    :cond_8
    iget v2, v1, Lgbsdk/common/host/abgj;->a:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_11

    .line 362
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    .line 9033
    iget-object v7, v1, Lgbsdk/common/host/abgj;->fT:[B

    .line 362
    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 9046
    iget-object v3, v3, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 363
    invoke-static {v3}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v3

    .line 9072
    iget-object v3, v3, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 363
    invoke-virtual {v3}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_9

    new-array v3, v5, [Ljava/lang/String;

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fetchCommandImmediately: resultMsg="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10037
    :cond_9
    iget-object v1, v1, Lgbsdk/common/host/abgj;->cG:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 368
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 369
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 373
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 374
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 376
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 377
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 378
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    .line 386
    :catchall_0
    :cond_b
    :try_start_3
    sget-object v0, Lgbsdk/common/host/abwi;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 388
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Lgbsdk/common/host/abgg;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 392
    :cond_c
    new-instance v2, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    :cond_d
    :goto_3
    iget-object v0, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 10046
    iget-object v0, v0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 395
    invoke-static {v0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v0

    .line 10072
    iget-object v0, v0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 395
    invoke-virtual {v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "fetchCommandImmediately resultMsg="

    .line 396
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6, v0}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 398
    :cond_e
    invoke-static {v2}, Lgbsdk/common/host/abwj;->m(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const-string v0, "configs"

    .line 401
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 402
    invoke-static {v0}, Lgbsdk/common/host/abwj;->m(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    const-string v1, "cloud_commands"

    .line 405
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 407
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_11

    .line 408
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lgbsdk/common/host/abwj$3;->aKI:Lgbsdk/common/host/abwj;

    .line 10196
    iget-object v3, v2, Lgbsdk/common/host/abwj;->aKC:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lgbsdk/common/host/abwj$2;

    invoke-direct {v5, v2, v1}, Lgbsdk/common/host/abwj$2;-><init>(Lgbsdk/common/host/abwj;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_11
    return-void

    :catch_0
    move-exception v0

    const-string v1, "fetchCommandImmediately error."

    .line 414
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lgbsdk/common/host/abvp;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-void
.end method
