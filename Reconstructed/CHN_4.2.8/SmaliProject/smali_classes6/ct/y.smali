.class public final Lct/y;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Ljava/util/Map;

.field public i:[B

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Ljava/lang/String;

.field private q:Ljava/util/List;

.field private volatile r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lct/y;->a:Ljava/lang/String;

    iput-object v0, p0, Lct/y;->b:Ljava/lang/String;

    iput-object v0, p0, Lct/y;->c:[I

    const-string v1, ""

    iput-object v1, p0, Lct/y;->d:Ljava/lang/String;

    iput-object v0, p0, Lct/y;->e:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lct/y;->f:Z

    iput-boolean v2, p0, Lct/y;->g:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lct/y;->h:Ljava/util/Map;

    iput-object v0, p0, Lct/y;->i:[B

    const v0, 0x8000

    iput v0, p0, Lct/y;->j:I

    const/16 v0, 0x4e20

    iput v0, p0, Lct/y;->k:I

    const/16 v0, 0x7530

    iput v0, p0, Lct/y;->l:I

    const v0, 0x9c40

    iput v0, p0, Lct/y;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lct/y;->n:I

    iput-boolean v2, p0, Lct/y;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lct/y;->q:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/y;->r:Z

    iput-object v1, p0, Lct/y;->p:Ljava/lang/String;

    iput-object p1, p0, Lct/y;->a:Ljava/lang/String;

    iput-object p2, p0, Lct/y;->c:[I

    if-eqz p2, :cond_0

    aget p1, p2, v0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lct/y;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lct/y;->c:[I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lct/y;->a:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lct/y;->d:Ljava/lang/String;

    iget-object p1, p0, Lct/y;->a:Ljava/lang/String;

    invoke-static {p1}, Lct/ay;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lct/y;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const v0, 0x8000

    iput v0, p0, Lct/y;->j:I

    return-void
.end method

.method public final a(Lct/aa;)V
    .locals 1

    iget-object v0, p0, Lct/y;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lct/y;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/16 v0, 0x4e20

    iput v0, p0, Lct/y;->k:I

    return-void
.end method

.method public final c()V
    .locals 1

    const/16 v0, 0x7530

    iput v0, p0, Lct/y;->l:I

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lct/y;->n:I

    return-void
.end method
