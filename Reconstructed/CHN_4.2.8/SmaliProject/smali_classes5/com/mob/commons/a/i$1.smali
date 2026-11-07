.class final Lcom/mob/commons/a/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/i;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private volatile a:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 118
    iput-wide v0, p0, Lcom/mob/commons/a/i$1;->a:J

    return-void
.end method


# virtual methods
.method public a(ZZJ)V
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, -0x1

    .line 125
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz p2, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/mob/commons/a/i$1;->a:J

    .line 124
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v10

    const-class v13, Lcom/mob/commons/a/i;

    .line 125
    new-array v8, v6, [Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    iget-wide v11, v0, Lcom/mob/commons/a/i$1;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v3

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x1

    const-wide/16 v11, 0x0

    .line 124
    invoke-virtual/range {v10 .. v15}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mob/commons/a/i$1;->a:J

    .line 132
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v8

    const-class v11, Lcom/mob/commons/a/i;

    .line 133
    new-array v1, v6, [Ljava/lang/Long;

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v5, v0, Lcom/mob/commons/a/i$1;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    .line 132
    invoke-virtual/range {v8 .. v13}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    cmp-long v1, p3, v1

    if-lez v1, :cond_2

    .line 138
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v8

    const-class v11, Lcom/mob/commons/a/i;

    .line 139
    new-array v1, v6, [Ljava/lang/Long;

    const-wide/16 v9, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v5, v0, Lcom/mob/commons/a/i$1;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x1

    const-wide/16 v9, 0x0

    .line 138
    invoke-virtual/range {v8 .. v13}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method
