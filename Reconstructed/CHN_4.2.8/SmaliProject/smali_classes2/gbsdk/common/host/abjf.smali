.class public Lgbsdk/common/host/abjf;
.super Ljava/lang/Object;
.source "OkHttp3RequestLog.java"


# instance fields
.field iS:Ljava/lang/String;

.field iZ:I

.field is:Ljava/lang/String;

.field mB:J

.field mC:J

.field mD:J

.field mE:J

.field mF:J

.field mG:J

.field mH:J

.field mI:J

.field mJ:J

.field mK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/net/InetSocketAddress;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mL:Ljava/net/Proxy$Type;

.field mM:Lgbsdk/common/host/abil;

.field mN:Losdk/okhttp3/TlsVersion;

.field mO:Losdk/okhttp3/CipherSuite;

.field mP:J

.field mQ:Losdk/okhttp3/Headers;

.field mR:I

.field mS:J

.field mT:Losdk/okhttp3/Protocol;

.field mU:Z

.field mV:Z

.field mW:Ljava/lang/String;

.field mZ:Ljava/net/Socket;

.field mr:J

.field ms:J

.field mt:J

.field mu:J

.field mv:J

.field mw:J

.field mx:J

.field my:J

.field mz:J

.field na:Losdk/okhttp3/Headers;

.field nb:I

.field nc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abjh;",
            ">;"
        }
    .end annotation
.end field

.field nd:Lgbsdk/common/host/abio;

.field ne:Ljava/lang/String;

.field nf:Lgbsdk/common/host/abja;

.field ng:Z

.field nh:Z

.field ni:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abmi;",
            ">;"
        }
    .end annotation
.end field

.field nj:I

.field nk:Lgbsdk/common/host/abiz$ab;

.field nl:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mr:J

    .line 40
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->ms:J

    .line 41
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mt:J

    .line 42
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mu:J

    .line 43
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mv:J

    .line 44
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mw:J

    .line 45
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mx:J

    .line 46
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->my:J

    .line 47
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mz:J

    .line 48
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mB:J

    .line 49
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mC:J

    .line 50
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mD:J

    .line 51
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mE:J

    .line 52
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mF:J

    .line 53
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mG:J

    .line 54
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mH:J

    .line 55
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mI:J

    .line 56
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mJ:J

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abjf;->mK:Ljava/util/List;

    .line 62
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    iput-object v0, p0, Lgbsdk/common/host/abjf;->mL:Ljava/net/Proxy$Type;

    .line 65
    sget-object v0, Lgbsdk/common/host/abil;->lO:Lgbsdk/common/host/abil;

    iput-object v0, p0, Lgbsdk/common/host/abjf;->mM:Lgbsdk/common/host/abil;

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mP:J

    const/4 v2, -0x1

    .line 74
    iput v2, p0, Lgbsdk/common/host/abjf;->mR:I

    .line 75
    iput-wide v0, p0, Lgbsdk/common/host/abjf;->mS:J

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lgbsdk/common/host/abjf;->mT:Losdk/okhttp3/Protocol;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lgbsdk/common/host/abjf;->mU:Z

    .line 78
    iput-boolean v0, p0, Lgbsdk/common/host/abjf;->mV:Z

    const-string v1, ""

    .line 79
    iput-object v1, p0, Lgbsdk/common/host/abjf;->mW:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lgbsdk/common/host/abjf;->iS:Ljava/lang/String;

    .line 87
    iput v0, p0, Lgbsdk/common/host/abjf;->nb:I

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lgbsdk/common/host/abjf;->nc:Ljava/util/List;

    .line 91
    sget-object v3, Lgbsdk/common/host/abio;->lS:Lgbsdk/common/host/abio;

    iput-object v3, p0, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    .line 92
    iput-object v1, p0, Lgbsdk/common/host/abjf;->ne:Ljava/lang/String;

    .line 93
    iput v2, p0, Lgbsdk/common/host/abjf;->iZ:I

    .line 94
    sget-object v2, Lgbsdk/common/host/abja;->oj:Lgbsdk/common/host/abja;

    iput-object v2, p0, Lgbsdk/common/host/abjf;->nf:Lgbsdk/common/host/abja;

    .line 95
    iput-object v1, p0, Lgbsdk/common/host/abjf;->is:Ljava/lang/String;

    .line 98
    iput-boolean v0, p0, Lgbsdk/common/host/abjf;->ng:Z

    .line 99
    iput-boolean v0, p0, Lgbsdk/common/host/abjf;->nh:Z

    .line 101
    iput v0, p0, Lgbsdk/common/host/abjf;->nj:I

    .line 105
    sget-object v0, Lgbsdk/common/host/abiz$ab;->pb:Lgbsdk/common/host/abiz$ab;

    iput-object v0, p0, Lgbsdk/common/host/abjf;->nk:Lgbsdk/common/host/abiz$ab;

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abjf;->nl:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    iput-object v1, p0, Lgbsdk/common/host/abjf;->nm:Ljava/lang/String;

    return-void
.end method

.method private H(Landroid/content/Context;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "source"

    const-string v2, "ssl"

    const-string v3, "dns"

    const-string v4, "server-timing"

    const-string v5, "tt-idc-switch"

    const-string v6, "method"

    .line 140
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 144
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v9

    iget-object v9, v9, Lgbsdk/common/host/abmf;->rI:Ljava/lang/String;

    .line 145
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, ","

    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 147
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 148
    array-length v12, v9

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_1

    aget-object v14, v9, v13

    .line 149
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 150
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const-string v9, "hit"

    .line 153
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v9, "ab_test"

    .line 155
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "load_state"

    .line 159
    iget-object v10, v1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    invoke-virtual {v10}, Lgbsdk/common/host/abio;->ordinal()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    iget-object v9, v1, Lgbsdk/common/host/abjf;->ne:Ljava/lang/String;

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "is_pending"

    .line 161
    iget-object v10, v1, Lgbsdk/common/host/abjf;->nf:Lgbsdk/common/host/abja;

    sget-object v12, Lgbsdk/common/host/abja;->ol:Lgbsdk/common/host/abja;

    if-ne v10, v12, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v9, "status"

    .line 162
    iget-object v10, v1, Lgbsdk/common/host/abjf;->nf:Lgbsdk/common/host/abja;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    iget-object v9, v1, Lgbsdk/common/host/abjf;->nf:Lgbsdk/common/host/abja;

    sget-object v10, Lgbsdk/common/host/abja;->ok:Lgbsdk/common/host/abja;

    if-eq v9, v10, :cond_4

    const-string v9, "net_error"

    .line 164
    iget v10, v1, Lgbsdk/common/host/abjf;->iZ:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string v9, "origin_url"

    .line 166
    iget-object v10, v1, Lgbsdk/common/host/abjf;->is:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "redirect_times"

    .line 167
    iget v10, v1, Lgbsdk/common/host/abjf;->nb:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 169
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 170
    iget-object v12, v1, Lgbsdk/common/host/abjf;->nc:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "code"

    if-eqz v14, :cond_6

    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgbsdk/common/host/abjh;

    .line 171
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 172
    iget v13, v14, Lgbsdk/common/host/abjh;->np:I

    invoke-virtual {v11, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    iget-object v13, v14, Lgbsdk/common/host/abjh;->ne:Ljava/lang/String;

    invoke-virtual {v11, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "url"

    .line 174
    iget-object v15, v14, Lgbsdk/common/host/abjh;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "internal"

    .line 175
    iget-boolean v15, v14, Lgbsdk/common/host/abjh;->nq:Z

    invoke-virtual {v11, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 177
    iget-object v11, v14, Lgbsdk/common/host/abjh;->mUrl:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 178
    iget-object v11, v14, Lgbsdk/common/host/abjh;->mUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 179
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 180
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 181
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_6
    const-string v6, "redirect_info"

    .line 185
    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "redirecting_list"

    .line 186
    invoke-virtual {v8, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "dispatched"

    .line 187
    iget-boolean v9, v1, Lgbsdk/common/host/abjf;->ng:Z

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "base"

    .line 188
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 192
    iget v8, v1, Lgbsdk/common/host/abjf;->mR:I

    invoke-virtual {v6, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "connection_info"

    .line 193
    iget-object v9, v1, Lgbsdk/common/host/abjf;->mT:Losdk/okhttp3/Protocol;

    invoke-static {v9}, Lgbsdk/common/host/abjf;->a(Losdk/okhttp3/Protocol;)Lgbsdk/common/host/abim;

    move-result-object v9

    iget v9, v9, Lgbsdk/common/host/abim;->lM:I

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    iget-object v8, v1, Lgbsdk/common/host/abjf;->mQ:Losdk/okhttp3/Headers;

    if-eqz v8, :cond_7

    .line 196
    iget-object v8, v1, Lgbsdk/common/host/abjf;->mQ:Losdk/okhttp3/Headers;

    invoke-virtual {v8}, Losdk/okhttp3/Headers;->byteCount()J

    move-result-wide v11

    goto :goto_3

    :cond_7
    const-wide/16 v11, 0x0

    :goto_3
    const-string v8, "sent_bytes"

    .line 198
    iget-wide v13, v1, Lgbsdk/common/host/abjf;->mP:J

    add-long/2addr v13, v11

    invoke-virtual {v6, v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 200
    iget-object v8, v1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    if-eqz v8, :cond_8

    .line 201
    iget-object v8, v1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    invoke-virtual {v8}, Losdk/okhttp3/Headers;->byteCount()J

    move-result-wide v11

    goto :goto_4

    :cond_8
    const-wide/16 v11, 0x0

    :goto_4
    const-string v8, "received_bytes"

    .line 203
    iget-wide v13, v1, Lgbsdk/common/host/abjf;->mS:J

    add-long/2addr v13, v11

    invoke-virtual {v6, v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "cached"

    .line 204
    iget-boolean v11, v1, Lgbsdk/common/host/abjf;->mU:Z

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "network_accessed"

    .line 205
    iget-boolean v11, v1, Lgbsdk/common/host/abjf;->mV:Z

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "via_proxy"

    .line 206
    iget-object v11, v1, Lgbsdk/common/host/abjf;->mL:Ljava/net/Proxy$Type;

    sget-object v12, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v11, v12, :cond_9

    const/4 v11, 0x1

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "response"

    .line 207
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 213
    iget-object v8, v1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, ""

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    .line 214
    :goto_6
    :try_start_2
    iget-object v12, v1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    invoke-virtual {v12}, Losdk/okhttp3/Headers;->size()I

    move-result v12

    if-ge v8, v12, :cond_b

    .line 215
    iget-object v12, v1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    invoke-virtual {v12, v8}, Losdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    .line 216
    iget-object v13, v1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    invoke-virtual {v13, v8}, Losdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v13

    .line 217
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "x-tt-"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 218
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 222
    :cond_b
    iget-object v8, v1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    invoke-virtual {v8, v5}, Losdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 223
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 224
    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_c
    iget-object v5, v1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    invoke-virtual {v5, v4}, Losdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 229
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    const-string v4, "header"

    .line 231
    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :cond_e
    move-object v5, v11

    .line 235
    :goto_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "libcore"

    const-string v8, "okhttp"

    .line 236
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "core_ver"

    const-string v8, "tt-ok/3.10.0.2"

    .line 237
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "is_main_process"

    .line 238
    invoke-static/range {p1 .. p1}, Lgbsdk/common/host/able;->N(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "ttnet_version"

    const-string v8, "4.1.79.36-gsdk"

    .line 239
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "retry_attempts"

    const/4 v8, -0x1

    .line 241
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "other"

    .line 242
    invoke-virtual {v7, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 246
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 248
    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mt:J

    iget-wide v14, v1, Lgbsdk/common/host/abjf;->ms:J

    invoke-static {v12, v13, v14, v15}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v12

    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "tcp"

    .line 249
    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mw:J

    iget-wide v14, v1, Lgbsdk/common/host/abjf;->mu:J

    invoke-static {v12, v13, v14, v15}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v12

    invoke-virtual {v6, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 250
    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mx:J

    iget-wide v14, v1, Lgbsdk/common/host/abjf;->mw:J

    invoke-static {v12, v13, v14, v15}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v12

    invoke-virtual {v6, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "send"

    .line 251
    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mz:J

    iget-wide v14, v1, Lgbsdk/common/host/abjf;->my:J

    .line 252
    invoke-static {v12, v13, v14, v15}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v12

    iget-wide v14, v1, Lgbsdk/common/host/abjf;->mC:J

    iget-wide v9, v1, Lgbsdk/common/host/abjf;->mB:J

    .line 253
    invoke-static {v14, v15, v9, v10}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v9

    add-long/2addr v12, v9

    .line 251
    invoke-virtual {v6, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 254
    iget-wide v8, v1, Lgbsdk/common/host/abjf;->mE:J

    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mz:J

    invoke-static {v8, v9, v12, v13}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v8

    const-string v10, "ttfb"

    .line 255
    invoke-virtual {v6, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "header_recv"

    .line 256
    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mE:J

    iget-wide v14, v1, Lgbsdk/common/host/abjf;->mD:J

    invoke-static {v12, v13, v14, v15}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "body_recv"

    .line 257
    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mG:J

    iget-wide v14, v1, Lgbsdk/common/host/abjf;->mF:J

    invoke-static {v12, v13, v14, v15}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "dispatch"

    .line 258
    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mJ:J

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    invoke-direct {v1, v5, v6, v8, v9}, Lgbsdk/common/host/abjf;->b(Ljava/lang/String;Lorg/json/JSONObject;J)V

    const-string v5, "detailed_duration"

    .line 260
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "start_time"

    .line 263
    iget-wide v8, v1, Lgbsdk/common/host/abjf;->mr:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "duration"

    .line 264
    iget-wide v8, v1, Lgbsdk/common/host/abjf;->mH:J

    iget-wide v12, v1, Lgbsdk/common/host/abjf;->mr:J

    invoke-static {v8, v9, v12, v13}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "request_sent_time"

    .line 265
    iget-wide v8, v1, Lgbsdk/common/host/abjf;->my:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "response_recv_time"

    .line 266
    iget-wide v8, v1, Lgbsdk/common/host/abjf;->mD:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "request"

    .line 267
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "timing"

    .line 268
    invoke-virtual {v7, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 273
    iget-object v5, v1, Lgbsdk/common/host/abjf;->mZ:Ljava/net/Socket;

    if-eqz v5, :cond_12

    .line 274
    iget-object v5, v1, Lgbsdk/common/host/abjf;->mZ:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 276
    sget-object v6, Lgbsdk/common/host/abir;->lC:Lgbsdk/common/host/abir;

    .line 277
    instance-of v8, v5, Ljava/net/Inet4Address;

    if-eqz v8, :cond_f

    .line 278
    sget-object v6, Lgbsdk/common/host/abir;->lD:Lgbsdk/common/host/abir;

    goto :goto_8

    .line 279
    :cond_f
    instance-of v8, v5, Ljava/net/Inet6Address;

    if-eqz v8, :cond_10

    .line 280
    sget-object v6, Lgbsdk/common/host/abir;->lE:Lgbsdk/common/host/abir;

    :cond_10
    :goto_8
    const-string v8, "address_family"

    .line 282
    invoke-virtual {v6}, Lgbsdk/common/host/abir;->ordinal()I

    move-result v6

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "socket_reused"

    .line 283
    iget-wide v8, v1, Lgbsdk/common/host/abjf;->mu:J

    const-wide/16 v12, -0x1

    cmp-long v10, v8, v12

    if-nez v10, :cond_11

    iget-wide v8, v1, Lgbsdk/common/host/abjf;->mI:J

    cmp-long v10, v8, v12

    if-eqz v10, :cond_11

    const/4 v8, 0x1

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    const-string v6, "remote"

    .line 285
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    :cond_12
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 291
    iget-object v6, v1, Lgbsdk/common/host/abjf;->mK:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 292
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "address"

    .line 293
    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/net/InetSocketAddress;

    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "result"

    .line 294
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    :cond_13
    const-string v6, "connection_attempts"

    .line 297
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "socket"

    .line 298
    invoke-virtual {v7, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "handshake_type"

    .line 302
    iget-object v6, v1, Lgbsdk/common/host/abjf;->mM:Lgbsdk/common/host/abil;

    invoke-virtual {v6}, Lgbsdk/common/host/abil;->ordinal()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "cipher_suite"

    .line 303
    iget-object v6, v1, Lgbsdk/common/host/abjf;->mO:Losdk/okhttp3/CipherSuite;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ssl_version"

    .line 304
    iget-object v6, v1, Lgbsdk/common/host/abjf;->mN:Losdk/okhttp3/TlsVersion;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    invoke-virtual {v7, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 309
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 310
    iget-boolean v5, v1, Lgbsdk/common/host/abjf;->nh:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "host_replace_map"

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    .line 311
    :try_start_3
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "host_replace_map_size"

    .line 312
    iget v6, v1, Lgbsdk/common/host/abjf;->nj:I

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_14
    const/4 v5, 0x1

    .line 314
    iget-object v8, v1, Lgbsdk/common/host/abjf;->ni:Ljava/util/List;

    if-eqz v8, :cond_1a

    .line 315
    iget-object v8, v1, Lgbsdk/common/host/abjf;->ni:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgbsdk/common/host/abmi;

    .line 316
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 317
    iget-boolean v12, v9, Lgbsdk/common/host/abmi;->qX:Z

    if-eqz v12, :cond_15

    const-string v12, "priority"

    .line 318
    iget v13, v9, Lgbsdk/common/host/abmi;->mPriority:I

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "type"

    .line 319
    iget v13, v9, Lgbsdk/common/host/abmi;->qY:I

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "action_hit"

    .line 320
    iget-boolean v13, v9, Lgbsdk/common/host/abmi;->qX:Z

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 321
    iget-object v12, v9, Lgbsdk/common/host/abmi;->ra:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v13, "replace_host"

    if-nez v12, :cond_16

    .line 322
    :try_start_4
    iget-object v12, v9, Lgbsdk/common/host/abmi;->ra:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 323
    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_17

    .line 324
    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c

    .line 327
    :cond_16
    invoke-virtual {v10, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    :goto_c
    const-string v12, "feedback"

    .line 329
    iget-boolean v13, v9, Lgbsdk/common/host/abmi;->qZ:Z

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 330
    iget-wide v12, v9, Lgbsdk/common/host/abmi;->qW:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_18

    const-string v12, "rule_id"

    .line 331
    iget-wide v14, v9, Lgbsdk/common/host/abmi;->qW:J

    invoke-virtual {v10, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 333
    :cond_18
    iget-object v12, v9, Lgbsdk/common/host/abmi;->qJ:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "service_name"

    .line 334
    iget-object v9, v9, Lgbsdk/common/host/abmi;->qJ:Ljava/lang/String;

    invoke-virtual {v10, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    :cond_19
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_1a
    const-string v8, "action_info"

    .line 340
    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "empty_action"

    .line 341
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v8

    invoke-virtual {v8}, Lgbsdk/common/host/abmf;->cw()Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 342
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    :goto_d
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v6

    invoke-virtual {v6}, Lgbsdk/common/host/abmf;->cy()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "update_time"

    .line 346
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v8

    invoke-virtual {v8}, Lgbsdk/common/host/abmf;->cz()J

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "epoch"

    .line 347
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v8

    invoke-virtual {v8}, Lgbsdk/common/host/abmf;->cx()J

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "url_dispatch"

    .line 348
    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v2

    iget-object v2, v2, Lgbsdk/common/host/abmf;->mTncEtag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "tt_tnc_etag"

    .line 350
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v6

    iget-object v6, v6, Lgbsdk/common/host/abmf;->mTncEtag:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    :cond_1b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 355
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 356
    iget-object v8, v1, Lgbsdk/common/host/abjf;->nl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 357
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    :cond_1c
    const-string v8, "address_list"

    .line 359
    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "httpdns_prefer"

    .line 360
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v8

    iget-object v8, v8, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    sget-object v6, Lgbsdk/common/host/abjc;->ov:Lgbsdk/common/host/abjc;

    .line 362
    sget-object v8, Lgbsdk/common/host/abjd;->op:Lgbsdk/common/host/abjd;

    .line 364
    sget-object v9, Lgbsdk/common/host/abjf$1;->nn:[I

    iget-object v10, v1, Lgbsdk/common/host/abjf;->nk:Lgbsdk/common/host/abiz$ab;

    invoke-virtual {v10}, Lgbsdk/common/host/abiz$ab;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_f

    .line 385
    :pswitch_0
    sget-object v6, Lgbsdk/common/host/abjc;->oA:Lgbsdk/common/host/abjc;

    goto :goto_f

    .line 380
    :pswitch_1
    sget-object v6, Lgbsdk/common/host/abjc;->ow:Lgbsdk/common/host/abjc;

    .line 381
    sget-object v8, Lgbsdk/common/host/abjd;->oq:Lgbsdk/common/host/abjd;

    const/4 v11, 0x1

    goto :goto_10

    .line 377
    :pswitch_2
    sget-object v6, Lgbsdk/common/host/abjc;->oz:Lgbsdk/common/host/abjc;

    goto :goto_f

    .line 374
    :pswitch_3
    sget-object v6, Lgbsdk/common/host/abjc;->oy:Lgbsdk/common/host/abjc;

    goto :goto_f

    .line 370
    :pswitch_4
    sget-object v6, Lgbsdk/common/host/abjc;->ow:Lgbsdk/common/host/abjc;

    .line 371
    sget-object v8, Lgbsdk/common/host/abjd;->or:Lgbsdk/common/host/abjd;

    goto :goto_f

    .line 366
    :pswitch_5
    sget-object v6, Lgbsdk/common/host/abjc;->ow:Lgbsdk/common/host/abjc;

    .line 367
    sget-object v8, Lgbsdk/common/host/abjd;->oq:Lgbsdk/common/host/abjd;

    :goto_f
    const/4 v11, 0x0

    .line 392
    :goto_10
    iget v4, v6, Lgbsdk/common/host/abjc;->lM:I

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "cache_source"

    .line 393
    iget v4, v8, Lgbsdk/common/host/abjd;->lM:I

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "from_stale_cache"

    .line 394
    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 395
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    invoke-static {}, Lgbsdk/common/host/abik;->bU()Lgbsdk/common/host/abik;

    move-result-object v0

    iget-object v2, v1, Lgbsdk/common/host/abjf;->nm:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lgbsdk/common/host/abik;->b(Ljava/lang/String;Lgbsdk/common/host/abjf;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    .line 398
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 401
    :goto_11
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Losdk/okhttp3/Protocol;)Lgbsdk/common/host/abim;
    .locals 1

    if-nez p0, :cond_0

    .line 501
    sget-object p0, Lgbsdk/common/host/abim;->lG:Lgbsdk/common/host/abim;

    return-object p0

    .line 503
    :cond_0
    sget-object v0, Lgbsdk/common/host/abjf$1;->no:[I

    invoke-virtual {p0}, Losdk/okhttp3/Protocol;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    .line 515
    sget-object p0, Lgbsdk/common/host/abim;->lG:Lgbsdk/common/host/abim;

    return-object p0

    .line 513
    :cond_1
    sget-object p0, Lgbsdk/common/host/abim;->lK:Lgbsdk/common/host/abim;

    return-object p0

    .line 511
    :cond_2
    sget-object p0, Lgbsdk/common/host/abim;->lI:Lgbsdk/common/host/abim;

    return-object p0

    .line 509
    :cond_3
    sget-object p0, Lgbsdk/common/host/abim;->lJ:Lgbsdk/common/host/abim;

    return-object p0

    .line 507
    :cond_4
    sget-object p0, Lgbsdk/common/host/abim;->lH:Lgbsdk/common/host/abim;

    return-object p0

    .line 505
    :cond_5
    sget-object p0, Lgbsdk/common/host/abim;->lL:Lgbsdk/common/host/abim;

    return-object p0
.end method

.method private static ab(Ljava/lang/String;)J
    .locals 7

    const-string v0, "="

    .line 477
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 478
    array-length v0, p0

    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 480
    :try_start_0
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :catch_0
    :cond_1
    :goto_0
    return-wide v1
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 11

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    new-instance v1, Lgbsdk/common/host/abjg;

    invoke-direct {v1}, Lgbsdk/common/host/abjg;-><init>()V

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, ","

    .line 409
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 411
    array-length v2, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, p1, v5

    const-string v7, ";"

    .line 412
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 413
    aget-object v7, v6, v3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v6, v4

    .line 414
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 415
    aget-object v7, v6, v3

    aget-object v6, v6, v4

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 420
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "hit"

    const-string v5, "origin"

    const-string v6, "inner"

    const-string v7, "edge"

    const-string v8, "cdn-cache"

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 422
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 424
    iput-boolean v4, v1, Lgbsdk/common/host/abjg;->nr:Z

    const-string v5, "="

    .line 425
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 426
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    iput-boolean v4, v1, Lgbsdk/common/host/abjg;->ns:Z

    goto :goto_1

    .line 429
    :cond_3
    iput-boolean v3, v1, Lgbsdk/common/host/abjg;->ns:Z

    goto :goto_1

    .line 431
    :cond_4
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 432
    invoke-static {v0}, Lgbsdk/common/host/abjf;->ab(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lgbsdk/common/host/abjg;->nt:J

    goto :goto_1

    .line 433
    :cond_5
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 434
    invoke-static {v0}, Lgbsdk/common/host/abjf;->ab(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lgbsdk/common/host/abjg;->nu:J

    goto :goto_1

    .line 435
    :cond_6
    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 436
    invoke-static {v0}, Lgbsdk/common/host/abjf;->ab(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lgbsdk/common/host/abjg;->nv:J

    goto :goto_1

    .line 437
    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 438
    invoke-static {v0}, Lgbsdk/common/host/abjf;->ab(Ljava/lang/String;)J

    move-result-wide v5

    .line 439
    invoke-virtual {p2, v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 444
    :cond_8
    iget-boolean p1, v1, Lgbsdk/common/host/abjg;->nr:Z

    const-string v0, "rtt"

    const-wide/16 v3, -0x1

    if-eqz p1, :cond_a

    iget-boolean p1, v1, Lgbsdk/common/host/abjg;->ns:Z

    if-eqz p1, :cond_a

    .line 445
    iget-wide v5, v1, Lgbsdk/common/host/abjg;->nt:J

    invoke-virtual {p2, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 446
    invoke-virtual {p2, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    cmp-long p1, p3, v3

    if-eqz p1, :cond_9

    .line 447
    iget-wide v2, v1, Lgbsdk/common/host/abjg;->nt:J

    cmp-long p1, p3, v2

    if-lez p1, :cond_9

    .line 448
    iget-wide v2, v1, Lgbsdk/common/host/abjg;->nt:J

    sub-long/2addr p3, v2

    iput-wide p3, v1, Lgbsdk/common/host/abjg;->nw:J

    .line 450
    :cond_9
    iget-wide p3, v1, Lgbsdk/common/host/abjg;->nw:J

    invoke-virtual {p2, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    .line 451
    :cond_a
    iget-boolean p1, v1, Lgbsdk/common/host/abjg;->nr:Z

    if-eqz p1, :cond_d

    .line 453
    iget-wide v9, v1, Lgbsdk/common/host/abjg;->nt:J

    invoke-virtual {p2, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "miss"

    .line 454
    invoke-virtual {p2, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    iget-wide v7, v1, Lgbsdk/common/host/abjg;->nu:J

    iget-wide v9, v1, Lgbsdk/common/host/abjg;->nv:J

    cmp-long p1, v7, v9

    if-lez p1, :cond_b

    .line 456
    iget-wide v7, v1, Lgbsdk/common/host/abjg;->nu:J

    iget-wide v9, v1, Lgbsdk/common/host/abjg;->nv:J

    sub-long/2addr v7, v9

    invoke-virtual {p2, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    :cond_b
    const/4 p1, -0x1

    .line 458
    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    :goto_2
    iget-wide v7, v1, Lgbsdk/common/host/abjg;->nv:J

    invoke-virtual {p2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    cmp-long p1, p3, v3

    if-eqz p1, :cond_c

    .line 461
    iget-wide v2, v1, Lgbsdk/common/host/abjg;->nu:J

    iget-wide v4, v1, Lgbsdk/common/host/abjg;->nt:J

    add-long/2addr v2, v4

    cmp-long p1, p3, v2

    if-lez p1, :cond_c

    .line 462
    iget-wide v2, v1, Lgbsdk/common/host/abjg;->nu:J

    sub-long/2addr p3, v2

    iget-wide v2, v1, Lgbsdk/common/host/abjg;->nt:J

    sub-long/2addr p3, v2

    iput-wide p3, v1, Lgbsdk/common/host/abjg;->nw:J

    .line 464
    :cond_c
    iget-wide p3, v1, Lgbsdk/common/host/abjg;->nw:J

    invoke-virtual {p2, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    .line 467
    :cond_d
    iget-wide v7, v1, Lgbsdk/common/host/abjg;->nv:J

    invoke-virtual {p2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    cmp-long p1, p3, v3

    if-eqz p1, :cond_e

    .line 468
    iget-wide v2, v1, Lgbsdk/common/host/abjg;->nv:J

    cmp-long p1, p3, v2

    if-lez p1, :cond_e

    .line 469
    iget-wide v2, v1, Lgbsdk/common/host/abjg;->nv:J

    sub-long/2addr p3, v2

    iput-wide p3, v1, Lgbsdk/common/host/abjg;->nw:J

    .line 471
    :cond_e
    iget-wide p3, v1, Lgbsdk/common/host/abjg;->nw:J

    invoke-virtual {p2, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_3
    return-void
.end method

.method private static d(JJ)J
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    sub-long/2addr p0, p2

    return-wide p0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Landroid/content/Context;)V
    .locals 6

    .line 110
    iget-object v0, p0, Lgbsdk/common/host/abjf;->mW:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->remoteIp:Ljava/lang/String;

    .line 111
    iget-wide v0, p0, Lgbsdk/common/host/abjf;->mt:J

    iget-wide v2, p0, Lgbsdk/common/host/abjf;->ms:J

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->dnsTime:J

    .line 112
    iget-wide v0, p0, Lgbsdk/common/host/abjf;->mw:J

    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mu:J

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->connectTime:J

    .line 113
    iget-wide v0, p0, Lgbsdk/common/host/abjf;->mx:J

    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mw:J

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sslTime:J

    .line 114
    iget-wide v0, p0, Lgbsdk/common/host/abjf;->mz:J

    iget-wide v2, p0, Lgbsdk/common/host/abjf;->my:J

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mC:J

    iget-wide v4, p0, Lgbsdk/common/host/abjf;->mB:J

    .line 115
    invoke-static {v2, v3, v4, v5}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sendTime:J

    const-wide/16 v0, -0x1

    .line 116
    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->pushTime:J

    .line 117
    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mE:J

    iget-wide v4, p0, Lgbsdk/common/host/abjf;->mz:J

    invoke-static {v2, v3, v4, v5}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receiveTime:J

    .line 118
    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mu:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mI:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->isSocketReused:Z

    .line 119
    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->ttfbMs:J

    .line 120
    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mH:J

    iget-wide v4, p0, Lgbsdk/common/host/abjf;->mr:J

    invoke-static {v2, v3, v4, v5}, Lgbsdk/common/host/abjf;->d(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->totalTime:J

    .line 121
    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mP:J

    iput-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sentByteCount:J

    .line 122
    iget-wide v2, p0, Lgbsdk/common/host/abjf;->mS:J

    iput-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receivedByteCount:J

    .line 123
    invoke-direct {p0, p2}, Lgbsdk/common/host/abjf;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestLog:Ljava/lang/String;

    .line 124
    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->retryAttempts:J

    .line 125
    iget-object p2, p0, Lgbsdk/common/host/abjf;->mQ:Losdk/okhttp3/Headers;

    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {p2}, Losdk/okhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestHeaders:Ljava/lang/String;

    .line 127
    iget-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sentByteCount:J

    iget-object p2, p0, Lgbsdk/common/host/abjf;->mQ:Losdk/okhttp3/Headers;

    invoke-virtual {p2}, Losdk/okhttp3/Headers;->byteCount()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sentByteCount:J

    .line 129
    :cond_1
    iget-object p2, p0, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    if-eqz p2, :cond_2

    .line 130
    invoke-virtual {p2}, Losdk/okhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->responseHeaders:Ljava/lang/String;

    .line 131
    iget-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receivedByteCount:J

    iget-object p2, p0, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    invoke-virtual {p2}, Losdk/okhttp3/Headers;->byteCount()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receivedByteCount:J

    .line 133
    :cond_2
    iget-object p2, p0, Lgbsdk/common/host/abjf;->iS:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    .line 134
    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->nativePostTaskStartTime:J

    .line 135
    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->nativeRequestStartTime:J

    .line 136
    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->nativeWaitContext:J

    return-void
.end method
