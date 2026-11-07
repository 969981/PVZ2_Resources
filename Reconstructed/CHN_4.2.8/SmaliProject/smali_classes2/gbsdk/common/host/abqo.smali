.class public Lgbsdk/common/host/abqo;
.super Ljava/lang/Object;
.source "PatchFetchInfo.java"


# instance fields
.field public isAppliedSuccess:Z

.field public isSupportSubProcess:Z

.field public md5:Ljava/lang/String;

.field public patchedClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meituan/robust/PatchedClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;

.field public wY:Ljava/lang/String;

.field private wZ:Ljava/lang/String;

.field public xa:I

.field public xb:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lgbsdk/common/host/abqo;->url:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lgbsdk/common/host/abqo;->wY:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lgbsdk/common/host/abqo;->xb:Z

    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lgbsdk/common/host/abqo;->isAppliedSuccess:Z

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, ","

    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 39
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    aget-object v4, p1, v3

    .line 40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v5, "="

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 44
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 45
    aget-object v5, v4, v1

    const-string v6, "patchName"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 46
    aget-object v4, v4, v0

    iput-object v4, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    goto :goto_1

    .line 47
    :cond_2
    aget-object v5, v4, v1

    const-string v6, "sign"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    aget-object v4, v4, v0

    iput-object v4, p0, Lgbsdk/common/host/abqo;->wY:Ljava/lang/String;

    goto :goto_1

    .line 49
    :cond_3
    aget-object v5, v4, v1

    const-string v6, "versionCode"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50
    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lgbsdk/common/host/abqo;->xa:I

    goto :goto_1

    .line 51
    :cond_4
    aget-object v5, v4, v1

    const-string v6, "url"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 52
    aget-object v4, v4, v0

    iput-object v4, p0, Lgbsdk/common/host/abqo;->url:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_5
    aget-object v5, v4, v1

    const-string v6, "md5"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 54
    aget-object v4, v4, v0

    iput-object v4, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_6
    aget-object v5, v4, v1

    const-string v6, "isSupportSubProcess"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "1"

    if-eqz v5, :cond_7

    .line 56
    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lgbsdk/common/host/abqo;->isSupportSubProcess:Z

    goto :goto_1

    .line 57
    :cond_7
    aget-object v5, v4, v1

    const-string v7, "isAsyncLoad"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 58
    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lgbsdk/common/host/abqo;->xb:Z

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lgbsdk/common/host/abqo;->url:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lgbsdk/common/host/abqo;->wY:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lgbsdk/common/host/abqo;->xb:Z

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lgbsdk/common/host/abqo;->isAppliedSuccess:Z

    .line 24
    iput-object p4, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lgbsdk/common/host/abqo;->url:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lgbsdk/common/host/abqo;->wY:Ljava/lang/String;

    .line 28
    iput-boolean p5, p0, Lgbsdk/common/host/abqo;->isSupportSubProcess:Z

    .line 29
    iput-boolean p6, p0, Lgbsdk/common/host/abqo;->xb:Z

    .line 30
    iput p7, p0, Lgbsdk/common/host/abqo;->xa:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    check-cast p1, Lgbsdk/common/host/abqo;

    .line 108
    iget-object v2, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    iget-object v3, p1, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 111
    :cond_2
    iget-object v2, p0, Lgbsdk/common/host/abqo;->wY:Ljava/lang/String;

    iget-object v3, p1, Lgbsdk/common/host/abqo;->wY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    iget-object v3, p1, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lgbsdk/common/host/abqo;->xa:I

    iget v3, p1, Lgbsdk/common/host/abqo;->xa:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lgbsdk/common/host/abqo;->isSupportSubProcess:Z

    iget-boolean p1, p1, Lgbsdk/common/host/abqo;->isSupportSubProcess:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/abqb;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    .line 162
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 117
    iget-object v0, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v1, p0, Lgbsdk/common/host/abqo;->wY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patchName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abqo;->wZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abqo;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abqo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abqo;->wY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isSupportSubProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbsdk/common/host/abqo;->isSupportSubProcess:Z

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isAsyncLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbsdk/common/host/abqo;->xb:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/common/host/abqo;->xa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
