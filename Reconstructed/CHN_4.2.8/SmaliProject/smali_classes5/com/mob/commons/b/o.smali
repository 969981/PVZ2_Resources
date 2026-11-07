.class public Lcom/mob/commons/b/o;
.super Lcom/mob/commons/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 35
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    const-string v1, "012 fige0nRgn*nj:fg\'j7gnXn6hifh"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "033YfigeKnSgnQnjCfg7jXgn3nEhifhgnhiVk[fjBl2fgfiMkMgnijhifhjlgfgj:kQfjWl-fgfiHk"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "032)fige[n]gnhefefmgnBn2hifhgnfhfi@f-fggefmgnhi.fFfhfj2f,gnhiRkYfjMl$fgfiOk"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "025CfigeDnQgnhefefmgnKn1hifhgn.g=fhfjfhInHgn$g[flhhfmfhEnk"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "026:fige,n>gnhefefmgnPn7hifhgn_gUfhfjfhFnDgnfjfefmfgfmhi7kf"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/mob/commons/b/o;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 44
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private k()Z
    .locals 3

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/b/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "012!fige_nXgnGnjHfg7j9gn5n;hifh"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    .line 17
    invoke-direct {p0}, Lcom/mob/commons/b/o;->j()V

    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 19
    const-string v1, "012,figeAn$gn5nj=fg,j?gn,nMhifh"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0339fige>nPgnRnjJfgVj1gn;nNhifhgnhi]kTfj\'l\'fgfi:k4gnijhifhgiEj6gj4k[fj;lGfgfi@k"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "033Wfige6nNgnhefefmgn:n[hifhgnfhfi>fMfggefmgnhefgfmRjf4gegnhi+k%fj9lWfgfiIk"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v1, "025Xfige8n\'gnhefefmgnMnHhifhgn1gZfhfjfh@n=gn>gJflhhfmfhDnk"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 8

    .line 27
    new-instance v0, Lcom/mob/commons/b/g$c;

    invoke-direct {v0}, Lcom/mob/commons/b/g$c;-><init>()V

    .line 28
    const-string v1, "004,gefhfg7j"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "026[figeKn gnhefefmgngffghegnijhifhgiHj8gifm4fk*fjhjfhfi?k"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    const/4 v6, 0x3

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/o;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/mob/commons/b/o;->k()Z

    move-result p1

    iput-boolean p1, v0, Lcom/mob/commons/b/g$c;->a:Z

    return-object v0
.end method
