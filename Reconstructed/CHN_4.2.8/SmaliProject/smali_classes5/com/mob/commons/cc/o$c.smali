.class public Lcom/mob/commons/cc/o$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/cc/o$c;->a:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/cc/o$c;->b:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/cc/o$c;->c:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/mob/commons/cc/o$1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/mob/commons/cc/o$c;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/cc/o$c;Ljava/lang/Object;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/p;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 164
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 169
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v8, 0x0

    move v3, v8

    :goto_1
    if-ge v3, v2, :cond_2

    .line 172
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v3, v8

    :goto_2
    if-ge v3, v2, :cond_3

    .line 175
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v3, v8

    :goto_3
    if-ge v3, v2, :cond_4

    .line 178
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v3, v8

    :goto_4
    if-ge v3, v2, :cond_5

    .line 181
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 183
    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v3, v8

    :goto_5
    if-ge v3, v2, :cond_6

    .line 184
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 186
    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v3, v8

    :goto_6
    if-ge v3, v2, :cond_7

    .line 187
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 190
    :cond_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 191
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v10

    .line 192
    new-instance v11, Lcom/mob/commons/cc/o$a;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v0

    move-object v4, p1

    move v5, v9

    invoke-direct/range {v2 .. v7}, Lcom/mob/commons/cc/o$a;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;IILcom/mob/commons/cc/o$1;)V

    .line 193
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 194
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    :goto_7
    if-ge v8, v2, :cond_d

    .line 196
    new-instance v4, Lcom/mob/commons/cc/p;

    invoke-direct {v4}, Lcom/mob/commons/cc/p;-><init>()V

    .line 197
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v4, Lcom/mob/commons/cc/p;->a:I

    if-eqz v3, :cond_c

    const/4 v5, 0x2

    if-eq v9, v1, :cond_9

    if-eq v9, v5, :cond_8

    .line 202
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    goto :goto_8

    .line 201
    :cond_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    goto :goto_8

    .line 200
    :cond_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/mob/commons/cc/p;->b:Ljava/lang/String;

    :goto_8
    if-eq v10, v1, :cond_b

    if-eq v10, v5, :cond_a

    .line 207
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v4, Lcom/mob/commons/cc/p;->c:I

    goto :goto_9

    .line 206
    :cond_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    iput v5, v4, Lcom/mob/commons/cc/p;->c:I

    goto :goto_9

    .line 205
    :cond_b
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v4, Lcom/mob/commons/cc/p;->c:I

    .line 210
    :cond_c
    :goto_9
    invoke-virtual {v4, v11}, Lcom/mob/commons/cc/p;->a(Lcom/mob/commons/cc/o$a;)V

    .line 211
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 214
    :cond_d
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    new-array p2, p2, [B

    .line 215
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 216
    new-instance p1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1}, Lcom/mob/commons/cc/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mob/commons/cc/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/mob/commons/cc/o$c;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/mob/commons/cc/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/o$c;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mob/commons/cc/o$c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/mob/commons/cc/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 144
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 145
    new-instance v3, Ljava/io/FileInputStream;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_0
    instance-of v3, v2, [B

    if-eqz v3, :cond_1

    .line 147
    new-instance v3, Ljava/io/ByteArrayInputStream;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/mob/commons/cc/o$c;->a(Ljava/io/InputStream;Ljava/util/ArrayList;)V

    .line 152
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "program is not string or byte array"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_2
    new-instance v1, Lcom/mob/commons/cc/l;

    iget-object v2, p0, Lcom/mob/commons/cc/o$c;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Lcom/mob/commons/cc/l;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/mob/commons/cc/o$c;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/mob/commons/cc/l;->a(Ljava/util/HashMap;)V

    return-void
.end method
