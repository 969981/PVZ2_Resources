.class public final Lgbsdk/common/host/ablh;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sT:Ljava/lang/String; = "http"


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final port:I

.field protected final sU:Ljava/lang/String;

.field public final sV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/ablh;)V
    .locals 2

    .line 93
    iget-object v0, p1, Lgbsdk/common/host/ablh;->hostname:Ljava/lang/String;

    iget v1, p1, Lgbsdk/common/host/ablh;->port:I

    iget-object p1, p1, Lgbsdk/common/host/ablh;->sV:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lgbsdk/common/host/ablh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, v0, v1}, Lgbsdk/common/host/ablh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lgbsdk/common/host/ablh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 57
    iput-object p1, p0, Lgbsdk/common/host/ablh;->hostname:Ljava/lang/String;

    .line 58
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/ablh;->sU:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 60
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/ablh;->sV:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "http"

    .line 62
    iput-object p1, p0, Lgbsdk/common/host/ablh;->sV:Ljava/lang/String;

    .line 64
    :goto_0
    iput p2, p0, Lgbsdk/common/host/ablh;->port:I

    return-void

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Host name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cK()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Lgbsdk/common/host/abkl;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lgbsdk/common/host/abkl;-><init>(I)V

    .line 130
    iget-object v1, p0, Lgbsdk/common/host/ablh;->sV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abkl;->aU(Ljava/lang/String;)V

    const-string v1, "://"

    .line 131
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abkl;->aU(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lgbsdk/common/host/ablh;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abkl;->aU(Ljava/lang/String;)V

    .line 133
    iget v1, p0, Lgbsdk/common/host/ablh;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0x3a

    .line 134
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abkl;->c(C)V

    .line 135
    iget v1, p0, Lgbsdk/common/host/ablh;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abkl;->aU(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-virtual {v0}, Lgbsdk/common/host/abkl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cL()Ljava/lang/String;
    .locals 3

    .line 146
    new-instance v0, Lgbsdk/common/host/abkl;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lgbsdk/common/host/abkl;-><init>(I)V

    .line 147
    iget-object v1, p0, Lgbsdk/common/host/ablh;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abkl;->aU(Ljava/lang/String;)V

    .line 148
    iget v1, p0, Lgbsdk/common/host/ablh;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0x3a

    .line 149
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abkl;->c(C)V

    .line 150
    iget v1, p0, Lgbsdk/common/host/ablh;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abkl;->aU(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-virtual {v0}, Lgbsdk/common/host/abkl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 185
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 164
    :cond_1
    instance-of v2, p1, Lgbsdk/common/host/ablh;

    if-eqz v2, :cond_2

    .line 165
    check-cast p1, Lgbsdk/common/host/ablh;

    .line 166
    iget-object v2, p0, Lgbsdk/common/host/ablh;->sU:Ljava/lang/String;

    iget-object v3, p1, Lgbsdk/common/host/ablh;->sU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lgbsdk/common/host/ablh;->port:I

    iget v3, p1, Lgbsdk/common/host/ablh;->port:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lgbsdk/common/host/ablh;->sV:Ljava/lang/String;

    iget-object p1, p1, Lgbsdk/common/host/ablh;->sV:Ljava/lang/String;

    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 178
    iget-object v0, p0, Lgbsdk/common/host/ablh;->sU:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lgbsdk/common/host/ablc;->b(ILjava/lang/Object;)I

    move-result v0

    .line 179
    iget v1, p0, Lgbsdk/common/host/ablh;->port:I

    invoke-static {v0, v1}, Lgbsdk/common/host/ablc;->f(II)I

    move-result v0

    .line 180
    iget-object v1, p0, Lgbsdk/common/host/ablh;->sV:Ljava/lang/String;

    invoke-static {v0, v1}, Lgbsdk/common/host/ablc;->b(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 156
    invoke-virtual {p0}, Lgbsdk/common/host/ablh;->cK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
