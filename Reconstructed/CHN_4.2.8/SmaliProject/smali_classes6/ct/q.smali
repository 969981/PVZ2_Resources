.class public final Lct/q;
.super Ljava/lang/Object;

# interfaces
.implements Lct/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/q$a;
    }
.end annotation


# static fields
.field private static a:Lct/q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lct/q;
    .locals 2

    const-class v0, Lct/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lct/q;->a:Lct/q;

    if-nez v1, :cond_0

    new-instance v1, Lct/q;

    invoke-direct {v1}, Lct/q;-><init>()V

    sput-object v1, Lct/q;->a:Lct/q;

    :cond_0
    sget-object v1, Lct/q;->a:Lct/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lct/aj;)V
    .locals 4

    invoke-static {p0}, Lct/i;->a(Lct/aj;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lct/aj;->z:Ljava/lang/String;

    const-string v2, "B64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lct/aj;->F:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lct/aj;->z:Ljava/lang/String;

    const-string v2, "B73"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lct/aj;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lct/aj;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B65"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lct/aj;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B66"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lct/aj;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B75"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lct/aj;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B67"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lct/aj;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B70"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lct/aj;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B72"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lct/aj;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B74"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lct/aj;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B68"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lct/aj;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->c()V

    invoke-static {}, Lct/am;->k()Lct/am;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lct/am;->a(Landroid/content/Context;)V

    invoke-static {}, Lct/ap;->a()V

    :cond_1
    const-string p0, "B_ACSDK_SDKExt_Result"

    invoke-static {p0, v0}, Lct/ap;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final a(Lct/f;)V
    .locals 5

    invoke-static {}, Lct/ax;->c()V

    new-instance v0, Lct/aj;

    invoke-direct {v0}, Lct/aj;-><init>()V

    iget-object v1, p1, Lct/f;->b:Ljava/lang/String;

    iput-object v1, v0, Lct/aj;->a:Ljava/lang/String;

    iget-object v1, p1, Lct/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lct/aj;->b:Ljava/lang/String;

    iget v1, p1, Lct/f;->d:I

    iput v1, v0, Lct/aj;->c:I

    iget-object v1, p1, Lct/f;->a:Ljava/lang/String;

    iput-object v1, v0, Lct/aj;->d:Ljava/lang/String;

    iget-object v1, p1, Lct/f;->e:Ljava/lang/String;

    iput-object v1, v0, Lct/aj;->e:Ljava/lang/String;

    iget v1, p1, Lct/f;->i:I

    iput v1, v0, Lct/aj;->h:I

    iget v1, v0, Lct/aj;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/aj;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/aj;->f:Ljava/lang/String;

    :goto_0
    iget v1, p1, Lct/f;->j:I

    iput v1, v0, Lct/aj;->i:I

    iget-object v1, p1, Lct/f;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    iput-object v1, v0, Lct/aj;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lct/f;->n:Lct/r;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/aj;->k:Ljava/lang/String;

    iget-boolean v1, p1, Lct/f;->o:Z

    iput v1, v0, Lct/aj;->l:I

    iget v1, p1, Lct/f;->k:I

    iput v1, v0, Lct/aj;->m:I

    iget-object v1, p1, Lct/f;->l:Ljava/lang/String;

    iput-object v1, v0, Lct/aj;->n:Ljava/lang/String;

    iget-object v1, p1, Lct/f;->m:Ljava/lang/String;

    iput-object v1, v0, Lct/aj;->o:Ljava/lang/String;

    iget v1, p1, Lct/f;->p:I

    iput v1, v0, Lct/aj;->p:I

    iget v1, p1, Lct/f;->r:I

    iput v1, v0, Lct/aj;->r:I

    iget v1, p1, Lct/f;->q:I

    iput v1, v0, Lct/aj;->q:I

    iget v1, p1, Lct/f;->s:I

    iput v1, v0, Lct/aj;->s:I

    iget v1, p1, Lct/f;->t:I

    iput v1, v0, Lct/aj;->v:I

    iget-object p1, p1, Lct/f;->f:Ljava/lang/String;

    iput-object p1, v0, Lct/aj;->y:Ljava/lang/String;

    invoke-virtual {v0}, Lct/aj;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->c()V

    new-instance p1, Lct/q$a;

    invoke-direct {p1, v0}, Lct/q$a;-><init>(Lct/aj;)V

    invoke-virtual {p1}, Lct/q$a;->start()V

    return-void
.end method
