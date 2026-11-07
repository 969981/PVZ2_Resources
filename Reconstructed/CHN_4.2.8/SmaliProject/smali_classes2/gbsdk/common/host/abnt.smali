.class public Lgbsdk/common/host/abnt;
.super Ljava/lang/Object;
.source "LogReportManager.java"

# interfaces
.implements Lgbsdk/common/host/aboe;


# instance fields
.field private a:J

.field public b:I

.field public c:I

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field public g:Lorg/json/JSONObject;

.field private volatile h:Z

.field private volatile i:Z

.field private j:J

.field private uv:Lgbsdk/common/host/abns;

.field private uw:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lgbsdk/common/host/abnt;->a:J

    const/16 v0, 0x78

    .line 31
    iput v0, p0, Lgbsdk/common/host/abnt;->b:I

    const/16 v0, 0x64

    .line 32
    iput v0, p0, Lgbsdk/common/host/abnt;->c:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lgbsdk/common/host/abnt;->h:Z

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lgbsdk/common/host/abnt;->i:Z

    .line 52
    iput-object p1, p0, Lgbsdk/common/host/abnt;->f:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Lgbsdk/common/host/abns;->Q(Landroid/content/Context;)Lgbsdk/common/host/abns;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abnt;->uv:Lgbsdk/common/host/abns;

    .line 54
    iput-object p2, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    return-void
.end method

.method private b(Lorg/json/JSONArray;Z)Z
    .locals 2

    const/4 p2, 0x0

    .line 143
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 144
    invoke-static {p1}, Lgbsdk/common/host/abmt;->d(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    const-string v1, "data"

    .line 147
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    iget-object p1, p0, Lgbsdk/common/host/abnt;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string p1, "header"

    .line 149
    iget-object v1, p0, Lgbsdk/common/host/abnt;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    iget-object p1, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgbsdk/common/host/aboi;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    return p2
.end method

.method private g()J
    .locals 2

    .line 69
    iget-object v0, p0, Lgbsdk/common/host/abnt;->uv:Lgbsdk/common/host/abns;

    iget-object v1, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abns;->a(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private i(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abom;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lgbsdk/common/host/abnt;->uv:Lgbsdk/common/host/abns;

    invoke-virtual {v1, v0, p1}, Lgbsdk/common/host/abns;->g(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private q(J)I
    .locals 2

    .line 90
    iget-object v0, p0, Lgbsdk/common/host/abnt;->uv:Lgbsdk/common/host/abns;

    iget-object v1, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lgbsdk/common/host/abns;->b(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 163
    iget-object v0, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/aboj;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lgbsdk/common/host/abnt;->b:I

    .line 164
    iget-object v0, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/aboj;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lgbsdk/common/host/abnt;->c:I

    .line 165
    iget-object v0, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/aboj;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abnt;->g:Lorg/json/JSONObject;

    .line 166
    iget-object v0, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/aboi;->bb(Ljava/lang/String;)Lgbsdk/common/host/abog;

    move-result-object v0

    .line 167
    instance-of v1, v0, Lgbsdk/common/host/abol;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Lgbsdk/common/host/abol;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abol;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 3

    .line 58
    sget-object v0, Lgbsdk/common/host/abod$ab;->uH:Lgbsdk/common/host/abod;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abod;->a(Lgbsdk/common/host/aboe;)V

    .line 59
    iget-object v0, p0, Lgbsdk/common/host/abnt;->e:Ljava/lang/String;

    new-instance v1, Lgbsdk/common/host/abol;

    iget-object v2, p0, Lgbsdk/common/host/abnt;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lgbsdk/common/host/abol;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lgbsdk/common/host/aboi;->a(Ljava/lang/String;Lgbsdk/common/host/abog;)V

    return-void
.end method

.method public a(J)V
    .locals 2

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lgbsdk/common/host/abnt;->h:Z

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/common/host/abnt;->j:J

    .line 209
    iput-wide p1, p0, Lgbsdk/common/host/abnt;->uw:J

    return-void
.end method

.method public a(Z)Z
    .locals 8

    .line 74
    iget-boolean v0, p0, Lgbsdk/common/host/abnt;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lgbsdk/common/host/abnt;->i:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 78
    invoke-direct {p0}, Lgbsdk/common/host/abnt;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_3

    .line 82
    iget p1, p0, Lgbsdk/common/host/abnt;->c:I

    int-to-long v0, p1

    cmp-long p1, v4, v0

    if-gtz p1, :cond_3

    iget-wide v0, p0, Lgbsdk/common/host/abnt;->a:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    iget p1, p0, Lgbsdk/common/host/abnt;->b:I

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 83
    :cond_3
    :goto_0
    iput-wide v2, p0, Lgbsdk/common/host/abnt;->a:J

    .line 84
    invoke-virtual {p0}, Lgbsdk/common/host/abnt;->c()Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public b()I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 95
    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abnt;->q(J)I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 11

    const-string v0, "log_type"

    .line 99
    iget v1, p0, Lgbsdk/common/host/abnt;->c:I

    invoke-direct {p0, v1}, Lgbsdk/common/host/abnt;->i(I)Ljava/util/List;

    move-result-object v1

    .line 100
    invoke-static {v1}, Lgbsdk/common/host/abmw;->l(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 107
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 108
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    :catchall_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgbsdk/common/host/abom;

    .line 112
    iget-wide v8, v7, Lgbsdk/common/host/abom;->a:J

    cmp-long v10, v8, v2

    if-lez v10, :cond_1

    move-wide v2, v8

    .line 116
    :cond_1
    iget-object v10, v7, Lgbsdk/common/host/abom;->e:Ljava/lang/String;

    .line 117
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "log_id"

    .line 120
    invoke-virtual {v7, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "d_s_t"

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "payload"

    .line 124
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :cond_2
    :try_start_2
    invoke-direct {p0, v5, v4}, Lgbsdk/common/host/abnt;->b(Lorg/json/JSONArray;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    invoke-direct {p0, v2, v3}, Lgbsdk/common/host/abnt;->q(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_3
    return v4
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lgbsdk/common/host/abnt;->h:Z

    const-wide/16 v0, 0x0

    .line 217
    iput-wide v0, p0, Lgbsdk/common/host/abnt;->uw:J

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lgbsdk/common/host/abnt;->i:Z

    return-void
.end method

.method public onTimeEvent(J)V
    .locals 5

    .line 45
    iget-wide v0, p0, Lgbsdk/common/host/abnt;->uw:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v2, p0, Lgbsdk/common/host/abnt;->j:J

    sub-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lgbsdk/common/host/abnt;->e()V

    :cond_0
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abnt;->a(Z)Z

    return-void
.end method
