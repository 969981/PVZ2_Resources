.class final Lcom/mob/commons/e$1;
.super Lcom/mob/tools/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/e;->b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/MobProduct;


# direct methods
.method constructor <init>(Lcom/mob/commons/MobProduct;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mob/commons/e$1;->a:Lcom/mob/commons/MobProduct;

    invoke-direct {p0}, Lcom/mob/tools/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 97
    const-string v0, "002gBcd"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lcom/mob/commons/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x1388

    .line 104
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 105
    invoke-static {}, Lcom/mob/commons/b;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 112
    :catchall_0
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-static {}, Lcom/mob/commons/e;->c()Lcom/mob/commons/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/e$1;->a:Lcom/mob/commons/MobProduct;

    invoke-virtual {v0, v1}, Lcom/mob/commons/a;->a(Lcom/mob/commons/MobProduct;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {v1}, Lcom/mob/commons/e;->a(Z)Z

    :cond_3
    :goto_0
    return-void
.end method
