.class public Lgbsdk/optional/applog/abac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/ISessionObserver;


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/bytedance/applog/ISessionObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abac;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abac;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abac;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onSessionBatchEvent(JLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abac;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/ISessionObserver;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/applog/ISessionObserver;->onSessionBatchEvent(JLjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSessionStart(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abac;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/ISessionObserver;

    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/applog/ISessionObserver;->onSessionStart(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSessionTerminate(JLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abac;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/ISessionObserver;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/applog/ISessionObserver;->onSessionTerminate(JLjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method
