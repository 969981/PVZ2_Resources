.class public Lgbsdk/common/host/ablm;
.super Lgbsdk/common/host/ablk;
.source "DelayTypedAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final qU:Ljava/lang/String; = "p"

.field private static final qV:Ljava/lang/String; = "s"


# instance fields
.field private gN:I

.field private qR:I

.field private qS:I

.field private final qT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lgbsdk/common/host/ablm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lgbsdk/common/host/ablk;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lgbsdk/common/host/ablm;->gN:I

    .line 28
    iput v0, p0, Lgbsdk/common/host/ablm;->qR:I

    .line 29
    iput v0, p0, Lgbsdk/common/host/ablm;->qS:I

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablm;->qT:Ljava/util/Map;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lgbsdk/common/host/ablk$ab;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lgbsdk/common/host/ablk$ab;"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablm;->a(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 104
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/ablm;->qT:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 105
    invoke-direct {p0}, Lgbsdk/common/host/ablm;->cs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    sget-object p1, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tnc tag map is empty, result delay time is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qP:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 112
    :cond_2
    invoke-static {}, Lgbsdk/common/host/abhc;->aQ()Z

    move-result p1

    if-nez p1, :cond_4

    .line 113
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    sget-object p1, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    const-string p2, "this action with tag is not enabled"

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_3
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1

    :cond_4
    const-string p1, ""

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p2, "s=0;p=0"

    .line 123
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ";"

    const-string v3, "="

    .line 126
    invoke-static {p2, v2, v3, v1}, Lgbsdk/common/host/ablf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 128
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1

    .line 130
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 131
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_7
    sget-object v1, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    iget v1, v1, Lgbsdk/common/host/abhc$ab;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    sget-object v2, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    sget-object v3, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    if-eq v2, v3, :cond_8

    .line 137
    invoke-static {}, Lgbsdk/common/host/abhc;->aP()Lgbsdk/common/host/abhc$ab;

    move-result-object v1

    iget v1, v1, Lgbsdk/common/host/abhc$ab;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    const-string v2, "s"

    .line 139
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/abmf;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 145
    invoke-static {v1}, Lgbsdk/common/host/able;->N(Landroid/content/Context;)Z

    move-result v1

    goto :goto_1

    :cond_9
    const/4 v1, 0x1

    :goto_1
    xor-int/2addr v1, v2

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    .line 148
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 151
    sget-object v1, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request tag string is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_a
    sget-object p2, Lgbsdk/common/host/ablk$ab;->qP:Lgbsdk/common/host/ablk$ab;

    .line 158
    iget-object v1, p0, Lgbsdk/common/host/ablm;->qT:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_c

    .line 161
    sget-object p2, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    goto :goto_2

    .line 164
    :cond_c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 165
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 166
    sget-object p2, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    .line 170
    :cond_d
    :goto_2
    sget-object v1, Lgbsdk/common/host/ablk$ab;->qP:Lgbsdk/common/host/ablk$ab;

    if-ne p2, v1, :cond_e

    .line 171
    invoke-direct {p0}, Lgbsdk/common/host/ablm;->cs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_e
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 174
    sget-object v1, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "match tag result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v1, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will delay time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object p3, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request tag map is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object p1, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tnc tag map is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgbsdk/common/host/ablm;->qT:Ljava/util/Map;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-object p2

    .line 101
    :cond_10
    :goto_3
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1
.end method

.method private cs()I
    .locals 3

    .line 183
    iget v0, p0, Lgbsdk/common/host/ablm;->gN:I

    if-lez v0, :cond_0

    return v0

    .line 185
    :cond_0
    iget v0, p0, Lgbsdk/common/host/ablm;->qR:I

    iget v1, p0, Lgbsdk/common/host/ablm;->qS:I

    if-ge v0, v1, :cond_1

    .line 186
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 187
    iget v1, p0, Lgbsdk/common/host/ablm;->qS:I

    iget v2, p0, Lgbsdk/common/host/ablm;->qR:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lgbsdk/common/host/ablm;->qR:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lgbsdk/common/host/ablk$ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lgbsdk/common/host/ablk$ab;"
        }
    .end annotation

    .line 36
    sget-object v0, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    const-string v1, "take delay action"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lgbsdk/common/host/ablm;->cp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgbsdk/common/host/ablm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lgbsdk/common/host/ablk$ab;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;J)Z
    .locals 5

    .line 46
    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablm;->B(Lorg/json/JSONObject;)V

    const-string p2, "tag"

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_3

    const-string p3, ";"

    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 53
    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    aget-object v1, p2, v0

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    const-string v4, "="

    .line 55
    invoke-static {v1, v3, v4, v2}, Lgbsdk/common/host/ablf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 59
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 60
    iget-object v3, p0, Lgbsdk/common/host/ablm;->qT:Ljava/util/Map;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_1

    .line 62
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 64
    :cond_1
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v4, p0, Lgbsdk/common/host/ablm;->qT:Ljava/util/Map;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "delay"

    .line 70
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lgbsdk/common/host/ablm;->gN:I

    const-string p2, "random"

    .line 71
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 74
    iget p2, p0, Lgbsdk/common/host/ablm;->gN:I

    const/4 p3, 0x1

    if-gtz p2, :cond_7

    if-eqz p1, :cond_7

    .line 75
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    return p4

    .line 79
    :cond_4
    :try_start_0
    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    .line 82
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_4
    if-lez p2, :cond_6

    if-lez p1, :cond_6

    if-lt p2, p1, :cond_5

    goto :goto_5

    :cond_5
    move p4, p2

    goto :goto_6

    :cond_6
    :goto_5
    return p4

    :cond_7
    const/4 p1, 0x0

    .line 89
    :goto_6
    iput p4, p0, Lgbsdk/common/host/ablm;->qR:I

    .line 90
    iput p1, p0, Lgbsdk/common/host/ablm;->qS:I

    .line 91
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 92
    sget-object p1, Lgbsdk/common/host/ablm;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "initwithparam tnc tag map is "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lgbsdk/common/host/ablm;->qT:Ljava/util/Map;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return p3
.end method
