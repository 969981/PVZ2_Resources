.class final Lct/bo;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lct/bo$1;

    invoke-direct {v0}, Lct/bo$1;-><init>()V

    sput-object v0, Lct/bo;->a:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lct/bo;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lct/bo;->c:J

    return-void
.end method

.method private constructor <init>(Ljava/util/List;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;JJ)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lct/bo;->b:Ljava/util/ArrayList;

    .line 38
    sget-object p1, Lct/bo;->a:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    iput-wide p2, p0, Lct/bo;->c:J

    .line 40
    iput-wide p4, p0, Lct/bo;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lct/bo;)Lct/bo;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 109
    iget-object v2, p1, Lct/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 110
    new-instance p1, Lct/bo;

    iget-object v4, p0, Lct/bo;->b:Ljava/util/ArrayList;

    iget-wide v5, p0, Lct/bo;->c:J

    iget-wide v7, p0, Lct/bo;->d:J

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lct/bo;-><init>(Ljava/util/List;JJ)V

    return-object p1

    .line 112
    :cond_2
    iget-wide v2, p0, Lct/bo;->d:J

    iget-wide v4, p1, Lct/bo;->d:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 116
    iget-object v2, p1, Lct/bo;->b:Ljava/util/ArrayList;

    .line 117
    iget-object v3, p0, Lct/bo;->b:Ljava/util/ArrayList;

    goto :goto_2

    .line 120
    :cond_3
    iget-object v2, p0, Lct/bo;->b:Ljava/util/ArrayList;

    .line 121
    iget-object v3, p1, Lct/bo;->b:Ljava/util/ArrayList;

    .line 124
    :goto_2
    new-instance v4, Lct/bo;

    invoke-direct {v4}, Lct/bo;-><init>()V

    .line 125
    iget-object v5, v4, Lct/bo;->b:Ljava/util/ArrayList;

    .line 127
    iget-wide v6, p0, Lct/bo;->c:J

    iget-wide v8, p1, Lct/bo;->c:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v4, Lct/bo;->c:J

    .line 128
    iget-wide v6, p0, Lct/bo;->d:J

    iget-wide v8, p1, Lct/bo;->d:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v4, Lct/bo;->d:J

    .line 130
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 132
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v6, v4, Lct/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_4

    .line 133
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object v4
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lct/bo;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lct/bo;->c:J

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lct/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lct/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object p1, p0, Lct/bo;->b:Ljava/util/ArrayList;

    sget-object v0, Lct/bo;->a:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 63
    iget-object v0, p0, Lct/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lct/bo;->d:J

    return-void
.end method

.method public final c()I
    .locals 1

    .line 99
    iget-object v0, p0, Lct/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
