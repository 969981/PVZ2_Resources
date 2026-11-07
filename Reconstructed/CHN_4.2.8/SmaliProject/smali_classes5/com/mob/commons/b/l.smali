.class public Lcom/mob/commons/b/l;
.super Lcom/mob/commons/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    const-string v1, "035ZcfdbHk:dkefceRkTefcbcjeedkcecj7gQcgdbcdUg6dk6ghi_cdcfEhMcd(g$efUh]cg=iMcdcf7h"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "051<cfdb[k3dkefce6kLefcbcjeedkcecjVg0cgdbcdRgMdkIghiYcdcf$h7cdUg?efHhAcgJi]cdcf^h0dkeh)hi$cdcf1h_dfQgNdg.h$cgEiNcdcf]h"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 26
    :try_start_0
    const-string v2, "052)cfdbLk;dkefceVk efcbcjeedkcecj:gVcgdbcdZgSdk5ghiUcdcf*h%cdJgXefUh]cgGi,cdcfHhRdkdfeh=hi4cdcf,hVdf@g6dg7h\'cgOi3cdcfLh"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 29
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :cond_0
    move v2, v1

    .line 31
    :goto_0
    new-instance v3, Lcom/mob/commons/b/g$c;

    invoke-direct {v3}, Lcom/mob/commons/b/g$c;-><init>()V

    .line 32
    iput-boolean v2, v3, Lcom/mob/commons/b/g$c;->a:Z

    .line 33
    iget-object v2, p0, Lcom/mob/commons/b/l;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mob/commons/b/l;->a:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/mob/commons/b/l;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/commons/b/l;->b:Ljava/lang/String;

    .line 36
    :cond_1
    const-string v2, "004!dbcecdPg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "0524cfdbLk!dkefce:k!efcbcjeedkcecjEg)cgdbcdWg\'dk0ghiBcdcfBhJcdLgUefUhAcgHiNcdcfThSdkdfeh8hiTcdcfChWdfGgIdg-h\'cg:iTcdcf:h"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v1, [Ljava/lang/String;

    move-object v4, p0

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/mob/commons/b/l;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/mob/commons/b/l;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    const-string v2, "004iRcecd=g"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "052RcfdbVkKdkefceQkKefcbcjeedkcecj7gCcgdbcd?g.dkSghi1cdcf.hDcdLg9ef^hPcg8iVcdcf[h,dkdfeh\'hiJcdcfMh.dfNg[dg0hNcg?i]cdcf[h"

    .line 38
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v10, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/commons/b/l;->b:Ljava/lang/String;

    aput-object v2, v10, v1

    const/4 v9, 0x2

    move-object v5, p0

    move-object v7, p1

    .line 37
    invoke-virtual/range {v5 .. v10}, Lcom/mob/commons/b/l;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v3, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/mob/commons/b/l;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "004?cececd1g"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "052VcfdbBkMdkefce@k2efcbcjeedkcecj^gScgdbcd(g[dkVghi$cdcfRhJcd0g-efQhJcg3iNcdcf9hWdkdfehVhi<cdcfNhAdf0g dg?hZcg]iAcdcfPh"

    .line 40
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/mob/commons/b/l;->b:Ljava/lang/String;

    aput-object v0, v9, v1

    const/4 v8, 0x3

    move-object v4, p0

    move-object v6, p1

    .line 39
    invoke-virtual/range {v4 .. v9}, Lcom/mob/commons/b/l;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v3, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    return-object v3
.end method
