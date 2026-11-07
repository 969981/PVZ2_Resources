.class public final Lcom/tencent/mm/opensdk/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/opensdk/a/g$a;
    }
.end annotation


# static fields
.field private static volatile ac:Z = true

.field private static volatile ad:Lcom/tencent/mm/opensdk/a/a;

.field private static final ae:Ljava/lang/Object;

.field private static volatile af:Ljava/lang/String;

.field private static volatile ag:Ljava/lang/String;

.field private static volatile ah:I

.field private static volatile ai:Ljava/lang/String;

.field private static final aj:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/tencent/mm/opensdk/a/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/mm/opensdk/a/g;->ae:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static a(Lcom/tencent/mm/opensdk/a/g$a;)J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/opensdk/a/g$a;->ar:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/opensdk/a/f;
    .locals 2

    new-instance v0, Lcom/tencent/mm/opensdk/a/f;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/a/f;-><init>()V

    const-string v1, "android"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->H:Ljava/lang/String;

    const-string v1, "opensdk"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->I:Ljava/lang/String;

    iput-object p3, v0, Lcom/tencent/mm/opensdk/a/f;->J:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/mm/opensdk/a/f;->appId:Ljava/lang/String;

    iput-object p2, v0, Lcom/tencent/mm/opensdk/a/f;->prepayId:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/mm/opensdk/a/f;->Q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/tencent/mm/opensdk/a/f;->P:J

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->e()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mm/opensdk/a/f;->K:Ljava/lang/String;

    sget-object p0, Lcom/tencent/mm/opensdk/a/g;->ai:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/mm/opensdk/a/f;->L:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->f()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mm/opensdk/a/f;->M:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->g()I

    move-result p0

    iput p0, v0, Lcom/tencent/mm/opensdk/a/f;->N:I

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/opensdk/a/g$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/tencent/mm/opensdk/a/g$a;->prepayId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tencent/mm/opensdk/a/g$a;->prepayId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v3, v0, Lcom/tencent/mm/opensdk/a/g$a;->prepayId:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/opensdk/a/g$a;->J:Ljava/lang/String;

    iget-wide v5, v0, Lcom/tencent/mm/opensdk/a/g$a;->aq:J

    iget-object v7, v0, Lcom/tencent/mm/opensdk/a/g$a;->partnerId:Ljava/lang/String;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/tencent/mm/opensdk/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBeforePayLaunch ex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MicroMsg.SDK.PayReport"

    invoke-static {v0, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 3

    const-string v0, "start"

    :try_start_0
    sget-boolean v1, Lcom/tencent/mm/opensdk/a/g;->ac:Z

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const-string v1, "pay"

    goto :goto_0

    :cond_1
    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    const-string v1, "jointpay"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    sget-object p0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/tencent/mm/opensdk/a/g;->b(Landroid/content/Context;)V

    new-instance p0, Lcom/tencent/mm/opensdk/a/g$a;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/tencent/mm/opensdk/a/g$a;-><init>(B)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/opensdk/a/g$a;->J:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/opensdk/a/g$a;->appId:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->Q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->aq:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->ar:J

    instance-of p1, p2, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    if-eqz p1, :cond_4

    check-cast p2, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    iget-object p1, p2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/opensdk/a/g$a;->prepayId:Ljava/lang/String;

    iget-object p1, p2, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/opensdk/a/g$a;->partnerId:Ljava/lang/String;

    :cond_4
    sget-object p1, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/mm/opensdk/a/g;->b(Lcom/tencent/mm/opensdk/a/g$a;)Lcom/tencent/mm/opensdk/a/f;

    move-result-object p0

    const-string p1, "pay_start"

    iput-object p1, p0, Lcom/tencent/mm/opensdk/a/f;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/opensdk/a/f;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/a/g;->b(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onSendReqEnter ex: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MicroMsg.SDK.PayReport"

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    :try_start_0
    sget-boolean v0, Lcom/tencent/mm/opensdk/a/g;->ac:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/mm/opensdk/a/h;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tencent/mm/opensdk/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/opensdk/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/a/i$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onPayResp ex: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MicroMsg.SDK.PayReport"

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/mm/opensdk/a/i$b;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "cancel"

    const-string v7, "fail"

    const-string v8, "success"

    const-string v9, "start"

    const-string v10, "pay_resp"

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/tencent/mm/opensdk/a/g;->b(Landroid/content/Context;)V

    if-eqz v5, :cond_0

    iget-object v12, v5, Lcom/tencent/mm/opensdk/a/i$b;->J:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v5, :cond_1

    iget-wide v13, v5, Lcom/tencent/mm/opensdk/a/i$b;->aq:J

    goto :goto_1

    :cond_1
    const-wide/16 v13, 0x0

    :goto_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-static {v0, v1, v2, v12}, Lcom/tencent/mm/opensdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/opensdk/a/f;

    move-result-object v11

    if-eqz v5, :cond_3

    iget-object v15, v5, Lcom/tencent/mm/opensdk/a/i$b;->partnerId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    iput-object v15, v11, Lcom/tencent/mm/opensdk/a/f;->partnerId:Ljava/lang/String;

    iput-object v10, v11, Lcom/tencent/mm/opensdk/a/f;->R:Ljava/lang/String;

    iput-object v9, v11, Lcom/tencent/mm/opensdk/a/f;->S:Ljava/lang/String;

    iput-object v9, v11, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    invoke-static {v0, v1, v2, v12}, Lcom/tencent/mm/opensdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/opensdk/a/f;

    move-result-object v0

    if-eqz v5, :cond_4

    iget-object v1, v5, Lcom/tencent/mm/opensdk/a/i$b;->partnerId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->partnerId:Ljava/lang/String;

    iput-object v10, v0, Lcom/tencent/mm/opensdk/a/f;->R:Ljava/lang/String;

    const-string v1, "resp_received"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->S:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->Z:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iput-object v8, v0, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    iput-object v8, v0, Lcom/tencent/mm/opensdk/a/f;->result:Ljava/lang/String;

    :goto_5
    const-wide/16 v1, 0x0

    goto :goto_6

    :cond_5
    const/4 v1, -0x2

    if-ne v3, v1, :cond_6

    iput-object v6, v0, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    iput-object v6, v0, Lcom/tencent/mm/opensdk/a/f;->result:Ljava/lang/String;

    const-string v1, "user_cancel"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->V:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iput-object v7, v0, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    iput-object v7, v0, Lcom/tencent/mm/opensdk/a/f;->result:Ljava/lang/String;

    const-string v1, "resp_fail"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->V:Ljava/lang/String;

    const-string v1, "callback_rejected"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->U:Ljava/lang/String;

    goto :goto_5

    :goto_6
    cmp-long v3, v13, v1

    if-lez v3, :cond_7

    iget-wide v5, v0, Lcom/tencent/mm/opensdk/a/f;->P:J

    sub-long/2addr v5, v13

    cmp-long v3, v5, v1

    if-ltz v3, :cond_7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->W:Ljava/lang/Long;

    const-string v1, "e2e"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->X:Ljava/lang/String;

    :cond_7
    const/4 v1, 0x0

    if-eqz v4, :cond_9

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x80

    if-le v3, v5, :cond_8

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_8
    move-object v3, v4

    :goto_7
    const-string v4, "err_str"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v2, v0, Lcom/tencent/mm/opensdk/a/f;->ab:Lorg/json/JSONObject;

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v1}, Lcom/tencent/mm/opensdk/a/g;->b(Ljava/util/List;Z)V

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildAndEmitPayResp ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.SDK.PayReport"

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/opensdk/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/opensdk/a/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/tencent/mm/opensdk/a/g;->b(Lcom/tencent/mm/opensdk/a/g$a;)Lcom/tencent/mm/opensdk/a/f;

    move-result-object v1

    const-string v2, "pay_launch"

    iput-object v2, v1, Lcom/tencent/mm/opensdk/a/f;->R:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/mm/opensdk/a/f;->S:Ljava/lang/String;

    const-string p1, "fail"

    iput-object p1, v1, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    iput-object p2, v1, Lcom/tencent/mm/opensdk/a/f;->Y:Ljava/lang/String;

    iput-object p3, v1, Lcom/tencent/mm/opensdk/a/f;->V:Ljava/lang/String;

    iput-object p4, v1, Lcom/tencent/mm/opensdk/a/f;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/a/g;->a(Lcom/tencent/mm/opensdk/a/g$a;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/mm/opensdk/a/f;->W:Ljava/lang/Long;

    const-string p1, "launch"

    iput-object p1, v1, Lcom/tencent/mm/opensdk/a/f;->X:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/a/g;->a(Lcom/tencent/mm/opensdk/a/g$a;Lcom/tencent/mm/opensdk/a/f;)V

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->d()V

    if-eqz p5, :cond_0

    iget-object p1, v0, Lcom/tencent/mm/opensdk/a/g$a;->prepayId:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/tencent/mm/opensdk/a/g$a;->prepayId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, v0, Lcom/tencent/mm/opensdk/a/g$a;->prepayId:Ljava/lang/String;

    iget-object p2, v0, Lcom/tencent/mm/opensdk/a/g$a;->J:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/opensdk/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    const-string p1, "MicroMsg.SDK.PayReport"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onLaunchFail ex: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    sget-object p1, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    throw p0
.end method

.method private static a(Lcom/tencent/mm/opensdk/a/g$a;Lcom/tencent/mm/opensdk/a/f;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-boolean v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->as:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->as:Z

    invoke-static {p0}, Lcom/tencent/mm/opensdk/a/g;->b(Lcom/tencent/mm/opensdk/a/g$a;)Lcom/tencent/mm/opensdk/a/f;

    move-result-object p0

    const-string v1, "pay_launch"

    iput-object v1, p0, Lcom/tencent/mm/opensdk/a/f;->R:Ljava/lang/String;

    const-string v1, "start"

    iput-object v1, p0, Lcom/tencent/mm/opensdk/a/f;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/tencent/mm/opensdk/a/g;->b(Ljava/util/List;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/opensdk/a/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    sget-object p0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/tencent/mm/opensdk/a/g;->b(Lcom/tencent/mm/opensdk/a/g$a;)Lcom/tencent/mm/opensdk/a/f;

    move-result-object v1

    const-string v2, "pay_launch"

    iput-object v2, v1, Lcom/tencent/mm/opensdk/a/f;->R:Ljava/lang/String;

    iput-object p0, v1, Lcom/tencent/mm/opensdk/a/f;->S:Ljava/lang/String;

    const-string p0, "success"

    iput-object p0, v1, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/mm/opensdk/a/f;->Y:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/a/g;->a(Lcom/tencent/mm/opensdk/a/g$a;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/mm/opensdk/a/f;->W:Ljava/lang/Long;

    const-string p0, "launch"

    iput-object p0, v1, Lcom/tencent/mm/opensdk/a/f;->X:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/a/g;->a(Lcom/tencent/mm/opensdk/a/g$a;Lcom/tencent/mm/opensdk/a/f;)V

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    const-string p1, "MicroMsg.SDK.PayReport"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLaunchSuccess ex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    sget-object p1, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/opensdk/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/opensdk/a/g$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/opensdk/a/g;->b(Lcom/tencent/mm/opensdk/a/g$a;)Lcom/tencent/mm/opensdk/a/f;

    move-result-object v1

    const-string v2, "pay_launch"

    iput-object v2, v1, Lcom/tencent/mm/opensdk/a/f;->R:Ljava/lang/String;

    iput-object p0, v1, Lcom/tencent/mm/opensdk/a/f;->S:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/mm/opensdk/a/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/mm/opensdk/a/f;->T:Ljava/lang/String;

    if-eqz p2, :cond_1

    iput-object p2, v1, Lcom/tencent/mm/opensdk/a/f;->ab:Lorg/json/JSONObject;

    :cond_1
    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/a/g;->a(Lcom/tencent/mm/opensdk/a/g$a;Lcom/tencent/mm/opensdk/a/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onStep ex: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MicroMsg.SDK.PayReport"

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/tencent/mm/opensdk/a/g$a;)Lcom/tencent/mm/opensdk/a/f;
    .locals 3

    new-instance v0, Lcom/tencent/mm/opensdk/a/f;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/a/f;-><init>()V

    const-string v1, "android"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->H:Ljava/lang/String;

    const-string v1, "opensdk"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->J:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->J:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->prepayId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->prepayId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/opensdk/a/g$a;->partnerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/a/f;->partnerId:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/mm/opensdk/a/g$a;->Q:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/mm/opensdk/a/f;->Q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mm/opensdk/a/f;->P:J

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->e()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mm/opensdk/a/f;->K:Ljava/lang/String;

    sget-object p0, Lcom/tencent/mm/opensdk/a/g;->ai:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/mm/opensdk/a/f;->L:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->f()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mm/opensdk/a/f;->M:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->g()I

    move-result p0

    iput p0, v0, Lcom/tencent/mm/opensdk/a/f;->N:I

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->ai:Ljava/lang/String;

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "com.tencent.mm"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :catchall_0
    :cond_1
    sput-object v0, Lcom/tencent/mm/opensdk/a/g;->ai:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private static b(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/mm/opensdk/a/f;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->c()Lcom/tencent/mm/opensdk/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/opensdk/a/a;->a(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "emit ex: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MicroMsg.SDK.PayReport"

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static c()Lcom/tencent/mm/opensdk/a/a;
    .locals 2

    sget-boolean v0, Lcom/tencent/mm/opensdk/a/g;->ac:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->ad:Lcom/tencent/mm/opensdk/a/a;

    if-nez v0, :cond_2

    sget-object v1, Lcom/tencent/mm/opensdk/a/g;->ae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->ad:Lcom/tencent/mm/opensdk/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/opensdk/a/b;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/a/b;-><init>()V

    sput-object v0, Lcom/tencent/mm/opensdk/a/g;->ad:Lcom/tencent/mm/opensdk/a/a;

    :cond_1
    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->ad:Lcom/tencent/mm/opensdk/a/a;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->aj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private static d()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/opensdk/a/g;->c()Lcom/tencent/mm/opensdk/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/a/a;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flush ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.SDK.PayReport"

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->af:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "android 6.8.40"

    sput-object v0, Lcom/tencent/mm/opensdk/a/g;->af:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "degrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "info"

    return-object p0
.end method

.method private static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/mm/opensdk/a/g;->ag:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/tencent/mm/opensdk/a/g;->ag:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static g()I
    .locals 1

    sget v0, Lcom/tencent/mm/opensdk/a/g;->ah:I

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lcom/tencent/mm/opensdk/a/g;->ah:I

    :cond_0
    return v0
.end method
