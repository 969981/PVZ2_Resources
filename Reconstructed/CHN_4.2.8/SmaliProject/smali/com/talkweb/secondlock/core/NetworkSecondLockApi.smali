.class public Lcom/talkweb/secondlock/core/NetworkSecondLockApi;
.super Ljava/lang/Object;
.source "NetworkSecondLockApi.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecondLock"


# instance fields
.field private final client:Lcom/talkweb/network/ApiClient;

.field private volatile commonParams:Lcom/talkweb/secondlock/core/UspCommonParams;


# direct methods
.method public constructor <init>(Lcom/talkweb/network/config/NetworkConfig;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/talkweb/network/NetworkModule;->provide(Lcom/talkweb/network/config/NetworkConfig;)Lcom/talkweb/network/ApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    return-void
.end method

.method private buildBody()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    .line 150
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBodyWithPairs([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final varargs buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBodyWithPairs([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final varargs buildBodyWithPairs([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->commonParams:Lcom/talkweb/secondlock/core/UspCommonParams;

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1, v0}, Lcom/talkweb/secondlock/core/UspCommonParams;->into(Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 166
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 168
    iget-object v4, v3, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;->key:Ljava/lang/Object;

    iget-object v3, v3, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;->value:Ljava/lang/Object;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    invoke-direct {v0, p0, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$2;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$2;-><init>(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-object v0
.end method


# virtual methods
.method public bindPhone(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "phone"

    .line 55
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "code"

    invoke-static {p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v3

    .line 56
    iget-object v1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v5, Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;

    invoke-static {p3}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v6

    const-string v2, "/usp/bind"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public queryState(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody()Ljava/util/Map;

    move-result-object v2

    .line 43
    iget-object v0, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v4, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    invoke-static {p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v5

    const-string v1, "/usp/state"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "phone"

    .line 143
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "code"

    invoke-static {p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v3

    .line 144
    iget-object v1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v5, Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;

    invoke-static {p3}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v6

    const-string v2, "/usp/rebind"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "code"

    .line 113
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "newPassword"

    invoke-static {p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v3

    .line 114
    iget-object v1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v5, Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;

    invoke-static {p3}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v6

    const-string v2, "/usp/reset"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public sendBindSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "phone"

    .line 48
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v4

    .line 49
    iget-object v2, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v6, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-static {p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v7

    const-string v3, "/usp/bind/code"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public sendRebindNewCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "phone"

    .line 136
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v4

    .line 137
    iget-object v2, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v6, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-static {p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v7

    const-string v3, "/usp/rebind/new/code"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public sendRebindOldCode(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody()Ljava/util/Map;

    move-result-object v2

    .line 123
    iget-object v0, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v4, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-static {p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v5

    const-string v1, "/usp/rebind/old/code"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public sendResetSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "phone"

    .line 99
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v4

    .line 100
    iget-object v2, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v6, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-static {p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v7

    const-string v3, "/usp/reset/code"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public setCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->commonParams:Lcom/talkweb/secondlock/core/UspCommonParams;

    return-void
.end method

.method public setPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "password"

    .line 61
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v4

    .line 62
    iget-object v2, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v6, Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;

    invoke-static {p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v7

    const-string v3, "/usp/set"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public togglePassword(ZLcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    .line 91
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "enabled"

    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v4

    .line 92
    iget-object v2, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v6, Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;

    invoke-static {p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v7

    const-string v3, "/usp/toggle"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "password"

    .line 67
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v4

    .line 68
    iget-object v2, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v6, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    new-instance v7, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$1;

    invoke-direct {v7, p0, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$1;-><init>(Lcom/talkweb/secondlock/core/NetworkSecondLockApi;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    const-string v3, "/usp/verify"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public verifyRebindOldCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "code"

    .line 129
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v4

    .line 130
    iget-object v2, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v6, Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;

    invoke-static {p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v7

    const-string v3, "/usp/rebind/old/verify"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public verifyResetCode(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    const-string v1, "phone"

    .line 106
    invoke-static {v1, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "code"

    invoke-static {p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->pair(Ljava/lang/String;Ljava/lang/Object;)Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->buildBody([Lcom/talkweb/secondlock/core/NetworkSecondLockApi$Pair;)Ljava/util/Map;

    move-result-object v3

    .line 107
    iget-object v1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->client:Lcom/talkweb/network/ApiClient;

    const-class v5, Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;

    invoke-static {p3}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;

    move-result-object v6

    const-string v2, "/usp/reset/verify"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method
