.class public final Lcom/apm/insight/log/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 485
    iput v0, p0, Lcom/apm/insight/log/a/a$b;->b:I

    .line 486
    iput-boolean v0, p0, Lcom/apm/insight/log/a/a$b;->c:Z

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Lcom/apm/insight/log/a/a$b;->d:Ljava/lang/String;

    .line 488
    iput-object v0, p0, Lcom/apm/insight/log/a/a$b;->e:Ljava/lang/String;

    const/high16 v1, 0x200000

    .line 489
    iput v1, p0, Lcom/apm/insight/log/a/a$b;->f:I

    const/high16 v1, 0x1400000

    .line 490
    iput v1, p0, Lcom/apm/insight/log/a/a$b;->g:I

    const/4 v1, 0x7

    .line 491
    iput v1, p0, Lcom/apm/insight/log/a/a$b;->h:I

    .line 492
    iput-object v0, p0, Lcom/apm/insight/log/a/a$b;->i:Ljava/lang/String;

    const/high16 v1, 0x10000

    .line 493
    iput v1, p0, Lcom/apm/insight/log/a/a$b;->j:I

    const/high16 v1, 0x30000

    .line 494
    iput v1, p0, Lcom/apm/insight/log/a/a$b;->k:I

    .line 495
    iput-object v0, p0, Lcom/apm/insight/log/a/a$b;->l:Ljava/lang/String;

    .line 496
    invoke-static {}, Lcom/apm/insight/log/a/a;->k()I

    move-result v0

    iput v0, p0, Lcom/apm/insight/log/a/a$b;->m:I

    .line 497
    invoke-static {}, Lcom/apm/insight/log/a/a;->l()I

    move-result v0

    iput v0, p0, Lcom/apm/insight/log/a/a$b;->n:I

    .line 498
    invoke-static {}, Lcom/apm/insight/log/a/a;->m()I

    move-result v0

    iput v0, p0, Lcom/apm/insight/log/a/a$b;->o:I

    .line 499
    invoke-static {}, Lcom/apm/insight/log/a/a;->n()I

    move-result v0

    iput v0, p0, Lcom/apm/insight/log/a/a$b;->p:I

    .line 500
    invoke-static {}, Lcom/apm/insight/log/a/a;->o()I

    move-result v0

    iput v0, p0, Lcom/apm/insight/log/a/a$b;->q:I

    .line 501
    invoke-static {}, Lcom/apm/insight/log/a/a;->p()I

    move-result v0

    iput v0, p0, Lcom/apm/insight/log/a/a$b;->r:I

    const-string v0, "44817d17adcfd1bc735c022b368acfe0465c4bdbc5c77ca8efd6b578dad1177a65f83813d3f3da839778719efbb83d982737c55597b1a074f105d828a8163b42"

    .line 502
    iput-object v0, p0, Lcom/apm/insight/log/a/a$b;->s:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 506
    :cond_0
    iput-object p1, p0, Lcom/apm/insight/log/a/a$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 510
    iput p1, p0, Lcom/apm/insight/log/a/a$b;->b:I

    return-object p0
.end method

.method public final a(Lcom/apm/insight/log/a/a$a;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 601
    invoke-virtual {p1}, Lcom/apm/insight/log/a/a$a;->a()I

    move-result p1

    iput p1, p0, Lcom/apm/insight/log/a/a$b;->r:I

    return-object p0
.end method

.method public final a(Lcom/apm/insight/log/a/a$c;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 591
    invoke-virtual {p1}, Lcom/apm/insight/log/a/a$c;->a()I

    move-result p1

    iput p1, p0, Lcom/apm/insight/log/a/a$b;->p:I

    return-object p0
.end method

.method public final a(Lcom/apm/insight/log/a/a$d;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 576
    invoke-virtual {p1}, Lcom/apm/insight/log/a/a$d;->a()I

    move-result p1

    iput p1, p0, Lcom/apm/insight/log/a/a$b;->m:I

    return-object p0
.end method

.method public final a(Lcom/apm/insight/log/a/a$e;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 586
    invoke-virtual {p1}, Lcom/apm/insight/log/a/a$e;->a()I

    move-result p1

    iput p1, p0, Lcom/apm/insight/log/a/a$b;->o:I

    return-object p0
.end method

.method public final a(Lcom/apm/insight/log/a/a$f;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 596
    invoke-virtual {p1}, Lcom/apm/insight/log/a/a$f;->a()I

    move-result p1

    iput p1, p0, Lcom/apm/insight/log/a/a$b;->q:I

    return-object p0
.end method

.method public final a(Lcom/apm/insight/log/a/a$g;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 581
    invoke-virtual {p1}, Lcom/apm/insight/log/a/a$g;->a()I

    move-result p1

    iput p1, p0, Lcom/apm/insight/log/a/a$b;->n:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/apm/insight/log/a/a$b;
    .locals 3

    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-"

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "_"

    .line 524
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 528
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 529
    iput-object p1, p0, Lcom/apm/insight/log/a/a$b;->d:Ljava/lang/String;

    :cond_2
    return-object p0
.end method

.method public final a(Z)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/apm/insight/log/a/a$b;->c:Z

    return-object p0
.end method

.method public final a()Lcom/apm/insight/log/a/a;
    .locals 23

    move-object/from16 v1, p0

    .line 611
    iget-object v0, v1, Lcom/apm/insight/log/a/a$b;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "default"

    .line 612
    iput-object v0, v1, Lcom/apm/insight/log/a/a$b;->d:Ljava/lang/String;

    .line 616
    :cond_0
    invoke-static {}, Lcom/apm/insight/log/a/a;->q()Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 617
    :try_start_0
    invoke-static {}, Lcom/apm/insight/log/a/a;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 618
    iget-object v4, v1, Lcom/apm/insight/log/a/a$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 619
    monitor-exit v2

    return-object v0

    .line 622
    :cond_2
    invoke-static {}, Lcom/apm/insight/log/a/a;->q()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lcom/apm/insight/log/a/a$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    iget-object v0, v1, Lcom/apm/insight/log/a/a$b;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 626
    iget-object v0, v1, Lcom/apm/insight/log/a/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/log/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apm/insight/log/a/a$b;->e:Ljava/lang/String;

    .line 629
    :cond_3
    iget-object v0, v1, Lcom/apm/insight/log/a/a$b;->i:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 630
    iget-object v0, v1, Lcom/apm/insight/log/a/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/log/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apm/insight/log/a/a$b;->i:Ljava/lang/String;

    .line 633
    :cond_4
    iget-object v0, v1, Lcom/apm/insight/log/a/a$b;->l:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 634
    iget-object v0, v1, Lcom/apm/insight/log/a/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/log/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apm/insight/log/a/a$b;->l:Ljava/lang/String;

    .line 638
    :cond_5
    iget v0, v1, Lcom/apm/insight/log/a/a$b;->j:I

    const/16 v2, 0x1000

    div-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0xc

    iput v0, v1, Lcom/apm/insight/log/a/a$b;->j:I

    .line 639
    iget v3, v1, Lcom/apm/insight/log/a/a$b;->k:I

    div-int/2addr v3, v2

    shl-int/lit8 v3, v3, 0xc

    iput v3, v1, Lcom/apm/insight/log/a/a$b;->k:I

    if-ge v0, v2, :cond_6

    .line 641
    iput v2, v1, Lcom/apm/insight/log/a/a$b;->j:I

    .line 643
    :cond_6
    iget v0, v1, Lcom/apm/insight/log/a/a$b;->k:I

    iget v2, v1, Lcom/apm/insight/log/a/a$b;->j:I

    shl-int/lit8 v3, v2, 0x1

    if-ge v0, v3, :cond_7

    shl-int/lit8 v0, v2, 0x1

    .line 644
    iput v0, v1, Lcom/apm/insight/log/a/a$b;->k:I

    .line 647
    :cond_7
    new-instance v0, Lcom/apm/insight/log/a/a;

    move-object v2, v0

    iget-object v3, v1, Lcom/apm/insight/log/a/a$b;->a:Landroid/content/Context;

    iget v4, v1, Lcom/apm/insight/log/a/a$b;->b:I

    iget-boolean v5, v1, Lcom/apm/insight/log/a/a$b;->c:Z

    iget-object v6, v1, Lcom/apm/insight/log/a/a$b;->d:Ljava/lang/String;

    iget-object v7, v1, Lcom/apm/insight/log/a/a$b;->e:Ljava/lang/String;

    iget v8, v1, Lcom/apm/insight/log/a/a$b;->f:I

    iget v9, v1, Lcom/apm/insight/log/a/a$b;->g:I

    iget v10, v1, Lcom/apm/insight/log/a/a$b;->h:I

    iget-object v11, v1, Lcom/apm/insight/log/a/a$b;->i:Ljava/lang/String;

    iget v12, v1, Lcom/apm/insight/log/a/a$b;->j:I

    iget v13, v1, Lcom/apm/insight/log/a/a$b;->k:I

    iget-object v14, v1, Lcom/apm/insight/log/a/a$b;->l:Ljava/lang/String;

    iget v15, v1, Lcom/apm/insight/log/a/a$b;->m:I

    move-object/from16 v22, v0

    iget v0, v1, Lcom/apm/insight/log/a/a$b;->n:I

    move/from16 v16, v0

    iget v0, v1, Lcom/apm/insight/log/a/a$b;->o:I

    move/from16 v17, v0

    iget v0, v1, Lcom/apm/insight/log/a/a$b;->p:I

    move/from16 v18, v0

    iget v0, v1, Lcom/apm/insight/log/a/a$b;->q:I

    move/from16 v19, v0

    iget v0, v1, Lcom/apm/insight/log/a/a$b;->r:I

    move/from16 v20, v0

    iget-object v0, v1, Lcom/apm/insight/log/a/a$b;->s:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v2 .. v21}, Lcom/apm/insight/log/a/a;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;IIIIIILjava/lang/String;)V

    return-object v22

    :catchall_0
    move-exception v0

    .line 623
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(I)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 541
    iput p1, p0, Lcom/apm/insight/log/a/a$b;->f:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/apm/insight/log/a/a$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final c(I)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 546
    iput p1, p0, Lcom/apm/insight/log/a/a$b;->g:I

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/apm/insight/log/a/a$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final d(I)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 551
    iput p1, p0, Lcom/apm/insight/log/a/a$b;->h:I

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/apm/insight/log/a/a$b;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final e(I)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 561
    iput p1, p0, Lcom/apm/insight/log/a/a$b;->j:I

    return-object p0
.end method

.method public final f(I)Lcom/apm/insight/log/a/a$b;
    .locals 0

    .line 566
    iput p1, p0, Lcom/apm/insight/log/a/a$b;->k:I

    return-object p0
.end method
