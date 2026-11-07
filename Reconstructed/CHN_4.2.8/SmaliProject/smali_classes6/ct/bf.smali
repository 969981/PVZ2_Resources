.class public final Lct/bf;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field public final a:Lct/be;

.field public b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:J

.field public l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method constructor <init>(Lct/be;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3.2"

    .line 55
    iput-object v0, p0, Lct/bf;->m:Ljava/lang/String;

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lct/bf;->n:Ljava/lang/String;

    const-string v0, "0.3.2"

    .line 72
    iput-object v0, p0, Lct/bf;->o:Ljava/lang/String;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lct/bf;->p:Z

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lct/bf;->q:Z

    .line 87
    iput-boolean v0, p0, Lct/bf;->r:Z

    .line 90
    iput-object p1, p0, Lct/bf;->a:Lct/be;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lct/bf;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0123456789ABCDEF"

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lct/bf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lct/bf;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0123456789ABCDEF"

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lct/bf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lct/bf;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0123456789ABCDEF"

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lct/bf;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lct/bf;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "None"

    :cond_0
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lct/bf;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "None"

    :cond_0
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lct/bf;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "None"

    :cond_0
    return-object v0
.end method
