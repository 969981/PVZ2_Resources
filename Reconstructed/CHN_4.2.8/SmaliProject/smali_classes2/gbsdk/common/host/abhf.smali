.class public Lgbsdk/common/host/abhf;
.super Ljava/lang/Object;
.source "ByteArrayScanner.java"


# instance fields
.field private gm:I

.field private gn:C

.field private go:Z

.field private mData:[B

.field private mTotalLength:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 119
    aget-byte p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    if-ltz p1, :cond_0

    const/16 v2, 0x9

    if-gt p1, v2, :cond_0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    move p1, v1

    goto :goto_0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid int in buffer at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0
.end method

.method private static a([BIIC)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 131
    aget-byte v0, p0, p1

    if-ne v0, p3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private aR()V
    .locals 2

    .line 28
    iget-object v0, p0, Lgbsdk/common/host/abhf;->mData:[B

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call reset first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aS()V
    .locals 2

    .line 34
    iget-boolean v0, p0, Lgbsdk/common/host/abhf;->go:Z

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call useDelimiter first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aW()I
    .locals 4

    .line 98
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aR()V

    .line 99
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aS()V

    .line 100
    iget v0, p0, Lgbsdk/common/host/abhf;->mTotalLength:I

    iget v1, p0, Lgbsdk/common/host/abhf;->gm:I

    if-le v0, v1, :cond_1

    .line 103
    iget-object v2, p0, Lgbsdk/common/host/abhf;->mData:[B

    iget-char v3, p0, Lgbsdk/common/host/abhf;->gn:C

    invoke-static {v2, v1, v0, v3}, Lgbsdk/common/host/abhf;->a([BIIC)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget v0, p0, Lgbsdk/common/host/abhf;->mTotalLength:I

    iget v1, p0, Lgbsdk/common/host/abhf;->gm:I

    sub-int v1, v0, v1

    .line 106
    iput v0, p0, Lgbsdk/common/host/abhf;->gm:I

    return v1

    .line 109
    :cond_0
    iget v1, p0, Lgbsdk/common/host/abhf;->gm:I

    sub-int v1, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 110
    iput v0, p0, Lgbsdk/common/host/abhf;->gm:I

    return v1

    .line 101
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading past end of input stream at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbsdk/common/host/abhf;->gm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public O(Ljava/lang/String;)Z
    .locals 5

    .line 59
    iget v0, p0, Lgbsdk/common/host/abhf;->gm:I

    .line 60
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aW()I

    move-result v1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v4, p0, Lgbsdk/common/host/abhf;->mData:[B

    aget-byte v4, v4, v0

    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public a(C)Lgbsdk/common/host/abhf;
    .locals 0

    .line 21
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aR()V

    .line 22
    iput-char p1, p0, Lgbsdk/common/host/abhf;->gn:C

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lgbsdk/common/host/abhf;->go:Z

    return-object p0
.end method

.method public a([BI)Lgbsdk/common/host/abhf;
    .locals 0

    .line 13
    iput-object p1, p0, Lgbsdk/common/host/abhf;->mData:[B

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lgbsdk/common/host/abhf;->gm:I

    .line 15
    iput p2, p0, Lgbsdk/common/host/abhf;->mTotalLength:I

    .line 16
    iput-boolean p1, p0, Lgbsdk/common/host/abhf;->go:Z

    return-object p0
.end method

.method public aT()Ljava/lang/String;
    .locals 4

    .line 44
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aR()V

    .line 45
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aS()V

    .line 46
    iget v0, p0, Lgbsdk/common/host/abhf;->gm:I

    .line 47
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aW()I

    move-result v1

    .line 48
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abhf;->mData:[B

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method public aU()I
    .locals 3

    .line 78
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aR()V

    .line 79
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aS()V

    .line 80
    iget v0, p0, Lgbsdk/common/host/abhf;->gm:I

    .line 81
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aW()I

    move-result v1

    .line 82
    iget-object v2, p0, Lgbsdk/common/host/abhf;->mData:[B

    add-int/2addr v1, v0

    invoke-static {v2, v0, v1}, Lgbsdk/common/host/abhf;->a([BII)I

    move-result v0

    return v0
.end method

.method public aV()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aR()V

    .line 93
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aS()V

    .line 94
    invoke-direct {p0}, Lgbsdk/common/host/abhf;->aW()I

    return-void
.end method
