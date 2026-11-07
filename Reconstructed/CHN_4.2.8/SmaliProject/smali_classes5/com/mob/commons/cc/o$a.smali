.class public Lcom/mob/commons/cc/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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

.field private b:Ljava/io/DataInputStream;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/DataInputStream;",
            "II)V"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/mob/commons/cc/o$a;->a:Ljava/util/ArrayList;

    .line 229
    iput-object p2, p0, Lcom/mob/commons/cc/o$a;->b:Ljava/io/DataInputStream;

    .line 230
    iput p3, p0, Lcom/mob/commons/cc/o$a;->c:I

    .line 231
    iput p4, p0, Lcom/mob/commons/cc/o$a;->d:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;IILcom/mob/commons/cc/o$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/commons/cc/o$a;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;II)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 236
    iget v0, p0, Lcom/mob/commons/cc/o$a;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/mob/commons/cc/o$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mob/commons/cc/o$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/cc/o$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mob/commons/cc/o$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/mob/commons/cc/o$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mob/commons/cc/o$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/mob/commons/cc/o$a;->d:I

    return v0
.end method
