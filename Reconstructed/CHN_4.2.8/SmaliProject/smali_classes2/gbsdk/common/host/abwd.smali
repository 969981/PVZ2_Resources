.class public Lgbsdk/common/host/abwd;
.super Ljava/lang/Object;
.source "GetDomainContext.java"


# instance fields
.field public aIA:Z

.field public aIB:Ljava/lang/String;

.field public aIC:Ljava/lang/String;

.field public aIv:J

.field public aIw:Ljava/lang/String;

.field public aIx:Ljava/lang/String;

.field public aIy:Ljava/lang/String;

.field public aIz:Ljava/lang/String;

.field public addCommonParam:Z

.field public status:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lgbsdk/common/host/abwd;->aIw:Ljava/lang/String;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lgbsdk/common/host/abwd;->addCommonParam:Z

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    iget v1, p0, Lgbsdk/common/host/abwd;->status:I

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    iget-object v1, p0, Lgbsdk/common/host/abwd;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    iget-wide v1, p0, Lgbsdk/common/host/abwd;->aIv:J

    const-string v3, "query_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    iget-boolean v1, p0, Lgbsdk/common/host/abwd;->aIA:Z

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lgbsdk/common/host/abwd;->aIx:Ljava/lang/String;

    const-string v2, "raw_sign"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v1, p0, Lgbsdk/common/host/abwd;->aIy:Ljava/lang/String;

    const-string v2, "ss_sign"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v1, p0, Lgbsdk/common/host/abwd;->aIz:Ljava/lang/String;

    const-string v2, "local_sign"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abwd;->aIw:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lgbsdk/common/host/abwd;->aIw:Ljava/lang/String;

    const-string v2, "err_msg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method
