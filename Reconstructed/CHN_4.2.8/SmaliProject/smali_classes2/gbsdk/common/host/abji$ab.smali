.class public Lgbsdk/common/host/abji$ab;
.super Ljava/lang/Object;
.source "ConcurrentCronetSsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field iX:Ljava/lang/String;

.field iY:J

.field iZ:I

.field ja:Ljava/io/IOException;

.field mId:I

.field mResponseCode:I

.field mStartTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lgbsdk/common/host/abji$ab;->mId:I

    .line 138
    iput-object p1, p0, Lgbsdk/common/host/abji$ab;->iX:Ljava/lang/String;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lgbsdk/common/host/abji$ab;->mStartTime:J

    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lgbsdk/common/host/abji$ab;->iZ:I

    .line 141
    iput v0, p0, Lgbsdk/common/host/abji$ab;->mResponseCode:I

    return-void
.end method


# virtual methods
.method toJson()Lorg/json/JSONObject;
    .locals 4

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "host"

    .line 147
    iget-object v2, p0, Lgbsdk/common/host/abji$ab;->iX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "start"

    .line 148
    iget-wide v2, p0, Lgbsdk/common/host/abji$ab;->mStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "end"

    .line 149
    iget-wide v2, p0, Lgbsdk/common/host/abji$ab;->iY:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "net_error"

    .line 150
    iget v2, p0, Lgbsdk/common/host/abji$ab;->iZ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 151
    iget v2, p0, Lgbsdk/common/host/abji$ab;->mResponseCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    iget-object v1, p0, Lgbsdk/common/host/abji$ab;->ja:Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lgbsdk/common/host/abji$ab;->ja:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "exception"

    .line 156
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
