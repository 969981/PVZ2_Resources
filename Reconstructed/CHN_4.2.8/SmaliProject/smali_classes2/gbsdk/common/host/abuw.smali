.class public final Lgbsdk/common/host/abuw;
.super Ljava/lang/Object;
.source "CloudMessageUploadManager.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abvr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgbsdk/common/host/abuw;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "."

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "-cloudMsg.zip"

    if-ne v0, v1, :cond_1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lgbsdk/common/host/abvq;)V
    .locals 4

    .line 68
    sget-boolean v0, Lgbsdk/common/host/abvp;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 69
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uploadInfo="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ApmInsight"

    invoke-static {v1, v0}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abvq;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 76
    :cond_1
    invoke-static {p0}, Lgbsdk/common/host/abvt;->b(Lgbsdk/common/host/abvq;)Z

    return-void
.end method

.method public static a(Lgbsdk/common/host/abvr;)V
    .locals 8

    .line 32
    iget-object v0, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    if-eqz v0, :cond_c

    .line 33
    iget-object v0, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    invoke-interface {v0}, Lgbsdk/common/host/abuv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1086
    :cond_0
    iget-boolean v0, p0, Lgbsdk/common/host/abvq;->aKG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1091
    :cond_1
    iget-boolean v0, p0, Lgbsdk/common/host/abvr;->c:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lgbsdk/common/host/abvq;->dt:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    goto :goto_0

    .line 2058
    :cond_2
    iget-object v0, p0, Lgbsdk/common/host/abvq;->p:Ljava/lang/String;

    .line 1095
    invoke-static {v0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v0

    .line 2072
    iget-object v0, v0, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 1095
    invoke-virtual {v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abvo;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    return-void

    .line 42
    :cond_4
    iget-boolean v0, p0, Lgbsdk/common/host/abvr;->d:Z

    if-nez v0, :cond_5

    .line 43
    iget-object v0, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    invoke-interface {v0}, Lgbsdk/common/host/abuv;->b()Ljava/util/List;

    move-result-object v0

    .line 2114
    iput-object v0, p0, Lgbsdk/common/host/abvr;->dW:Ljava/util/List;

    goto/16 :goto_4

    .line 3108
    :cond_5
    iget-object v0, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    invoke-interface {v0}, Lgbsdk/common/host/abuv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lgbsdk/common/host/abvr;->e:Z

    if-eqz v0, :cond_6

    goto :goto_3

    .line 3122
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3123
    iget-object v3, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    invoke-interface {v3}, Lgbsdk/common/host/abuv;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3124
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3125
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/common/host/abuw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3126
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3127
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 3129
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/String;

    aput-object v4, v7, v2

    invoke-static {v5, v7}, Lgbsdk/common/host/abvn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3130
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5114
    :cond_8
    iput-object v0, p0, Lgbsdk/common/host/abvr;->dW:Ljava/util/List;

    goto :goto_4

    .line 3109
    :cond_9
    :goto_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    invoke-interface {v3}, Lgbsdk/common/host/abuv;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3110
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abuw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3112
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3115
    :cond_a
    iget-object v0, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    invoke-interface {v0}, Lgbsdk/common/host/abuv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3116
    iget-object v3, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    invoke-interface {v3}, Lgbsdk/common/host/abuv;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3117
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lgbsdk/common/host/abvn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3119
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4114
    iput-object v0, p0, Lgbsdk/common/host/abvr;->dW:Ljava/util/List;

    .line 49
    :goto_4
    invoke-static {p0}, Lgbsdk/common/host/abvt;->b(Lgbsdk/common/host/abvr;)Z

    move-result v0

    .line 52
    iget-boolean v1, p0, Lgbsdk/common/host/abvr;->cR:Z

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 53
    iget-object p0, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    invoke-interface {p0}, Lgbsdk/common/host/abuv;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method
