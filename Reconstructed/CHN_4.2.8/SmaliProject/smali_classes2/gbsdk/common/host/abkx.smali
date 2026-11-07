.class public Lgbsdk/common/host/abkx;
.super Ljava/lang/Object;
.source "MimeType.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final sf:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# instance fields
.field public sc:Ljava/lang/String;

.field public sd:Ljava/lang/String;

.field public se:Lgbsdk/common/host/abks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application"

    .line 24
    iput-object v0, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    const-string v0, "*"

    .line 25
    iput-object v0, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    .line 26
    new-instance v0, Lgbsdk/common/host/abks;

    invoke-direct {v0}, Lgbsdk/common/host/abks;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abkx;->se:Lgbsdk/common/host/abks;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lgbsdk/common/host/abkx;->aI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lgbsdk/common/host/abkx;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p2}, Lgbsdk/common/host/abkx;->aO(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    .line 62
    new-instance p1, Lgbsdk/common/host/abks;

    invoke-direct {p1}, Lgbsdk/common/host/abks;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abkx;->se:Lgbsdk/common/host/abks;

    return-void

    .line 59
    :cond_0
    new-instance p1, Lgbsdk/common/host/abkr;

    const-string p2, "Sub type is invalid."

    invoke-direct {p1, p2}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Lgbsdk/common/host/abkr;

    const-string p2, "Primary type is invalid."

    invoke-direct {p1, p2}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private aI(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2f

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3b

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "Unable to find a sub type."

    if-gez v0, :cond_1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Lgbsdk/common/host/abkr;

    invoke-direct {p1, v2}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-gez v0, :cond_3

    if-gez v1, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    new-instance p1, Lgbsdk/common/host/abkr;

    invoke-direct {p1, v2}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v3, 0x0

    if-ltz v0, :cond_4

    if-gez v1, :cond_4

    .line 81
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    .line 83
    new-instance p1, Lgbsdk/common/host/abks;

    invoke-direct {p1}, Lgbsdk/common/host/abks;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abkx;->se:Lgbsdk/common/host/abks;

    goto :goto_2

    :cond_4
    if-ge v0, v1, :cond_7

    .line 86
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 87
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    .line 88
    new-instance v0, Lgbsdk/common/host/abks;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgbsdk/common/host/abks;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/common/host/abkx;->se:Lgbsdk/common/host/abks;

    .line 98
    :goto_2
    iget-object p1, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lgbsdk/common/host/abkx;->aO(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    iget-object p1, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    invoke-direct {p0, p1}, Lgbsdk/common/host/abkx;->aO(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 103
    :cond_5
    new-instance p1, Lgbsdk/common/host/abkr;

    const-string v0, "Sub type is invalid."

    invoke-direct {p1, v0}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_6
    new-instance p1, Lgbsdk/common/host/abkr;

    const-string v0, "Primary type is invalid."

    invoke-direct {p1, v0}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_7
    new-instance p1, Lgbsdk/common/host/abkr;

    invoke-direct {p1, v2}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private aO(Ljava/lang/String;)Z
    .locals 4

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 281
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 282
    invoke-static {v3}, Lgbsdk/common/host/abkx;->b(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string v0, "()<>@,;:/[]?=\\\""

    .line 271
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lgbsdk/common/host/abkx;->se:Lgbsdk/common/host/abks;

    invoke-virtual {v0, p1, p2}, Lgbsdk/common/host/abks;->C(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lgbsdk/common/host/abkx;)Z
    .locals 2

    .line 217
    iget-object v0, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    iget-object v1, p1, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    const-string v1, "*"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    iget-object p1, p1, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public aJ(Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgbsdk/common/host/abkx;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    return-void

    .line 125
    :cond_0
    new-instance p1, Lgbsdk/common/host/abkr;

    const-string v0, "Primary type is invalid."

    invoke-direct {p1, v0}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public aK(Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgbsdk/common/host/abkx;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    return-void

    .line 148
    :cond_0
    new-instance p1, Lgbsdk/common/host/abkr;

    const-string v0, "Sub type is invalid."

    invoke-direct {p1, v0}, Lgbsdk/common/host/abkr;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public aL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lgbsdk/common/host/abkx;->se:Lgbsdk/common/host/abks;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abks;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public aM(Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lgbsdk/common/host/abkx;->se:Lgbsdk/common/host/abks;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abks;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public aN(Ljava/lang/String;)Z
    .locals 1

    .line 229
    new-instance v0, Lgbsdk/common/host/abkx;

    invoke-direct {v0, p1}, Lgbsdk/common/host/abkx;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgbsdk/common/host/abkx;->a(Lgbsdk/common/host/abkx;)Z

    move-result p1

    return p1
.end method

.method public cA()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abkx;->sd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 259
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lgbsdk/common/host/abkx;->aI(Ljava/lang/String;)V
    :try_end_0
    .catch Lgbsdk/common/host/abkr; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 261
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lgbsdk/common/host/abkr;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgbsdk/common/host/abkx;->cA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abkx;->se:Lgbsdk/common/host/abks;

    invoke-virtual {v1}, Lgbsdk/common/host/abks;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lgbsdk/common/host/abkx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Ljava/io/ObjectOutput;->flush()V

    return-void
.end method
