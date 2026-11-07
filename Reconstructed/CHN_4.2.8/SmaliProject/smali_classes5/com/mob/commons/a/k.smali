.class public Lcom/mob/commons/a/k;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 21
    const-string v0, "003+efchef"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "006]efchefeece9d"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/32 v6, 0x278d00

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 14

    .line 28
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getSA()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 30
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/v;->e:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mob/commons/v;->b(Ljava/lang/String;J)J

    move-result-wide v1

    .line 37
    invoke-virtual {p0}, Lcom/mob/commons/a/k;->k()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    cmp-long v1, v5, v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-ltz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_6

    .line 42
    sget-object v6, Lcom/mob/commons/j;->g:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/mob/tools/utils/ResHelper;->readArrayListFromFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 45
    const-string v11, "003dOciee"

    invoke-static {v11}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 46
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 52
    const-string v13, "003d7ciee"

    invoke-static {v13}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v10, v5

    goto :goto_3

    :cond_5
    move v10, v2

    :goto_3
    if-nez v10, :cond_2

    move v1, v5

    :cond_6
    if-eqz v1, :cond_7

    .line 66
    const-string v1, "SALMT"

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/mob/commons/a/k;->a(JLjava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v1, Lcom/mob/commons/j;->g:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/mob/tools/utils/ResHelper;->saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 70
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/v;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v8}, Lcom/mob/commons/v;->a(Ljava/lang/String;J)V

    :cond_7
    return-void
.end method
