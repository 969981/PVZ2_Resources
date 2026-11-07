.class public final Lgbsdk/common/host/acbw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .line 15
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/volcengine/zeus/GlobalParam;->getDid()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 19
    :cond_0
    invoke-static {}, Lcom/volcengine/zeus/apm/ApmUtils;->getApmInstance()Lcom/volcengine/zeus/apm/AbsApm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/volcengine/zeus/apm/AbsApm;->getDid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
