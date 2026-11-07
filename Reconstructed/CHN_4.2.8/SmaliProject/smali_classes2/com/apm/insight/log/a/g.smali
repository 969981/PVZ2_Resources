.class public final Lcom/apm/insight/log/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/apm/insight/log/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/apm/insight/log/a/a;->a(J)V

    .line 22
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->a()V

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    return-void
.end method

.method public static a(I)V
    .locals 1

    .line 58
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Lcom/apm/insight/log/a/a;->b(I)V

    :cond_0
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p0, p1, p2}, Lcom/apm/insight/log/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 8

    .line 34
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 35
    invoke-virtual/range {v0 .. v7}, Lcom/apm/insight/log/a/a;->a(ILjava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/apm/insight/log/a/a;)V
    .locals 2

    .line 11
    sput-object p0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/apm/insight/log/a/a;->j()J

    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Lcom/apm/insight/log/a/a;->a(J)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {v0, p0, p1}, Lcom/apm/insight/log/a/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 64
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p0}, Lcom/apm/insight/log/a/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JJ)[Ljava/io/File;
    .locals 7

    .line 101
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide v3, p2

    move-wide v5, p4

    .line 102
    invoke-virtual/range {v0 .. v6}, Lcom/apm/insight/log/a/a;->a(Ljava/lang/String;Ljava/lang/String;JJ)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    return-object p0
.end method

.method public static a(ZJJI)[Ljava/io/File;
    .locals 7

    .line 109
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/apm/insight/log/a/a;->a(ZJJI)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    return-object p0
.end method

.method public static b()V
    .locals 1

    .line 40
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->b()V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-static {v0, p0, p1}, Lcom/apm/insight/log/a/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/apm/insight/log/a/a;->h()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 78
    invoke-static {v0, p0, p1}, Lcom/apm/insight/log/a/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 123
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "default log instance is null"

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 82
    invoke-static {v0, p0, p1}, Lcom/apm/insight/log/a/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()J
    .locals 2

    .line 130
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 86
    invoke-static {v0, p0, p1}, Lcom/apm/insight/log/a/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f()J
    .locals 2

    .line 137
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static g()J
    .locals 2

    .line 144
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->f()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static h()J
    .locals 2

    .line 151
    sget-object v0, Lcom/apm/insight/log/a/g;->a:Lcom/apm/insight/log/a/a;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/apm/insight/log/a/a;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
