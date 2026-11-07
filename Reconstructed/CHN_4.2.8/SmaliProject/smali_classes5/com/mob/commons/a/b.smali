.class public Lcom/mob/commons/a/b;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 14
    const-string v0, "002Pebef"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "0057ebefeece[d"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/32 v6, 0x15180

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    .line 15
    invoke-virtual {p0}, Lcom/mob/commons/a/b;->c()V

    return-void
.end method

.method private n()V
    .locals 10

    .line 32
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/4 v1, -0x1

    .line 35
    :try_start_0
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v2, v1

    .line 39
    :goto_0
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCellLac()I

    move-result v3

    .line 40
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCellId()I

    move-result v4

    .line 41
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPsc()I

    move-result v5

    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v4, v1, :cond_0

    .line 44
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 45
    const-string v7, "003Bdccecf"

    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v3, "004(cfBhXdcdc"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v5, v1, :cond_1

    .line 48
    const-string v3, "003d[efcf"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 53
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaBid()I

    move-result v3

    .line 54
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaSid()I

    move-result v4

    .line 55
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaNid()I

    move-result v5

    .line 56
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaLat()I

    move-result v7

    .line 57
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaLon()I

    move-result v8

    if-eq v2, v1, :cond_4

    if-eq v3, v1, :cond_4

    if-eq v4, v1, :cond_4

    if-eq v5, v1, :cond_4

    if-nez v6, :cond_2

    .line 60
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 62
    :cond_2
    const-string v9, "003KebcdQg"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v3, "003(efcdJg"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "0039cjcdDg"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v7, v1, :cond_3

    .line 66
    const-string v3, "003Kdcce8c"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eq v8, v1, :cond_4

    .line 69
    const-string v1, "003Edcdbcj"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v6, :cond_6

    .line 74
    const-string v1, "007.cfcecgcgcd!hNcg"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "009!efcdQk\'db(dLcjce=kh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNeighboringCellInfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 78
    const-string v1, "0061cjOh?cecgebch"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_5
    const-string v0, "BSIOMT"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v6, v1}, Lcom/mob/commons/a/b;->a(Ljava/lang/String;Ljava/util/HashMap;Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/a/b;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected b()V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/mob/commons/a/b;->k()J

    move-result-wide v0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/b;->a(J)V

    return-void
.end method
