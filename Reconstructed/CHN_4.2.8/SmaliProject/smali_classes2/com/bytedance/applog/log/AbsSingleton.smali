.class public abstract Lcom/bytedance/applog/log/AbsSingleton;
.super Ljava/lang/Object;
.source "AbsSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs abstract create([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final varargs get([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/bytedance/applog/log/AbsSingleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/log/AbsSingleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/bytedance/applog/log/AbsSingleton;->create([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/log/AbsSingleton;->mInstance:Ljava/lang/Object;

    .line 19
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/applog/log/AbsSingleton;->mInstance:Ljava/lang/Object;

    return-object p1
.end method
