.class public Lcom/mob/commons/b/a;
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
    .locals 4

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "030Dfige:n=gnfhhifehignBn,hifhgnfhfiIf:fggefmgnglihihiegjgjffhkgihk"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "029@figeDn%gnfhhifehignAnThifhgngjfeLggKgfEknkNfm6f[fhfjfkhkgihk"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "053@fige5n@gnfhhifehign nBhifhgngjfe?gg;gf^knk_fm<fUfhfjfkhkgihkgngjfeQgg%gf:knk6fm:fSfhfjfkhkgihkgjCk7fj8l-fgfiAk"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 9

    .line 21
    new-instance v0, Lcom/mob/commons/b/g$c;

    invoke-direct {v0}, Lcom/mob/commons/b/g$c;-><init>()V

    .line 22
    const-string v1, "004QfeTjEfgPj"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "047;figeHn)gnfhhifehign_n*hifhgngjfeIgg3gf0knk8fmBfSfhfjfkhkgihkgngihkfg<j6glfg4jVgfgifm=fk8fjhjfhfi8k"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    const/4 v6, 0x2

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/g$c;->d:Ljava/lang/String;

    .line 23
    const-string v2, "004YgefhfgQj"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "047%fige*n gnfhhifehign@nIhifhgngjfe-gg-gf!knk5fmHfXfhfjfkhkgihkgngihkfgZj]glfgBjNgfgifm$fk<fjhjfhfi?k"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v1, [Ljava/lang/String;

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    .line 24
    const-string v2, "004lNfhfgIj"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "047VfigeMnGgnfhhifehignFn_hifhgngjfeIggCgf$knk8fm=f?fhfjfkhkgihkgngihkfgLj-glfgRj9gfgifm?fkOfjhjfhfi(k"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    .line 25
    const-string v2, "004_fhfhfg%j"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "0477figeAn^gnfhhifehign;nYhifhgngjfe0ggVgf7knk>fmHf>fhfjfkhkgihkgngihkfg7j%glfgMjGgfgifm(fkLfjhjfhfiIk"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    .line 26
    const-string v2, "011Ofghigjfe=ggHgefj6fkj"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "047Ofige)nSgnfhhifehign0n_hifhgngjfe*gg9gfGknk*fm<fPfhfjfkhkgihkgngihkfg5jWglfgUjQgfgifm%fk%fjhjfhfiWk"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/mob/commons/b/a;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v4

    :cond_0
    iput-boolean v1, v0, Lcom/mob/commons/b/g$c;->a:Z

    return-object v0
.end method
