.class public abstract Lgbsdk/common/host/ablk;
.super Ljava/lang/Object;
.source "BaseDispatchAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/ablk$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mPriority:I

.field protected qA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected qB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected qC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected qD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected qE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected qF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qG:J

.field private qH:J

.field public qI:J

.field public qJ:Ljava/lang/String;

.field protected qK:I

.field public qL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lgbsdk/common/host/ablk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablk;->qA:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablk;->qB:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablk;->qC:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablk;->qD:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablk;->qE:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablk;->qF:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablk;->qL:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;IJJJLjava/lang/String;JLjava/util/List;I)Lgbsdk/common/host/ablk;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "IJJJ",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lgbsdk/common/host/ablk;"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "tc"

    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Lgbsdk/common/host/abmd;

    invoke-direct {v1}, Lgbsdk/common/host/abmd;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "dispatch"

    .line 42
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    new-instance v1, Lgbsdk/common/host/abmj;

    invoke-direct {v1}, Lgbsdk/common/host/abmj;-><init>()V

    :cond_1
    const-string v3, "delay"

    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    new-instance v1, Lgbsdk/common/host/ablm;

    invoke-direct {v1}, Lgbsdk/common/host/ablm;-><init>()V

    :cond_2
    if-nez v1, :cond_3

    return-object v2

    :cond_3
    move v0, p2

    .line 52
    iput v0, v1, Lgbsdk/common/host/ablk;->mPriority:I

    move-wide v3, p3

    move-wide v5, p5

    .line 53
    invoke-direct {v1, p3, p4, p5, p6}, Lgbsdk/common/host/ablk;->e(JJ)V

    move-wide v3, p7

    .line 54
    iput-wide v3, v1, Lgbsdk/common/host/ablk;->qI:J

    move-object/from16 v0, p12

    .line 55
    iput-object v0, v1, Lgbsdk/common/host/ablk;->qL:Ljava/util/List;

    move/from16 v0, p13

    .line 56
    invoke-direct {v1, v0}, Lgbsdk/common/host/ablk;->s(I)V

    move-object v0, p1

    move-object/from16 v3, p9

    move-wide/from16 v4, p10

    .line 57
    invoke-virtual {v1, p1, v3, v4, v5}, Lgbsdk/common/host/ablk;->a(Lorg/json/JSONObject;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    return-object v2
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 219
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 220
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cq()Z
    .locals 7

    .line 125
    iget-wide v0, p0, Lgbsdk/common/host/ablk;->qG:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    iget-wide v0, p0, Lgbsdk/common/host/ablk;->qH:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    .line 128
    :cond_0
    iget-wide v0, p0, Lgbsdk/common/host/ablk;->qG:J

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    iget-wide v0, p0, Lgbsdk/common/host/ablk;->qH:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 132
    iget-wide v4, p0, Lgbsdk/common/host/ablk;->qG:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    iget-wide v4, p0, Lgbsdk/common/host/ablk;->qH:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    return v2

    .line 135
    :cond_2
    sget-object v0, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    const-string v1, "current time is out action lifecycle"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v3
.end method

.method private e(JJ)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lgbsdk/common/host/ablk;->qG:J

    .line 72
    iput-wide p3, p0, Lgbsdk/common/host/ablk;->qH:J

    return-void
.end method

.method private s(I)V
    .locals 0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    .line 86
    iput p1, p0, Lgbsdk/common/host/ablk;->qK:I

    goto :goto_0

    .line 88
    :cond_0
    iput p1, p0, Lgbsdk/common/host/ablk;->qK:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected B(Lorg/json/JSONObject;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qA:Ljava/util/List;

    const-string v1, "host_group"

    invoke-direct {p0, p1, v1, v0}, Lgbsdk/common/host/ablk;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qB:Ljava/util/List;

    const-string v1, "equal_group"

    invoke-direct {p0, p1, v1, v0}, Lgbsdk/common/host/ablk;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qC:Ljava/util/List;

    const-string v1, "prefixes_group"

    invoke-direct {p0, p1, v1, v0}, Lgbsdk/common/host/ablk;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 143
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qD:Ljava/util/List;

    const-string v1, "contain_group"

    invoke-direct {p0, p1, v1, v0}, Lgbsdk/common/host/ablk;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 144
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qE:Ljava/util/List;

    const-string v1, "pattern_group"

    invoke-direct {p0, p1, v1, v0}, Lgbsdk/common/host/ablk;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 145
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qF:Ljava/util/List;

    const-string v1, "url_group"

    invoke-direct {p0, p1, v1, v0}, Lgbsdk/common/host/ablk;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected a(Landroid/net/Uri;)Z
    .locals 6

    .line 150
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 153
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 161
    sget-object p1, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    const-string v0, "host group is not match"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 165
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 167
    iget-object v3, p0, Lgbsdk/common/host/ablk;->qB:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 168
    iget-object v3, p0, Lgbsdk/common/host/ablk;->qB:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    sget-object p1, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path equal hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 176
    :cond_5
    iget-object v3, p0, Lgbsdk/common/host/ablk;->qC:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 177
    iget-object v3, p0, Lgbsdk/common/host/ablk;->qC:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 179
    sget-object p1, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path prefix hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 185
    :cond_7
    iget-object v3, p0, Lgbsdk/common/host/ablk;->qD:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 186
    iget-object v3, p0, Lgbsdk/common/host/ablk;->qD:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 188
    sget-object p1, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path contain hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 194
    :cond_9
    iget-object v3, p0, Lgbsdk/common/host/ablk;->qE:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 195
    iget-object v3, p0, Lgbsdk/common/host/ablk;->qE:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 197
    sget-object p1, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path pattern hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 204
    :cond_b
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 205
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 207
    sget-object p1, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "full url hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_d
    return v1
.end method

.method public a(Lgbsdk/common/host/abma;)Z
    .locals 4

    .line 105
    iget v0, p1, Lgbsdk/common/host/abma;->rL:I

    iget v1, p0, Lgbsdk/common/host/ablk;->mPriority:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 106
    sget-object v0, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jump action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgbsdk/common/host/ablk;->qJ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dispatchPriority: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget p1, p1, Lgbsdk/common/host/abma;->rL:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", actionPriority: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lgbsdk/common/host/ablk;->mPriority:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 111
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ablk;->qL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lgbsdk/common/host/abma;->ne:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/ablk;->qL:Ljava/util/List;

    .line 112
    iget-object v1, p1, Lgbsdk/common/host/abma;->ne:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    sget-object v0, Lgbsdk/common/host/ablk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request method not support: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lgbsdk/common/host/abma;->ne:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 117
    :cond_1
    invoke-direct {p0}, Lgbsdk/common/host/ablk;->cq()Z

    move-result p1

    return p1
.end method

.method public abstract a(Lorg/json/JSONObject;Ljava/lang/String;J)Z
.end method

.method public cp()Z
    .locals 1

    .line 121
    invoke-direct {p0}, Lgbsdk/common/host/ablk;->cq()Z

    move-result v0

    return v0
.end method
