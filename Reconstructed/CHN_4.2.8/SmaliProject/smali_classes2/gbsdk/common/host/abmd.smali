.class public Lgbsdk/common/host/abmd;
.super Lgbsdk/common/host/abmg;
.source "TCTypedAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private rp:Ljava/lang/String;

.field private rq:Ljava/lang/String;

.field private rr:Ljava/lang/String;

.field private rs:Ljava/lang/String;

.field private rt:Ljava/lang/String;

.field private ru:Z

.field private rv:I

.field private rw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lgbsdk/common/host/abmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lgbsdk/common/host/abmg;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lgbsdk/common/host/abmd;->ru:Z

    const/16 v1, 0x64

    .line 24
    iput v1, p0, Lgbsdk/common/host/abmd;->rv:I

    .line 26
    iput-boolean v0, p0, Lgbsdk/common/host/abmd;->rw:Z

    return-void
.end method

.method private cu()Z
    .locals 4

    .line 130
    iget v0, p0, Lgbsdk/common/host/abmd;->rv:I

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x0

    if-gtz v0, :cond_1

    return v3

    .line 137
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 138
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v2, p0, Lgbsdk/common/host/abmd;->rv:I

    if-ge v0, v2, :cond_2

    return v1

    .line 141
    :cond_2
    sget-object v0, Lgbsdk/common/host/abmd;->TAG:Ljava/lang/String;

    const-string v1, "tc drop action was probabilistic discard"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private y(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "http"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "https"

    if-nez v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "ws"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "wss"

    if-nez v3, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 158
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lgbsdk/common/host/ablk$ab;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lgbsdk/common/host/ablk$ab;"
        }
    .end annotation

    .line 30
    sget-object v0, Lgbsdk/common/host/abmd;->TAG:Ljava/lang/String;

    const-string v1, "tc action"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-boolean v0, p0, Lgbsdk/common/host/abmd;->rw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 38
    :cond_0
    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    iget-boolean v2, p0, Lgbsdk/common/host/abmd;->ru:Z

    if-eqz v2, :cond_2

    .line 42
    sget-object p1, Lgbsdk/common/host/abmd;->TAG:Ljava/lang/String;

    const-string v2, "drop action"

    invoke-static {p1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lgbsdk/common/host/abmd;->cu()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lgbsdk/common/host/abmd;->a(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    .line 44
    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qO:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 47
    :cond_1
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 49
    :cond_2
    iget-object v2, p0, Lgbsdk/common/host/abmd;->rq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lgbsdk/common/host/abmd;->rp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lgbsdk/common/host/abmd;->rr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 67
    :cond_3
    sget-object v2, Lgbsdk/common/host/abmd;->TAG:Ljava/lang/String;

    const-string v3, "tc full url change"

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lgbsdk/common/host/abmd;->qF:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 69
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 72
    :cond_4
    iget-object v2, p0, Lgbsdk/common/host/abmd;->rt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 73
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgbsdk/common/host/abmd;->rt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 74
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 77
    :cond_5
    iget-object v0, p0, Lgbsdk/common/host/abmd;->rs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 78
    iget-object v0, p0, Lgbsdk/common/host/abmd;->qF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abmd;->rs:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, p1

    .line 80
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 81
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 83
    :cond_7
    invoke-interface {p2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qN:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 51
    :cond_8
    :goto_1
    invoke-virtual {p0, v0}, Lgbsdk/common/host/abmd;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgbsdk/common/host/abmd;->rp:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lgbsdk/common/host/abmd;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgbsdk/common/host/abmd;->rp:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    :cond_9
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lgbsdk/common/host/abmd;->rq:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgbsdk/common/host/abmd;->rq:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    :cond_a
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lgbsdk/common/host/abmd;->rr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgbsdk/common/host/abmd;->rr:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_b
    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qN:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 64
    :cond_c
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1
.end method

.method protected a(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abmd;->B(Lorg/json/JSONObject;)V

    const-string p3, "service_name"

    .line 102
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lgbsdk/common/host/abmd;->qJ:Ljava/lang/String;

    const-string p3, "scheme_replace"

    .line 103
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lgbsdk/common/host/abmd;->rp:Ljava/lang/String;

    const-string p3, "host_replace"

    .line 104
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lgbsdk/common/host/abmd;->rq:Ljava/lang/String;

    const-string p3, "path_replace"

    .line 105
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lgbsdk/common/host/abmd;->rr:Ljava/lang/String;

    const-string p3, "url_contain"

    .line 106
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lgbsdk/common/host/abmd;->rt:Ljava/lang/String;

    const-string p3, "replace"

    .line 108
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lgbsdk/common/host/abmd;->rs:Ljava/lang/String;

    const-string p3, "drop"

    .line 109
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-ne p3, p5, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lgbsdk/common/host/abmd;->ru:Z

    const-string p3, "possibility"

    const/16 v0, 0x64

    .line 111
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 113
    iput p1, p0, Lgbsdk/common/host/abmd;->rv:I

    .line 119
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abmd;->qB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lgbsdk/common/host/abmd;->qC:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lgbsdk/common/host/abmd;->qD:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lgbsdk/common/host/abmd;->qE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lgbsdk/common/host/abmd;->qF:Ljava/util/List;

    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lgbsdk/common/host/abmd;->ru:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lgbsdk/common/host/abmd;->rp:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lgbsdk/common/host/abmd;->rq:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lgbsdk/common/host/abmd;->rr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lgbsdk/common/host/abmd;->rs:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 123
    :cond_3
    iput-boolean p5, p0, Lgbsdk/common/host/abmd;->rw:Z

    .line 125
    :cond_4
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return p5
.end method

.method protected b(Ljava/lang/String;ZI)V
    .locals 0

    return-void
.end method

.method public ct()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
