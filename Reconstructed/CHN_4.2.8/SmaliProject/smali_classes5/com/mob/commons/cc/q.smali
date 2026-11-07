.class public Lcom/mob/commons/cc/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/q$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/mob/commons/cc/j;

.field private d:I

.field private e:I

.field private f:Lcom/mob/commons/cc/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/p;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/mob/commons/cc/j;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mob/commons/cc/q;->a:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/mob/commons/cc/q;->b:I

    .line 24
    new-instance p1, Lcom/mob/commons/cc/l;

    invoke-direct {p1, p3, p4}, Lcom/mob/commons/cc/l;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/mob/commons/cc/q;->f:Lcom/mob/commons/cc/l;

    .line 25
    iput p5, p0, Lcom/mob/commons/cc/q;->d:I

    .line 26
    iput p6, p0, Lcom/mob/commons/cc/q;->e:I

    .line 27
    iput-object p7, p0, Lcom/mob/commons/cc/q;->c:Lcom/mob/commons/cc/j;

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/p;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 38
    new-instance v1, Lcom/mob/commons/cc/p;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 39
    iput-object p1, v1, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 40
    iput p2, v1, Lcom/mob/commons/cc/p;->c:I

    .line 41
    iput v0, v1, Lcom/mob/commons/cc/p;->i:I

    .line 42
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    new-instance v1, Lcom/mob/commons/cc/p;

    invoke-direct {v1, v0}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 46
    iput-object p1, v1, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 47
    iput p2, v1, Lcom/mob/commons/cc/p;->c:I

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "arg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mob/commons/cc/p;->h:Ljava/lang/String;

    .line 49
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget v1, p0, Lcom/mob/commons/cc/q;->b:I

    add-int/lit8 v2, v1, -0x1

    const/16 v5, 0x1c

    if-ge p4, v2, :cond_1

    .line 52
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/mob/commons/cc/q;->a(Ljava/lang/String;ILjava/util/ArrayList;I)V

    .line 54
    new-instance v0, Lcom/mob/commons/cc/p;

    invoke-direct {v0, v5}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 55
    iput-object p1, v0, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 56
    iput p2, v0, Lcom/mob/commons/cc/p;->c:I

    .line 57
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 60
    new-instance v0, Lcom/mob/commons/cc/p;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 61
    iput-object p1, v0, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 62
    iput p2, v0, Lcom/mob/commons/cc/p;->c:I

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/cc/p;->h:Ljava/lang/String;

    .line 64
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/mob/commons/cc/q;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 68
    new-instance v0, Lcom/mob/commons/cc/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 69
    iput-object p1, v0, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 70
    iput p2, v0, Lcom/mob/commons/cc/p;->c:I

    .line 71
    iput-object p0, v0, Lcom/mob/commons/cc/p;->n:Ljava/lang/Object;

    .line 72
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/mob/commons/cc/p;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 75
    iput-object p1, v0, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 76
    iput p2, v0, Lcom/mob/commons/cc/p;->c:I

    .line 77
    iget v1, p0, Lcom/mob/commons/cc/q;->b:I

    iput v1, v0, Lcom/mob/commons/cc/p;->i:I

    .line 78
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_3
    new-instance v0, Lcom/mob/commons/cc/p;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 81
    iput-object p1, v0, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 82
    iput p2, v0, Lcom/mob/commons/cc/p;->c:I

    .line 83
    iget-object v1, p0, Lcom/mob/commons/cc/q;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/commons/cc/p;->h:Ljava/lang/String;

    .line 84
    iget v1, p0, Lcom/mob/commons/cc/q;->b:I

    iput v1, v0, Lcom/mob/commons/cc/p;->i:I

    .line 85
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/mob/commons/cc/q;->f:Lcom/mob/commons/cc/l;

    invoke-virtual {v0}, Lcom/mob/commons/cc/l;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/commons/cc/p;

    .line 89
    iget v1, v1, Lcom/mob/commons/cc/p;->a:I

    if-ne v1, v5, :cond_4

    .line 90
    new-instance v0, Lcom/mob/commons/cc/p;

    invoke-direct {v0, v5}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 91
    iput-object p1, v0, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 92
    iput p2, v0, Lcom/mob/commons/cc/p;->c:I

    .line 93
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 100
    new-instance p4, Lcom/mob/commons/cc/p;

    const/16 v0, 0x1e

    invoke-direct {p4, v0}, Lcom/mob/commons/cc/p;-><init>(I)V

    .line 101
    iput-object p1, p4, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    .line 102
    iput p2, p4, Lcom/mob/commons/cc/p;->c:I

    .line 103
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcom/mob/commons/cc/q$a;
    .locals 2

    .line 108
    new-instance v0, Lcom/mob/commons/cc/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/q$a;-><init>(Lcom/mob/commons/cc/q$1;)V

    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/q;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/cc/q$a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 115
    iput-object p1, v0, Lcom/mob/commons/cc/q$a;->a:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    return-object v0
.end method

.method public a(Lcom/mob/commons/cc/j;Ljava/lang/String;I)Lcom/mob/commons/cc/q;
    .locals 8

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p2, p3, v3, v0}, Lcom/mob/commons/cc/q;->a(Ljava/lang/String;ILjava/util/ArrayList;I)V

    .line 33
    new-instance p2, Lcom/mob/commons/cc/q;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/mob/commons/cc/q;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/j;)V

    return-object p2
.end method

.method public varargs b([Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/mob/commons/cc/q;->c:Lcom/mob/commons/cc/j;

    invoke-virtual {v0}, Lcom/mob/commons/cc/j;->b()Lcom/mob/commons/cc/j;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/mob/commons/cc/q;->b:I

    if-eqz v1, :cond_3

    .line 123
    array-length v2, p1

    if-gt v2, v1, :cond_1

    .line 124
    array-length v1, p1

    :goto_0
    iget v2, p0, Lcom/mob/commons/cc/q;->b:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/j;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 128
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/j;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 131
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    iget v2, p0, Lcom/mob/commons/cc/q;->b:I

    add-int/lit8 v2, v2, -0x1

    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 133
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/Object;)V

    .line 136
    iget v1, p0, Lcom/mob/commons/cc/q;->b:I

    add-int/lit8 v1, v1, -0x2

    :goto_3
    if-ltz v1, :cond_3

    .line 137
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/j;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 141
    :cond_3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/mob/commons/cc/q;->f:Lcom/mob/commons/cc/l;

    iget v2, p0, Lcom/mob/commons/cc/q;->d:I

    iget v3, p0, Lcom/mob/commons/cc/q;->e:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/mob/commons/cc/l;->a(IILcom/mob/commons/cc/j;Ljava/util/List;)V

    return-object p1
.end method
