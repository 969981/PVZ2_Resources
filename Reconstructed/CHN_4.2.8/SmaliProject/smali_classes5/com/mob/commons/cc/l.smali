.class public Lcom/mob/commons/cc/l;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/p;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/cc/l;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/p;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lcom/mob/commons/cc/l;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/mob/commons/cc/j;)V
    .locals 3

    .line 79
    const-string v0, "Object"

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    const-string v0, "Class"

    const-class v1, Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 81
    const-string v0, "String"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    const-string v0, "Thread"

    const-class v1, Ljava/lang/Thread;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    const-string v0, "Runnable"

    const-class v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 84
    const-string v0, "System"

    const-class v1, Ljava/lang/System;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    const-string v0, "File"

    const-class v1, Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    const-string v0, "URL"

    const-class v1, Ljava/net/URL;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    const-string v0, "Double"

    const-class v1, Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    const-string v0, "Float"

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 90
    const-string v0, "Long"

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 91
    const-string v0, "Integer"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 92
    const-string v0, "Short"

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 93
    const-string v0, "Byte"

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 94
    const-string v0, "Number"

    const-class v1, Ljava/lang/Number;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 95
    const-string v0, "Character"

    const-class v1, Ljava/lang/Character;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    const-string v0, "Boolean"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 98
    const-string v0, "double"

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 99
    const-string v0, "float"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 100
    const-string v0, "long"

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 101
    const-string v0, "int"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 102
    const-string v0, "short"

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 103
    const-string v0, "byte"

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 104
    const-string v0, "char"

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 105
    const-string v0, "boolean"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 107
    const-string v0, "bigInt"

    const-class v1, Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 108
    const-string v0, "BigInteger"

    const-class v1, Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 109
    const-string v0, "bigDec"

    const-class v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 110
    const-string v0, "BigDecimal"

    const-class v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 112
    const-string v0, "List"

    const-class v1, Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 113
    const-string v0, "Map"

    const-class v1, Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 114
    const-string v0, "Method"

    const-class v1, Lcom/mob/commons/cc/q;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 115
    const-string v0, "Function"

    const-class v1, Lcom/mob/commons/cc/q;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 116
    const-string v0, "fun"

    const-class v1, Lcom/mob/commons/cc/q;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 117
    const-string v0, "Range"

    const-class v1, Lcom/mob/commons/cc/r;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 118
    const-string v0, "Array"

    const-class v1, Ljava/lang/reflect/Array;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 119
    const-string v0, "Suba"

    const-class v1, Lcom/mob/commons/cc/n;

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 121
    sget-object v0, Lcom/mob/commons/cc/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p1, v2, v1}, Lcom/mob/commons/cc/j;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/p;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(IILcom/mob/commons/cc/j;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/mob/commons/cc/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/mob/commons/cc/p$a;

    invoke-direct {v0}, Lcom/mob/commons/cc/p$a;-><init>()V

    .line 42
    iput p1, v0, Lcom/mob/commons/cc/p$a;->a:I

    .line 43
    iput-object p3, v0, Lcom/mob/commons/cc/p$a;->b:Lcom/mob/commons/cc/j;

    .line 44
    iput-object p4, v0, Lcom/mob/commons/cc/p$a;->c:Ljava/util/List;

    .line 45
    iget-object p1, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/mob/commons/cc/p$a;->f:Ljava/util/ArrayList;

    .line 46
    iget-object p1, p0, Lcom/mob/commons/cc/l;->c:Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/mob/commons/cc/p$a;->g:Ljava/util/ArrayList;

    .line 48
    :goto_0
    :try_start_0
    iget p1, v0, Lcom/mob/commons/cc/p$a;->a:I

    if-ge p1, p2, :cond_2

    .line 49
    invoke-virtual {p3}, Lcom/mob/commons/cc/j;->f()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 50
    iput-boolean v1, v0, Lcom/mob/commons/cc/p$a;->d:Z

    goto :goto_1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    iget v2, v0, Lcom/mob/commons/cc/p$a;->a:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/commons/cc/p;

    .line 56
    invoke-virtual {p1, v0}, Lcom/mob/commons/cc/p;->a(Lcom/mob/commons/cc/p$a;)V

    .line 57
    iget-boolean p1, v0, Lcom/mob/commons/cc/p$a;->e:Z

    if-eqz p1, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    iget p1, v0, Lcom/mob/commons/cc/p$a;->a:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/mob/commons/cc/p$a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    iget-boolean p1, v0, Lcom/mob/commons/cc/p$a;->d:Z

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/mob/commons/cc/j;->d()I

    move-result p1

    if-lez p1, :cond_3

    if-eqz p4, :cond_3

    .line 73
    :try_start_1
    invoke-virtual {p3}, Lcom/mob/commons/cc/j;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 63
    instance-of p2, p1, Lcom/mob/commons/cc/m;

    if-nez p2, :cond_5

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 66
    new-instance p2, Lcom/mob/commons/cc/m;

    iget-object p3, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    iget p4, v0, Lcom/mob/commons/cc/p$a;->a:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/commons/cc/p;

    iget-object p3, p3, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    iget-object p4, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    iget v0, v0, Lcom/mob/commons/cc/p$a;->a:I

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mob/commons/cc/p;

    iget p4, p4, Lcom/mob/commons/cc/p;->c:I

    invoke-direct {p2, p1, p3, p4}, Lcom/mob/commons/cc/m;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw p2

    .line 68
    :cond_4
    new-instance p2, Lcom/mob/commons/cc/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    iget p4, v0, Lcom/mob/commons/cc/p$a;->a:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/commons/cc/p;

    iget-object p3, p3, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    iget-object p4, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    iget v0, v0, Lcom/mob/commons/cc/p$a;->a:I

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mob/commons/cc/p;

    iget p4, p4, Lcom/mob/commons/cc/p;->c:I

    invoke-direct {p2, p1, p3, p4}, Lcom/mob/commons/cc/m;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2

    .line 64
    :cond_5
    new-instance p2, Lcom/mob/commons/cc/m;

    check-cast p1, Lcom/mob/commons/cc/m;

    iget-object p3, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    iget p4, v0, Lcom/mob/commons/cc/p$a;->a:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/commons/cc/p;

    iget-object p3, p3, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    iget-object p4, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    iget v0, v0, Lcom/mob/commons/cc/p$a;->a:I

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mob/commons/cc/p;

    iget p4, p4, Lcom/mob/commons/cc/p;->c:I

    invoke-direct {p2, p1, p3, p4}, Lcom/mob/commons/cc/m;-><init>(Lcom/mob/commons/cc/m;Ljava/lang/String;I)V

    throw p2
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/mob/commons/cc/j;

    invoke-direct {v0, p1}, Lcom/mob/commons/cc/j;-><init>(Ljava/util/HashMap;)V

    .line 36
    invoke-direct {p0, v0}, Lcom/mob/commons/cc/l;->a(Lcom/mob/commons/cc/j;)V

    .line 37
    iget-object p1, p0, Lcom/mob/commons/cc/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/mob/commons/cc/l;->a(IILcom/mob/commons/cc/j;Ljava/util/List;)V

    return-void
.end method
