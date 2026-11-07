.class public final Lct/bx;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Lct/cj;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lct/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "lbs.map.qq.com"

    const-string v1, "lbssp.map.qq.com"

    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lct/bx;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lct/b$a;->a()V

    :try_start_0
    const-string v0, "0M3006CS7U0ZC2K3"

    const-string v1, "test_uuid"

    .line 34
    sget-object v2, Lct/bx;->a:Ljava/util/List;

    invoke-static {p1, v0, p2, v1, v2}, Lct/b$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 36
    invoke-static {}, Lct/b$a;->b()Lct/w;

    move-result-object p1

    iput-object p1, p0, Lct/bx;->b:Lct/w;
    :try_end_0
    .catch Lct/l; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_1

    const-string v0, ";"

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 103
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "charset="

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    add-int/lit8 v4, v4, 0x8

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "GBK"

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lct/bx;->b:Lct/w;

    if-eqz v0, :cond_3

    .line 57
    :try_start_0
    invoke-static {p1, p2}, Lct/w;->a(Ljava/lang/String;[B)Lct/y;

    move-result-object p1

    invoke-virtual {p1}, Lct/y;->a()V

    invoke-virtual {p1}, Lct/y;->b()V

    invoke-virtual {p1}, Lct/y;->c()V

    invoke-virtual {p1}, Lct/y;->d()V

    invoke-virtual {v0, p1}, Lct/w;->a(Lct/y;)Lct/z;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {p1}, Lct/z;->a()I

    move-result p2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, "content-type"

    .line 62
    invoke-virtual {p1, p2}, Lct/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {p2}, Lct/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {p1}, Lct/z;->b()[B

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net sdk error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lct/z;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "{}"

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string p2, "utf-8"

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 57
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "null response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lct/ab; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 75
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lct/ab;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can not init net sdk"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
