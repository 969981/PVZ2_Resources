.class public final Lct/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lct/aa;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private synthetic e:Lct/w;


# direct methods
.method public constructor <init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lct/ac;->e:Lct/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lct/ac;->a:Lct/aa;

    iput-boolean p3, p0, Lct/ac;->b:Z

    iput-object p4, p0, Lct/ac;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lct/ac;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lct/ac;->a:Lct/aa;

    iget-boolean v1, p0, Lct/ac;->b:Z

    iget-object v2, p0, Lct/ac;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lct/ac;->c:Z

    new-instance v4, Lct/aj;

    invoke-direct {v4}, Lct/aj;-><init>()V

    invoke-static {}, Lct/o;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lct/aj;->a:Ljava/lang/String;

    invoke-static {}, Lct/o;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lct/aj;->b:Ljava/lang/String;

    invoke-static {}, Lct/o;->d()I

    move-result v5

    iput v5, v4, Lct/aj;->c:I

    invoke-static {}, Lct/o;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lct/aj;->d:Ljava/lang/String;

    invoke-static {}, Lct/o;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lct/aj;->e:Ljava/lang/String;

    invoke-static {}, Lct/aw;->c()I

    move-result v5

    iput v5, v4, Lct/aj;->h:I

    iget v5, v4, Lct/aj;->h:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lct/aj;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lct/aj;->f:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lct/aw;->d()I

    move-result v5

    iput v5, v4, Lct/aj;->i:I

    invoke-static {}, Lct/aw;->e()Z

    move-result v5

    iput v5, v4, Lct/aj;->l:I

    if-eqz v0, :cond_1

    iget-object v5, v0, Lct/aa;->b:Ljava/lang/String;

    iput-object v5, v4, Lct/aj;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lct/aa;->a:Lct/r;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lct/aj;->k:Ljava/lang/String;

    iget v5, v0, Lct/aa;->h:I

    iput v5, v4, Lct/aj;->m:I

    iget-object v5, v0, Lct/aa;->o:Ljava/lang/String;

    iput-object v5, v4, Lct/aj;->n:Ljava/lang/String;

    iget-object v5, v0, Lct/aa;->n:Ljava/lang/String;

    iput-object v5, v4, Lct/aj;->o:Ljava/lang/String;

    const/4 v5, 0x0

    iput v5, v4, Lct/aj;->p:I

    iget v7, v0, Lct/aa;->f:I

    iput v7, v4, Lct/aj;->q:I

    iput v5, v4, Lct/aj;->r:I

    iget v5, v0, Lct/aa;->g:I

    iput v5, v4, Lct/aj;->s:I

    iget v5, v0, Lct/aa;->i:I

    iput v5, v4, Lct/aj;->v:I

    iget-wide v7, v0, Lct/aa;->k:J

    iput-wide v7, v4, Lct/aj;->t:J

    iget-object v5, v0, Lct/aa;->m:Ljava/lang/String;

    iput-object v5, v4, Lct/aj;->y:Ljava/lang/String;

    iget-object v5, v0, Lct/aa;->c:Ljava/lang/String;

    iput-object v5, v4, Lct/aj;->z:Ljava/lang/String;

    iget-wide v7, v0, Lct/aa;->l:J

    iput-wide v7, v4, Lct/aj;->u:J

    iget-object v5, v0, Lct/aa;->e:Ljava/lang/String;

    iput-object v5, v4, Lct/aj;->F:Ljava/lang/String;

    iget v5, v0, Lct/aa;->j:I

    iput v5, v4, Lct/aj;->w:I

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lct/aa;->q:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lct/aj;->D:Ljava/lang/String;

    iget v0, v0, Lct/aa;->p:I

    iput v0, v4, Lct/aj;->x:I

    xor-int/lit8 v0, v1, 0x1

    iput v0, v4, Lct/aj;->A:I

    xor-int/lit8 v0, v3, 0x1

    iput v0, v4, Lct/aj;->B:I

    sget-boolean v0, Lct/h;->a:Z

    iput v0, v4, Lct/aj;->C:I

    iput-object v2, v4, Lct/aj;->E:Ljava/lang/String;

    invoke-static {}, Lct/q;->a()Lct/q;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lct/q;->a()Lct/q;

    invoke-static {v4}, Lct/q;->a(Lct/aj;)V

    :cond_2
    invoke-static {}, Lct/ax;->c()V

    return-void
.end method
