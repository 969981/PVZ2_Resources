.class public Lcom/mob/commons/b/f;
.super Lcom/mob/commons/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 2

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "0362ehfdTmLfmedfdEi9efghfmfd7fjHel>ijk_efehEjWfmglhhhdfgfhgjfieefihdhehffhhghd"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v1, "015HehfdKmKfmJdUedeggeSj[effm)d1geef+i"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 8

    .line 24
    const-string v0, "053JehfdZmCfmedfdVi(efghfmfd$fj0el7ijk?efehZj3fmegefZiBfefmgl)fjWelgj-jk\'efeh:j?fh3ij<el_eDefgief[j.eifiRj7ei3k]efeh0j"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v7, Lcom/mob/commons/b/g$c;

    invoke-direct {v7}, Lcom/mob/commons/b/g$c;-><init>()V

    .line 26
    const-string v1, "0049fdegef.i"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/b/f;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    .line 27
    const-string v1, "024Jefghflef7m%efZeXfkIiHfjeiegehekefelgghdeleggdfeVji"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/mob/commons/b/f;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    .line 28
    iget-object p1, v7, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v7, Lcom/mob/commons/b/g$c;->a:Z

    return-object v7
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->i()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
