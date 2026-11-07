.class public Lcom/mob/commons/a/l;
.super Lcom/mob/commons/a/c;


# static fields
.field private static c:Lcom/mob/commons/h;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 15
    const-string v1, "p"

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/l;->a(I)V

    .line 17
    invoke-virtual {p0}, Lcom/mob/commons/a/l;->c()V

    return-void
.end method

.method private static declared-synchronized n()Z
    .locals 3

    const-class v0, Lcom/mob/commons/a/l;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/mob/commons/a/l;->c:Lcom/mob/commons/h;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/mob/commons/a/l$1;

    invoke-direct {v1}, Lcom/mob/commons/a/l$1;-><init>()V

    sput-object v1, Lcom/mob/commons/a/l;->c:Lcom/mob/commons/h;

    .line 42
    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/a/l;->c:Lcom/mob/commons/h;

    invoke-virtual {v1, v2}, Lcom/mob/commons/i;->a(Lcom/mob/commons/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 21
    invoke-virtual {p0}, Lcom/mob/commons/a/l;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/mob/commons/a/l;->n()Z

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    const-string v1, "004dCdiNei"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PVMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "008hIdfGdid6deWli"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/a/l;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/mob/commons/d;->a(JLjava/util/HashMap;)V

    return-void
.end method
