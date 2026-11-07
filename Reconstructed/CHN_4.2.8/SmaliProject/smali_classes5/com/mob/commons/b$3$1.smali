.class Lcom/mob/commons/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b$3;


# direct methods
.method constructor <init>(Lcom/mob/commons/b$3;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 1

    .line 453
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->n()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 454
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    iget-object v0, v0, Lcom/mob/commons/b$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/b;->c(Ljava/lang/String;)V

    .line 455
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 457
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
