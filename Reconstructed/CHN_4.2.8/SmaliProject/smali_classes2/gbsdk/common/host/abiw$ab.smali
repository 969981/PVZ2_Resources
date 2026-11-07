.class public Lgbsdk/common/host/abiw$ab;
.super Ljava/lang/Object;
.source "HttpCookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# static fields
.field private static final kW:Ljava/lang/String; = ",;= \t"

.field private static final kX:Ljava/lang/String; = " \t"


# instance fields
.field private final kY:Ljava/lang/String;

.field private final kZ:Ljava/lang/String;

.field la:Z

.field lb:Z

.field lc:Z

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    .line 193
    iput-boolean v0, p0, Lgbsdk/common/host/abiw$ab;->la:Z

    .line 194
    iput-boolean v0, p0, Lgbsdk/common/host/abiw$ab;->lb:Z

    .line 195
    iput-boolean v0, p0, Lgbsdk/common/host/abiw$ab;->lc:Z

    .line 198
    iput-object p1, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    .line 199
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abiw$ab;->kZ:Ljava/lang/String;

    return-void
.end method

.method private X(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 357
    invoke-direct {p0}, Lgbsdk/common/host/abiw$ab;->bO()V

    .line 374
    invoke-direct {p0, p1}, Lgbsdk/common/host/abiw$ab;->Y(Ljava/lang/String;)I

    move-result p1

    .line 375
    iget-object v0, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    iget v1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 376
    iput p1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    return-object v0
.end method

.method private Y(Ljava/lang/String;)I
    .locals 3

    .line 385
    iget v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    :goto_0
    iget-object v1, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 386
    iget-object v1, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method private a(Lgbsdk/common/host/abiw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "comment"

    .line 282
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lgbsdk/common/host/abiw;->kL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 283
    iput-object p3, p1, Lgbsdk/common/host/abiw;->kL:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string v0, "commenturl"

    .line 284
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lgbsdk/common/host/abiw;->kM:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 285
    iput-object p3, p1, Lgbsdk/common/host/abiw;->kM:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v0, "discard"

    .line 286
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 287
    iput-boolean v1, p1, Lgbsdk/common/host/abiw;->kN:Z

    goto/16 :goto_1

    :cond_2
    const-string v0, "domain"

    .line 288
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lgbsdk/common/host/abiw;->domain:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 289
    iput-object p3, p1, Lgbsdk/common/host/abiw;->domain:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v0, "expires"

    .line 290
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_5

    .line 291
    iput-boolean v1, p0, Lgbsdk/common/host/abiw$ab;->la:Z

    .line 292
    iget-wide v0, p1, Lgbsdk/common/host/abiw;->kO:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_c

    .line 293
    invoke-static {p3}, Lgbsdk/common/host/abiw;->W(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 295
    invoke-virtual {p1, p2}, Lgbsdk/common/host/abiw;->a(Ljava/util/Date;)V

    goto/16 :goto_1

    :cond_4
    const-wide/16 p2, 0x0

    .line 297
    iput-wide p2, p1, Lgbsdk/common/host/abiw;->kO:J

    goto/16 :goto_1

    :cond_5
    const-string v0, "max-age"

    .line 300
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v4, p1, Lgbsdk/common/host/abiw;->kO:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_6

    .line 307
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 308
    iput-boolean v1, p0, Lgbsdk/common/host/abiw$ab;->lb:Z

    .line 309
    iput-wide v2, p1, Lgbsdk/common/host/abiw;->kO:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 311
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid max-age: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v0, "path"

    .line 313
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lgbsdk/common/host/abiw;->path:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 314
    iput-object p3, p1, Lgbsdk/common/host/abiw;->path:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v0, "port"

    .line 315
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lgbsdk/common/host/abiw;->kP:Ljava/lang/String;

    if-nez v0, :cond_9

    if-eqz p3, :cond_8

    goto :goto_0

    :cond_8
    const-string p3, ""

    .line 316
    :goto_0
    iput-object p3, p1, Lgbsdk/common/host/abiw;->kP:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v0, "secure"

    .line 317
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 318
    iput-boolean v1, p1, Lgbsdk/common/host/abiw;->secure:Z

    goto :goto_1

    :cond_a
    const-string v0, "httponly"

    .line 319
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    iput-boolean v1, p1, Lgbsdk/common/host/abiw;->httpOnly:Z

    goto :goto_1

    :cond_b
    const-string v0, "version"

    .line 321
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lgbsdk/common/host/abiw$ab;->lc:Z

    if-nez p2, :cond_c

    .line 322
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lgbsdk/common/host/abiw;->kQ:I

    :cond_c
    :goto_1
    return-void
.end method

.method private bN()Z
    .locals 2

    .line 343
    invoke-direct {p0}, Lgbsdk/common/host/abiw$ab;->bO()V

    .line 344
    iget v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    iget-object v1, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    iget v1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 345
    iget v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private bO()V
    .locals 2

    .line 394
    :goto_0
    iget v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    iget-object v1, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 395
    iget-object v0, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    iget v1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, " \t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    iget v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private q(Z)Ljava/lang/String;
    .locals 2

    .line 331
    invoke-direct {p0}, Lgbsdk/common/host/abiw$ab;->bO()V

    const-string v0, ",;= \t"

    .line 332
    invoke-direct {p0, v0}, Lgbsdk/common/host/abiw$ab;->Y(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lgbsdk/common/host/abiw$ab;->kZ:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    .line 334
    :goto_0
    iget v1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 335
    :goto_1
    iput v0, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    return-object p1
.end method


# virtual methods
.method public bM()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abiw;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    iget-object v1, p0, Lgbsdk/common/host/abiw$ab;->kZ:Ljava/lang/String;

    const-string v2, "set-cookie2:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 208
    iget v1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    .line 210
    iput-boolean v3, p0, Lgbsdk/common/host/abiw$ab;->lc:Z

    const/4 v1, 0x0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abiw$ab;->kZ:Ljava/lang/String;

    const-string v4, "set-cookie:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget v1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    :cond_1
    const/4 v1, 0x1

    .line 220
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lgbsdk/common/host/abiw$ab;->q(Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 222
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 223
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cookies in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_4
    invoke-direct {p0}, Lgbsdk/common/host/abiw$ab;->bN()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, ";"

    if-eqz v1, :cond_5

    move-object v6, v5

    goto :goto_1

    :cond_5
    const-string v6, ",;"

    .line 232
    :goto_1
    invoke-direct {p0, v6}, Lgbsdk/common/host/abiw$ab;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    new-instance v7, Lgbsdk/common/host/abiw;

    invoke-direct {v7, v4, v6}, Lgbsdk/common/host/abiw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 v4, v1, 0x1

    .line 234
    iput v4, v7, Lgbsdk/common/host/abiw;->kQ:I

    .line 235
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_2
    invoke-direct {p0}, Lgbsdk/common/host/abiw$ab;->bO()V

    .line 244
    iget v4, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    iget-object v6, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_6

    goto :goto_3

    .line 248
    :cond_6
    iget-object v4, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    iget v6, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_8

    .line 249
    iget v4, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    .line 273
    :goto_3
    iget-boolean v4, p0, Lgbsdk/common/host/abiw$ab;->la:Z

    if-eqz v4, :cond_7

    .line 274
    iput v2, v7, Lgbsdk/common/host/abiw;->kQ:I

    goto :goto_0

    .line 275
    :cond_7
    iget-boolean v4, p0, Lgbsdk/common/host/abiw$ab;->lb:Z

    if-eqz v4, :cond_2

    .line 276
    iput v3, v7, Lgbsdk/common/host/abiw;->kQ:I

    goto :goto_0

    .line 251
    :cond_8
    iget-object v4, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    iget v6, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_9

    .line 252
    iget v4, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lgbsdk/common/host/abiw$ab;->pos:I

    .line 255
    :cond_9
    invoke-direct {p0, v3}, Lgbsdk/common/host/abiw$ab;->q(Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    if-nez v1, :cond_c

    const-string v6, "expires"

    .line 265
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "port"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_b
    const-string v6, ";,"

    goto :goto_5

    :cond_c
    :goto_4
    move-object v6, v5

    :goto_5
    const/4 v8, 0x0

    .line 267
    invoke-direct {p0}, Lgbsdk/common/host/abiw$ab;->bN()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 268
    invoke-direct {p0, v6}, Lgbsdk/common/host/abiw$ab;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 270
    :cond_d
    invoke-direct {p0, v7, v4, v8}, Lgbsdk/common/host/abiw$ab;->a(Lgbsdk/common/host/abiw;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'=\' after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abiw$ab;->kY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
