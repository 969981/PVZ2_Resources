.class public final Lct/bc;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/util/HashMap;


# instance fields
.field public a:Lct/bd;

.field private b:Ljava/util/HashMap;

.field private c:Lct/az;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lct/bc;->b:Ljava/util/HashMap;

    new-instance v0, Lct/az;

    invoke-direct {v0}, Lct/az;-><init>()V

    iput-object v0, p0, Lct/bc;->c:Lct/az;

    const-string v0, "GBK"

    iput-object v0, p0, Lct/bc;->d:Ljava/lang/String;

    new-instance v0, Lct/bd;

    invoke-direct {v0}, Lct/bd;-><init>()V

    iput-object v0, p0, Lct/bc;->a:Lct/bd;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lct/bc;->a:Lct/bd;

    iput p1, v0, Lct/bd;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lct/bc;->a:Lct/bd;

    iput-object p1, v0, Lct/bd;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lct/ba;

    invoke-direct {v0}, Lct/ba;-><init>()V

    iget-object v1, p0, Lct/bc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lct/ba;->a(Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lct/ba;->a(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lct/ba;->a()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lct/bc;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not support Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put value can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put key can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([B)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lct/az;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lct/az;-><init>([BB)V

    iget-object p1, p0, Lct/bc;->d:Ljava/lang/String;

    iput-object p1, v0, Lct/az;->b:Ljava/lang/String;

    iget-object p1, p0, Lct/bc;->a:Lct/bd;

    invoke-virtual {p1, v0}, Lct/bd;->a(Lct/az;)V

    new-instance p1, Lct/az;

    iget-object v0, p0, Lct/bc;->a:Lct/bd;

    iget-object v0, v0, Lct/bd;->e:[B

    invoke-direct {p1, v0}, Lct/az;-><init>([B)V

    iget-object v0, p0, Lct/bc;->d:Ljava/lang/String;

    iput-object v0, p1, Lct/az;->b:Ljava/lang/String;

    sget-object v0, Lct/bc;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lct/bc;->e:Ljava/util/HashMap;

    const-string v2, ""

    new-array v3, v1, [B

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lct/bc;->e:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v2, v0, v1, v1}, Lct/az;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lct/bc;->b:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "decode package must include size head"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()[B
    .locals 5

    new-instance v0, Lct/ba;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lct/ba;-><init>(I)V

    iget-object v2, p0, Lct/bc;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lct/ba;->a(Ljava/lang/String;)I

    iget-object v2, p0, Lct/bc;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Lct/ba;->a(Ljava/util/Map;I)V

    iget-object v2, p0, Lct/bc;->a:Lct/bd;

    const/4 v3, 0x3

    iput-short v3, v2, Lct/bd;->a:S

    iget-object v2, p0, Lct/bc;->a:Lct/bd;

    invoke-virtual {v0}, Lct/ba;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, v2, Lct/bd;->e:[B

    new-instance v0, Lct/ba;

    invoke-direct {v0, v1}, Lct/ba;-><init>(I)V

    iget-object v2, p0, Lct/bc;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lct/ba;->a(Ljava/lang/String;)I

    iget-object v2, p0, Lct/bc;->a:Lct/bd;

    invoke-virtual {v2, v0}, Lct/bd;->a(Lct/ba;)V

    invoke-virtual {v0}, Lct/ba;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lct/bc;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lct/bc;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :try_start_0
    iget-object v0, p0, Lct/bc;->c:Lct/az;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v0, Lct/az;->a:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lct/bc;->c:Lct/az;

    iget-object v0, p0, Lct/bc;->d:Ljava/lang/String;

    iput-object v0, p1, Lct/az;->b:Ljava/lang/String;

    iget-object p1, p0, Lct/bc;->c:Lct/az;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lct/az;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lct/bc;->a:Lct/bd;

    iput-object p1, v0, Lct/bd;->c:Ljava/lang/String;

    return-void
.end method
