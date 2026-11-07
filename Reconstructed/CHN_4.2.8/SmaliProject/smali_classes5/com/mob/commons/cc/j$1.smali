.class Lcom/mob/commons/cc/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/cc/j;->a(Ljava/util/Map;Z[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Z

.field final synthetic c:Lcom/mob/commons/cc/j;


# direct methods
.method constructor <init>(Lcom/mob/commons/cc/j;Ljava/util/Map;Z)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/mob/commons/cc/j$1;->c:Lcom/mob/commons/cc/j;

    iput-object p2, p0, Lcom/mob/commons/cc/j$1;->a:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/mob/commons/cc/j$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/cc/j$1;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mob/commons/cc/q;

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 216
    new-array p3, v0, [Ljava/lang/Object;

    .line 219
    :cond_0
    iget-boolean v1, p0, Lcom/mob/commons/cc/j$1;->b:Z

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p2, p3}, Lcom/mob/commons/cc/q;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 223
    :cond_1
    :try_start_1
    invoke-virtual {p2, p3}, Lcom/mob/commons/cc/q;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    return-object p1

    :catchall_0
    move-exception p2

    .line 226
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_1
    :cond_3
    move-object p2, p1

    :catchall_2
    if-nez p2, :cond_4

    return-object p1

    .line 233
    :cond_4
    throw p2
.end method
