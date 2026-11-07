.class public final Lgbsdk/common/host/abuy;
.super Lgbsdk/common/host/abvd;
.source "TemplateMessageHandler.java"

# interfaces
.implements Lgbsdk/common/host/abuv;


# instance fields
.field public aKN:Lgbsdk/common/host/abwf;

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lgbsdk/common/host/abvd;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lgbsdk/common/host/abuy;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "custom"

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    iget-object v1, p0, Lgbsdk/common/host/abuy;->c:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final b(Lgbsdk/common/host/abwh;)Z
    .locals 11

    .line 1037
    iget-object v0, p1, Lgbsdk/common/host/abwh;->a:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lgbsdk/common/host/abuy;->aKN:Lgbsdk/common/host/abwf;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v1, p1}, Lgbsdk/common/host/abuy;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abwh;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "template"

    .line 51
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "template\u5b57\u6bb5\u5f02\u5e38"

    .line 53
    invoke-virtual {p0, v0, p1}, Lgbsdk/common/host/abuy;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;)V

    return v2

    .line 1098
    :cond_2
    iget-object v0, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    const-string v3, "cloud_command_id"

    .line 58
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lgbsdk/common/host/abuy;->aKN:Lgbsdk/common/host/abwf;

    invoke-interface {v0}, Lgbsdk/common/host/abwf;->b()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lgbsdk/common/host/abuy;->aKN:Lgbsdk/common/host/abwf;

    invoke-interface {v3}, Lgbsdk/common/host/abwf;->hD()Lgbsdk/common/host/abva;

    move-result-object v3

    .line 2026
    iget-boolean v4, v3, Lgbsdk/common/host/abva;->a:Z

    if-eqz v4, :cond_5

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "{\"result\" : \"no one handle it.\"}"

    .line 70
    :cond_3
    iget-object v4, p0, Lgbsdk/common/host/abuy;->a:Ljava/lang/String;

    invoke-static {v4}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v4

    .line 2072
    iget-object v4, v4, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 70
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lgbsdk/common/host/abuz;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "template\u6587\u4ef6\u751f\u6210\u5f02\u5e38"

    .line 72
    invoke-virtual {p0, v0, p1}, Lgbsdk/common/host/abuy;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;)V

    return v2

    .line 75
    :cond_4
    iput-object v0, p0, Lgbsdk/common/host/abuy;->c:Ljava/io/File;

    const-string v0, "fileContentType"

    const-string v4, "template_file_type"

    .line 78
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    new-instance v0, Lgbsdk/common/host/abvr;

    iget-object v6, p0, Lgbsdk/common/host/abuy;->a:Ljava/lang/String;

    .line 2098
    iget-object v8, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    .line 3034
    iget-object v10, v3, Lgbsdk/common/host/abva;->aKL:Ljava/util/HashMap;

    move-object v5, v0

    move-object v9, p0

    .line 80
    invoke-direct/range {v5 .. v10}, Lgbsdk/common/host/abvr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/abuv;Ljava/util/HashMap;)V

    .line 81
    invoke-static {v0}, Lgbsdk/common/host/abuw;->a(Lgbsdk/common/host/abvr;)V

    goto :goto_0

    .line 4030
    :cond_5
    iget-object v0, v3, Lgbsdk/common/host/abva;->b:Ljava/lang/String;

    .line 4034
    iget-object v1, v3, Lgbsdk/common/host/abva;->aKL:Ljava/util/HashMap;

    .line 83
    invoke-virtual {p0, v0, v1, p1}, Lgbsdk/common/host/abuy;->a(Ljava/lang/String;Ljava/util/HashMap;Lgbsdk/common/host/abwh;)V

    :goto_0
    return v2
.end method
