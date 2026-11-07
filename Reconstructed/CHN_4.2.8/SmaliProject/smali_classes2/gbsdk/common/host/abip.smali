.class public Lgbsdk/common/host/abip;
.super Ljava/lang/Object;
.source "SerializableHttpCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x58765a0a7f563d0cL


# instance fields
.field private lA:J

.field public transient lz:Lgbsdk/common/host/abiw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lgbsdk/common/host/abip;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abip;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgbsdk/common/host/abiw;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/common/host/abip;->lA:J

    return-void
.end method

.method public static Z(Ljava/lang/String;)Lgbsdk/common/host/abip;
    .locals 2

    .line 99
    invoke-static {p0}, Lgbsdk/common/host/abip;->aa(Ljava/lang/String;)[B

    move-result-object p0

    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 102
    :try_start_0
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abip;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    sget-object v0, Lgbsdk/common/host/abip;->TAG:Ljava/lang/String;

    const-string v1, "ClassNotFoundException in decodeCookie"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 105
    sget-object v0, Lgbsdk/common/host/abip;->TAG:Ljava/lang/String;

    const-string v1, "IOException in decodeCookie"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static aa(Ljava/lang/String;)[B
    .locals 7

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 175
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 176
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private bS()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-boolean v0, v0, Lgbsdk/common/host/abiw;->httpOnly:Z

    return v0
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    const-string p1, "http"

    .line 192
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x50

    return p0

    :cond_1
    const-string p1, "https"

    .line 194
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1bb

    return p0

    :cond_2
    return v0
.end method

.method private f([B)Ljava/lang/String;
    .locals 5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 155
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const/16 v4, 0x30

    .line 158
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private r(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iput-boolean p1, v0, Lgbsdk/common/host/abiw;->httpOnly:Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 129
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    new-instance v2, Lgbsdk/common/host/abiw;

    invoke-direct {v2, v0, v1}, Lgbsdk/common/host/abiw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lgbsdk/common/host/abiw;->kL:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lgbsdk/common/host/abiw;->kM:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abiw;->U(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lgbsdk/common/host/abiw;->kO:J

    .line 136
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lgbsdk/common/host/abiw;->path:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lgbsdk/common/host/abiw;->kP:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abiw;->r(I)V

    .line 139
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lgbsdk/common/host/abiw;->secure:Z

    .line 140
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lgbsdk/common/host/abiw;->kN:Z

    .line 141
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    invoke-direct {p0, v0}, Lgbsdk/common/host/abip;->r(Z)V

    .line 142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/common/host/abip;->lA:J

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-object v0, v0, Lgbsdk/common/host/abiw;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-object v0, v0, Lgbsdk/common/host/abiw;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-object v0, v0, Lgbsdk/common/host/abiw;->kL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-object v0, v0, Lgbsdk/common/host/abiw;->kM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-object v0, v0, Lgbsdk/common/host/abiw;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-wide v0, v0, Lgbsdk/common/host/abiw;->kO:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 119
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-object v0, v0, Lgbsdk/common/host/abiw;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-object v0, v0, Lgbsdk/common/host/abiw;->kP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget v0, v0, Lgbsdk/common/host/abiw;->kQ:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-boolean v0, v0, Lgbsdk/common/host/abiw;->secure:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 123
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-boolean v0, v0, Lgbsdk/common/host/abiw;->kN:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 124
    invoke-direct {p0}, Lgbsdk/common/host/abip;->bS()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 125
    iget-wide v0, p0, Lgbsdk/common/host/abip;->lA:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public bL()Z
    .locals 7

    .line 47
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    iget-wide v0, v0, Lgbsdk/common/host/abiw;->kO:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lgbsdk/common/host/abip;->lA:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public bR()Ljava/lang/Long;
    .locals 2

    .line 61
    iget-wide v0, p0, Lgbsdk/common/host/abip;->lA:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bT()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lgbsdk/common/host/abip;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 91
    sget-object v1, Lgbsdk/common/host/abip;->TAG:Ljava/lang/String;

    const-string v2, "IOException in encodeCookie"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 65
    instance-of v0, p1, Lgbsdk/common/host/abiw;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abiw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    instance-of v0, p1, Lgbsdk/common/host/abip;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    check-cast p1, Lgbsdk/common/host/abip;

    iget-object p1, p1, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abiw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 74
    iget-object v0, p0, Lgbsdk/common/host/abip;->lz:Lgbsdk/common/host/abiw;

    invoke-virtual {v0}, Lgbsdk/common/host/abiw;->hashCode()I

    move-result v0

    return v0
.end method
