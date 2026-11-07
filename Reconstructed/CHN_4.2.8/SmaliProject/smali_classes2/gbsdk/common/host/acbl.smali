.class public abstract Lgbsdk/common/host/acbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field public final aNq:Lgbsdk/common/host/acbi;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/acbi;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .line 82
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1

    .line 78
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 74
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 70
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1

    .line 66
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/acbi;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    .line 62
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/common/host/acbi;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 1

    .line 58
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2

    .line 50
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1

    .line 46
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 38
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .line 34
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0}, Lgbsdk/common/host/acbi;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public skipBytes(I)I
    .locals 1

    .line 30
    iget-object v0, p0, Lgbsdk/common/host/acbl;->aNq:Lgbsdk/common/host/acbi;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/acbi;->skipBytes(I)I

    move-result p1

    return p1
.end method
