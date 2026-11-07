.class public final Lcom/apm/insight/log/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apm/insight/log/ILog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/apm/insight/log/a/a;


# direct methods
.method constructor <init>(Lcom/apm/insight/log/a/a;)V
    .locals 0

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p1, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    return-void
.end method


# virtual methods
.method public final asyncFlush()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->b()V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 748
    invoke-static {v0, p1}, Lcom/apm/insight/log/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/apm/insight/log/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 769
    invoke-static {v0, p1}, Lcom/apm/insight/log/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/apm/insight/log/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getFiles(JJ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    mul-long p3, p3, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/apm/insight/log/a/a;->a(JJ)[Ljava/io/File;

    move-result-object p1

    .line 785
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p1, p3

    .line 786
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final getFilesOfAllProcesses(JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    mul-long p1, p1, v3

    mul-long v5, p3, v3

    move-wide v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/apm/insight/log/a/a;->a(Ljava/lang/String;JJ)[Ljava/io/File;

    move-result-object p1

    .line 800
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p1, p3

    .line 801
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final getNativeRef()J
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 755
    invoke-static {v0, p1}, Lcom/apm/insight/log/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/apm/insight/log/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final syncFlush()V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->c()V

    return-void
.end method

.method public final timedSyncFlush(I)V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0, p1}, Lcom/apm/insight/log/a/a;->a(I)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 741
    invoke-static {v0, p1}, Lcom/apm/insight/log/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/apm/insight/log/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 762
    invoke-static {v0, p1}, Lcom/apm/insight/log/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/apm/insight/log/a$b;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/apm/insight/log/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
