.class public Lgbsdk/optional/applog/abbj$ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abbj;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lgbsdk/optional/applog/abbj;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abbj$ad;->b:Lgbsdk/optional/applog/abbj;

    iput-object p2, p0, Lgbsdk/optional/applog/abbj$ad;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lgbsdk/optional/applog/abbj$ad;->b:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->l:Lgbsdk/optional/applog/abah;

    .line 2
    iget-object v1, p0, Lgbsdk/optional/applog/abbj$ad;->a:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Lgbsdk/optional/applog/abbc;

    invoke-direct {v1}, Lgbsdk/optional/applog/abbc;-><init>()V

    iget-object v2, p0, Lgbsdk/optional/applog/abbj$ad;->b:Lgbsdk/optional/applog/abbj;

    .line 3
    iget-object v3, v2, Lgbsdk/optional/applog/abbj;->l:Lgbsdk/optional/applog/abah;

    .line 4
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 5
    invoke-virtual {v2}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/optional/applog/abce;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    iget-object v3, v3, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d;->getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lcom/bytedance/applog/IHeaderCustomTimelyCallback;->updateHeader(Lorg/json/JSONObject;)V

    .line 7
    :cond_0
    iput-object v2, v1, Lgbsdk/optional/applog/abbc;->g:Lorg/json/JSONObject;

    .line 8
    iget-object v2, p0, Lgbsdk/optional/applog/abbj$ad;->b:Lgbsdk/optional/applog/abbj;

    .line 9
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 11
    iput-object v2, v1, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lgbsdk/optional/applog/abbj$ad;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/optional/applog/abfu;

    instance-of v5, v4, Lgbsdk/optional/applog/abbm;

    if-eqz v5, :cond_1

    check-cast v4, Lgbsdk/optional/applog/abbm;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iput-object v2, v1, Lgbsdk/optional/applog/abbc;->a:Ljava/util/List;

    .line 14
    invoke-virtual {v1}, Lgbsdk/optional/applog/abbc;->g()V

    invoke-virtual {v1}, Lgbsdk/optional/applog/abbc;->h()V

    .line 15
    invoke-virtual {v1}, Lgbsdk/optional/applog/abbc;->j()[B

    move-result-object v2

    iput-object v2, v1, Lgbsdk/optional/applog/abbc;->h:[B

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/abah;->a(Lgbsdk/optional/applog/abbc;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgbsdk/optional/applog/abbj$ad;->b:Lgbsdk/optional/applog/abbj;

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, v0, Lgbsdk/optional/applog/abbj;->D:J

    .line 18
    invoke-virtual {v0}, Lgbsdk/optional/applog/abbj;->c()Lgbsdk/optional/applog/av;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abbj$ad;->a:Ljava/util/List;

    .line 19
    iget-object v0, v0, Lgbsdk/optional/applog/av;->c:Lgbsdk/optional/applog/an;

    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/an;->b(Ljava/util/List;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lgbsdk/optional/applog/abbj$ad;->b:Lgbsdk/optional/applog/abbj;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lgbsdk/optional/applog/abbj;->D:J

    .line 22
    iget-object v0, p0, Lgbsdk/optional/applog/abbj$ad;->b:Lgbsdk/optional/applog/abbj;

    .line 23
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    .line 24
    iget-object v1, p0, Lgbsdk/optional/applog/abbj$ad;->a:Ljava/util/List;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_1
    return-void
.end method
