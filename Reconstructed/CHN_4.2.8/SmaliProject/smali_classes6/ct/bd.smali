.class public final Lct/bd;
.super Lct/bb;


# static fields
.field private static k:[B

.field private static l:Ljava/util/Map;


# instance fields
.field public a:S

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[B

.field private f:B

.field private g:I

.field private h:I

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lct/bb;-><init>()V

    const/4 v0, 0x3

    iput-short v0, p0, Lct/bd;->a:S

    const/4 v0, 0x0

    iput-byte v0, p0, Lct/bd;->f:B

    iput v0, p0, Lct/bd;->g:I

    iput v0, p0, Lct/bd;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lct/bd;->c:Ljava/lang/String;

    iput-object v1, p0, Lct/bd;->d:Ljava/lang/String;

    iput v0, p0, Lct/bd;->h:I

    return-void
.end method


# virtual methods
.method public final a(Lct/az;)V
    .locals 4

    :try_start_0
    iget-short v0, p0, Lct/bd;->a:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Lct/az;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lct/bd;->a:S

    iget-byte v0, p0, Lct/bd;->f:B

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lct/az;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lct/bd;->f:B

    iget v0, p0, Lct/bd;->g:I

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lct/az;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/bd;->g:I

    iget v0, p0, Lct/bd;->b:I

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lct/az;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/bd;->b:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lct/az;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/bd;->c:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lct/az;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/bd;->d:Ljava/lang/String;

    sget-object v0, Lct/bd;->k:[B

    if-nez v0, :cond_0

    new-array v0, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v0, v2

    sput-object v0, Lct/bd;->k:[B

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Lct/az;->b(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lct/bd;->e:[B

    iget v0, p0, Lct/bd;->h:I

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lct/az;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/bd;->h:I

    sget-object v0, Lct/bd;->l:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lct/bd;->l:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lct/bd;->l:Ljava/util/Map;

    const/16 v3, 0x9

    invoke-virtual {p1, v0, v3, v1}, Lct/az;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lct/bd;->i:Ljava/util/Map;

    sget-object v0, Lct/bd;->l:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lct/bd;->l:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lct/bd;->l:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v2, v1}, Lct/az;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lct/bd;->j:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lct/ba;)V
    .locals 2

    iget-short v0, p0, Lct/bd;->a:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(SI)V

    iget-byte v0, p0, Lct/bd;->f:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(BI)V

    iget v0, p0, Lct/bd;->g:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget v0, p0, Lct/bd;->b:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget-object v0, p0, Lct/bd;->c:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lct/bd;->d:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lct/bd;->e:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lct/ba;->a([BI)V

    iget v0, p0, Lct/bd;->h:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget-object v0, p0, Lct/bd;->i:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Ljava/util/Map;I)V

    iget-object v0, p0, Lct/bd;->j:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Ljava/util/Map;I)V

    return-void
.end method
