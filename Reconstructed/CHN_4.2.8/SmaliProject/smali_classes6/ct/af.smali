.class public final Lct/af;
.super Lct/bb;


# static fields
.field private static g:Ljava/util/Map;

.field private static h:Lct/ah;

.field private static i:Lct/ad;

.field private static j:Ljava/util/Map;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Lct/ah;

.field public c:Lct/ad;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lct/bb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lct/af;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lct/af;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lct/af;->a:Ljava/util/Map;

    iput-object v0, p0, Lct/af;->b:Lct/ah;

    iput-object v0, p0, Lct/af;->c:Lct/ad;

    iput-object v0, p0, Lct/af;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lct/az;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lct/az;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lct/af;->d:Ljava/lang/String;

    iget v2, p0, Lct/af;->e:I

    invoke-virtual {p1, v2, v1, v1}, Lct/az;->a(IIZ)I

    move-result v2

    iput v2, p0, Lct/af;->e:I

    sget-object v2, Lct/af;->g:Ljava/util/Map;

    const-string v3, ""

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lct/af;->g:Ljava/util/Map;

    new-instance v2, Lct/ag;

    invoke-direct {v2}, Lct/ag;-><init>()V

    sget-object v4, Lct/af;->g:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v2, Lct/af;->g:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v4, v1}, Lct/az;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lct/af;->a:Ljava/util/Map;

    sget-object v1, Lct/af;->h:Lct/ah;

    if-nez v1, :cond_1

    new-instance v1, Lct/ah;

    invoke-direct {v1}, Lct/ah;-><init>()V

    sput-object v1, Lct/af;->h:Lct/ah;

    :cond_1
    sget-object v1, Lct/af;->h:Lct/ah;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lct/az;->a(Lct/bb;IZ)Lct/bb;

    move-result-object v1

    check-cast v1, Lct/ah;

    iput-object v1, p0, Lct/af;->b:Lct/ah;

    sget-object v1, Lct/af;->i:Lct/ad;

    if-nez v1, :cond_2

    new-instance v1, Lct/ad;

    invoke-direct {v1}, Lct/ad;-><init>()V

    sput-object v1, Lct/af;->i:Lct/ad;

    :cond_2
    sget-object v1, Lct/af;->i:Lct/ad;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2, v0}, Lct/az;->a(Lct/bb;IZ)Lct/bb;

    move-result-object v1

    check-cast v1, Lct/ad;

    iput-object v1, p0, Lct/af;->c:Lct/ad;

    sget-object v1, Lct/af;->j:Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lct/af;->j:Ljava/util/Map;

    invoke-interface {v1, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lct/af;->j:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2, v0}, Lct/az;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lct/af;->f:Ljava/util/Map;

    return-void
.end method

.method public final a(Lct/ba;)V
    .locals 2

    iget-object v0, p0, Lct/af;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Ljava/lang/String;I)V

    iget v0, p0, Lct/af;->e:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(II)V

    iget-object v0, p0, Lct/af;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Ljava/util/Map;I)V

    iget-object v0, p0, Lct/af;->b:Lct/ah;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Lct/bb;I)V

    :cond_0
    iget-object v0, p0, Lct/af;->c:Lct/ad;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Lct/bb;I)V

    :cond_1
    iget-object v0, p0, Lct/af;->f:Ljava/util/Map;

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lct/ba;->a(Ljava/util/Map;I)V

    :cond_2
    return-void
.end method
