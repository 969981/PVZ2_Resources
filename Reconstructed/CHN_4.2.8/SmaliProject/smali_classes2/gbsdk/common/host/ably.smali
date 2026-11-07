.class public Lgbsdk/common/host/ably;
.super Ljava/lang/Object;
.source "HttpDnsResolveCall.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final qi:Ljava/lang/String; = "tt-ok"

.field private static final qj:Ljava/lang/String; = "android"

.field public static final qk:I = 0x3

.field public static final ql:Ljava/lang/String; = "httpdns_completed_hosts"


# instance fields
.field private ju:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private final pQ:Ljava/lang/String;

.field private final qb:Lgbsdk/common/host/ablw;

.field private qm:Ljava/lang/String;

.field private qn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qo:Lgbsdk/common/host/abix$ab;

.field private final qp:Lcom/bytedance/common/utility/collection/WeakHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lgbsdk/common/host/ably;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/ablw;Lgbsdk/common/host/abix$ab;Lcom/bytedance/common/utility/collection/WeakHandler;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ably;->ju:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ably;->qn:Ljava/util/List;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lgbsdk/common/host/ably;->mType:I

    .line 45
    iput-object p1, p0, Lgbsdk/common/host/ably;->qm:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lgbsdk/common/host/ably;->pQ:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    .line 48
    iput-object p4, p0, Lgbsdk/common/host/ably;->qo:Lgbsdk/common/host/abix$ab;

    .line 49
    iput-object p5, p0, Lgbsdk/common/host/ably;->qp:Lcom/bytedance/common/utility/collection/WeakHandler;

    return-void
.end method

.method private A(Lorg/json/JSONObject;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "host"

    .line 164
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    sget-object v1, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseSingleHostHttpDnsResponse for host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ttl"

    .line 166
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "ips"

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 172
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lgbsdk/common/host/ablr;->aE(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_1
    invoke-static {v2}, Lgbsdk/common/host/ablr;->aF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_2
    sget-object v3, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "httpdns server returned a invalid address: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_3
    iget-object p1, p0, Lgbsdk/common/host/ably;->ju:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 184
    :cond_4
    new-instance p1, Lgbsdk/common/host/abix;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, p1

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lgbsdk/common/host/abix;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;I)V

    .line 185
    iget-object v1, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1, v0, p1}, Lgbsdk/common/host/ablw;->a(Ljava/lang/String;Lgbsdk/common/host/abix;)V

    .line 186
    iget-object p1, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/ablw;->ah(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lgbsdk/common/host/ably;->ju:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private aA(Ljava/lang/String;)V
    .locals 3

    .line 131
    sget-object v0, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    const-string v1, "parseHttpDnsResponse"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lgbsdk/common/host/ably;->ju:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    const-string p1, "dns"

    .line 138
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 142
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 143
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 144
    invoke-direct {p0, v2}, Lgbsdk/common/host/ably;->A(Lorg/json/JSONObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0, v0}, Lgbsdk/common/host/ably;->A(Lorg/json/JSONObject;)V

    :cond_3
    const-string p1, "httpdns_backup_ip"

    .line 150
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 152
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablz;->e(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    sget-object p1, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    const-string v0, "httpdns server returned a invalid json response."

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private az(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    sget-object v1, Lgbsdk/common/host/ablq;->qw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 111
    iput v2, p0, Lgbsdk/common/host/ably;->mType:I

    :cond_0
    const-string v1, "https://"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/q?host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/ably;->qm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "aid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v3

    iget-object v3, v3, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    invoke-interface {v3}, Lgbsdk/common/host/abls;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "okhttp_version="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgbsdk/common/host/ably;->pQ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "p="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "source="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tt-ok"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "f="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lgbsdk/common/host/ably;->mType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgbsdk/common/host/ably;->qo:Lgbsdk/common/host/abix$ab;

    invoke-virtual {v3}, Lgbsdk/common/host/abix$ab;->ordinal()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    iget-object v2, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    iget-object v2, v2, Lgbsdk/common/host/ablw;->pt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "refresh_bkup_ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1}, Lgbsdk/common/host/ablw;->cg()V

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0, p1}, Lgbsdk/common/host/ablo;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lgbsdk/common/host/ably;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    .line 54
    iget-object v0, p0, Lgbsdk/common/host/ably;->qm:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    iget-object v4, p0, Lgbsdk/common/host/ably;->ju:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v4, p0, Lgbsdk/common/host/ably;->qn:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start httpdns resolve for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/ably;->ju:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/ablz;->pR:Ljava/lang/String;

    .line 64
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1}, Lgbsdk/common/host/ablw;->ci()V

    .line 67
    :cond_1
    invoke-static {v0}, Lgbsdk/common/host/ablp;->aB(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    iget-object v1, v1, Lgbsdk/common/host/ablw;->pu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    .line 68
    invoke-direct {p0, v0}, Lgbsdk/common/host/ably;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 70
    iget-object v1, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1}, Lgbsdk/common/host/ablw;->ch()V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 74
    invoke-direct {p0, v0}, Lgbsdk/common/host/ably;->aA(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0}, Lgbsdk/common/host/ablw;->ci()V

    goto :goto_3

    .line 77
    :cond_4
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lgbsdk/common/host/ablr;->aF(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lgbsdk/common/host/ablr;->aE(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 79
    sget-object v3, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpdns backup domian hardcode ip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 82
    :cond_5
    invoke-direct {p0, v1}, Lgbsdk/common/host/ably;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 84
    sget-object v3, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpdns request failed use hardcode ip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " try next hardcode ip"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_6
    invoke-direct {p0, v3}, Lgbsdk/common/host/ably;->aA(Ljava/lang/String;)V

    .line 92
    :cond_7
    :goto_3
    iget-object v0, p0, Lgbsdk/common/host/ably;->ju:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v3, v1}, Lgbsdk/common/host/ablw;->ah(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lgbsdk/common/host/ably;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v3, v1}, Lgbsdk/common/host/ablw;->ac(Ljava/lang/String;)V

    goto :goto_4

    .line 97
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 98
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x3

    .line 99
    iput v1, v0, Landroid/os/Message;->what:I

    .line 100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    iget-object v3, p0, Lgbsdk/common/host/ably;->qn:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "httpdns_completed_hosts"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 103
    iget-object v1, p0, Lgbsdk/common/host/ably;->qp:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {v1, v0}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    sget-object v0, Lgbsdk/common/host/ably;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send message to collect result handler for host : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgbsdk/common/host/ably;->qn:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
