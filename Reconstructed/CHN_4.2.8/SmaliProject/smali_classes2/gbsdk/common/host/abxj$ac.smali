.class public final Lgbsdk/common/host/abxj$ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbsdk/common/host/abzy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abxj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# instance fields
.field private a:I

.field private final aMp:Ljava/nio/ByteBuffer;

.field private final aMq:Ljava/security/MessageDigest;

.field private final aMr:[B

.field private final fp:[B


# direct methods
.method private constructor <init>([BLjava/nio/ByteBuffer;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 153
    iput-object v0, p0, Lgbsdk/common/host/abxj$ac;->fp:[B

    .line 157
    iput-object p1, p0, Lgbsdk/common/host/abxj$ac;->aMr:[B

    .line 158
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abxj$ac;->aMp:Ljava/nio/ByteBuffer;

    const-string p1, "SHA-256"

    .line 159
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abxj$ac;->aMq:Ljava/security/MessageDigest;

    .line 160
    iget-object p2, p0, Lgbsdk/common/host/abxj$ac;->aMr:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lgbsdk/common/host/abxj$ac;->a:I

    return-void
.end method

.method synthetic constructor <init>([BLjava/nio/ByteBuffer;B)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abxj$ac;-><init>([BLjava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 194
    iget v0, p0, Lgbsdk/common/host/abxj$ac;->a:I

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer is not empty: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lgbsdk/common/host/abxj$ac;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b()V
    .locals 2

    .line 200
    iget-object v0, p0, Lgbsdk/common/host/abxj$ac;->aMp:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abxj$ac;->aMp:Ljava/nio/ByteBuffer;

    rsub-int v0, v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final e(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 173
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 175
    iget v1, p0, Lgbsdk/common/host/abxj$ac;->a:I

    const/16 v2, 0x1000

    rsub-int v1, v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 177
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 178
    iget-object v3, p0, Lgbsdk/common/host/abxj$ac;->aMq:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    sub-int/2addr v0, v1

    .line 181
    iget v3, p0, Lgbsdk/common/host/abxj$ac;->a:I

    add-int/2addr v3, v1

    iput v3, p0, Lgbsdk/common/host/abxj$ac;->a:I

    if-ne v3, v2, :cond_0

    .line 184
    iget-object v1, p0, Lgbsdk/common/host/abxj$ac;->aMq:Ljava/security/MessageDigest;

    iget-object v2, p0, Lgbsdk/common/host/abxj$ac;->fp:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->digest([BII)I

    .line 185
    iget-object v1, p0, Lgbsdk/common/host/abxj$ac;->aMp:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lgbsdk/common/host/abxj$ac;->fp:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    iget-object v1, p0, Lgbsdk/common/host/abxj$ac;->aMq:Ljava/security/MessageDigest;

    iget-object v2, p0, Lgbsdk/common/host/abxj$ac;->aMr:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    iput v4, p0, Lgbsdk/common/host/abxj$ac;->a:I

    goto :goto_0

    :cond_1
    return-void
.end method
