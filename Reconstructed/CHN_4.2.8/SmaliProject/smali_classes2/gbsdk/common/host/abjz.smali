.class public Lgbsdk/common/host/abjz;
.super Ljava/net/CookieManager;
.source "CookieManagerWrap.java"


# static fields
.field private static final kE:Ljava/lang/String; = "Set-cookie"

.field private static final kF:Ljava/lang/String; = "Set-cookie2"


# instance fields
.field private kC:Lgbsdk/common/host/abiu;

.field public kD:Lgbsdk/common/host/abjy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0}, Lgbsdk/common/host/abjz;-><init>(Lgbsdk/common/host/abiu;Lgbsdk/common/host/abjy;)V

    return-void
.end method

.method public constructor <init>(Lgbsdk/common/host/abiu;Lgbsdk/common/host/abjy;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/net/CookieManager;-><init>()V

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Lgbsdk/common/host/abit;

    invoke-direct {p1}, Lgbsdk/common/host/abit;-><init>()V

    :cond_0
    iput-object p1, p0, Lgbsdk/common/host/abjz;->kC:Lgbsdk/common/host/abiu;

    if-nez p2, :cond_1

    .line 60
    sget-object p2, Lgbsdk/common/host/abjy;->kI:Lgbsdk/common/host/abjy;

    :cond_1
    iput-object p2, p0, Lgbsdk/common/host/abjz;->kD:Lgbsdk/common/host/abjy;

    return-void
.end method

.method public static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "/"

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 166
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abiw;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 90
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/abiw;

    .line 99
    iget v4, v4, Lgbsdk/common/host/abiw;->kQ:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    const-string v1, "$Version=\"1\"; "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x0

    .line 105
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abiw;

    invoke-virtual {v1}, Lgbsdk/common/host/abiw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const-string v1, "; "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abiw;

    invoke-virtual {v1}, Lgbsdk/common/host/abiw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Cookie"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static i(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abiw;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "Set-cookie"

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Set-cookie2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    :try_start_0
    invoke-static {v2}, Lgbsdk/common/host/abiw;->S(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abiw;

    .line 180
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v0, p0, Lgbsdk/common/host/abjz;->kC:Lgbsdk/common/host/abiu;

    invoke-interface {v0, p1}, Lgbsdk/common/host/abiu;->a(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abiw;

    .line 80
    invoke-static {v1, p1}, Lgbsdk/common/host/abiw;->a(Lgbsdk/common/host/abiw;Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, p1}, Lgbsdk/common/host/abiw;->b(Lgbsdk/common/host/abiw;Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-static {v1, p1}, Lgbsdk/common/host/abiw;->c(Lgbsdk/common/host/abiw;Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p2}, Lgbsdk/common/host/abjz;->h(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 127
    invoke-static {p2}, Lgbsdk/common/host/abjz;->i(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 128
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abiw;

    .line 130
    iget-object v1, v0, Lgbsdk/common/host/abiw;->domain:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 131
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abiw;->U(Ljava/lang/String;)V

    .line 135
    :cond_1
    iget-object v1, v0, Lgbsdk/common/host/abiw;->path:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 136
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abjz;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/common/host/abiw;->path:Ljava/lang/String;

    goto :goto_1

    .line 137
    :cond_2
    invoke-static {v0, p1}, Lgbsdk/common/host/abiw;->a(Lgbsdk/common/host/abiw;Ljava/net/URI;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 142
    :cond_3
    :goto_1
    iget-object v1, v0, Lgbsdk/common/host/abiw;->kP:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-static {v1, v2}, Lgbsdk/common/host/abip;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    iput-object v1, v0, Lgbsdk/common/host/abiw;->kP:Ljava/lang/String;

    goto :goto_2

    .line 145
    :cond_4
    iget-object v1, v0, Lgbsdk/common/host/abiw;->kP:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, p1}, Lgbsdk/common/host/abiw;->c(Lgbsdk/common/host/abiw;Ljava/net/URI;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 150
    :cond_5
    :goto_2
    iget-object v1, p0, Lgbsdk/common/host/abjz;->kD:Lgbsdk/common/host/abjy;

    invoke-interface {v1, p1, v0}, Lgbsdk/common/host/abjy;->a(Ljava/net/URI;Lgbsdk/common/host/abiw;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lgbsdk/common/host/abjz;->kC:Lgbsdk/common/host/abiu;

    invoke-interface {v1, p1, v0}, Lgbsdk/common/host/abiu;->b(Ljava/net/URI;Lgbsdk/common/host/abiw;)V

    goto :goto_0

    :cond_6
    return-void

    .line 123
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
