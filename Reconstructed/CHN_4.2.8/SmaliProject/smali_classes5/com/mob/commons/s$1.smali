.class final Lcom/mob/commons/s$1;
.super Lcom/mob/tools/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/s;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/mob/commons/s$1;->a:Z

    invoke-direct {p0}, Lcom/mob/tools/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 40
    const-string v0, "M-"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "004Diikkjkim"

    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/v;->h:Ljava/lang/String;

    sget-boolean v2, Lcom/mob/commons/n;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/v;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/v;->i:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/commons/v;->b(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 48
    invoke-static {v1}, Lcom/mob/commons/s;->a(I)I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 50
    invoke-static {}, Lcom/mob/commons/s;->g()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/mob/commons/s$1;->a:Z

    invoke-static {v1, v0}, Lcom/mob/commons/s;->a(ZZ)V

    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/mob/commons/s$1;->a:Z

    invoke-static {v2, v0}, Lcom/mob/commons/s;->a(ZZ)V

    .line 57
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/mob/commons/s$1;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "002Afj:k"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "init cfg over. py "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mob/commons/s;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method
