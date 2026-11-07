.class public Lgbsdk/common/host/abqp;
.super Ljava/lang/Object;
.source "MonitorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abqp$ab;,
        Lgbsdk/common/host/abqp$ac;,
        Lgbsdk/common/host/abqp$ad;
    }
.end annotation


# static fields
.field public static final SETTINGS_NAME:Ljava/lang/String; = "monitor_settings"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public BA:Lgbsdk/common/host/abqp$ad;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vlog_settings"
    .end annotation
.end field

.field public BB:Lgbsdk/common/host/abqp$ac;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apm_settings"
    .end annotation
.end field

.field public BC:Lgbsdk/common/host/abqp$ab;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apk_channel_settings"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Lgbsdk/common/host/abqp$ad;

    invoke-direct {v1}, Lgbsdk/common/host/abqp$ad;-><init>()V

    iput-object v1, v0, Lgbsdk/common/host/abqp;->BA:Lgbsdk/common/host/abqp$ad;

    .line 22
    new-instance v1, Lgbsdk/common/host/abqp$ac;

    const-string v2, "com.bytedance"

    const-string v3, "com.ss"

    const-string v4, "com.ttgame"

    const-string v5, "com.ttnet"

    const-string v6, "gbsdk"

    const-string v7, "com.ixigua"

    const-string v8, "com.monitor.cloudmessage"

    const-string v9, "com.pandora"

    const-string v10, "com.volcengine.zeus"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "libEncryptorP"

    const-string v4, "libsscronet"

    const-string v5, "libEncryptor"

    const-string v6, "libbyte_rec"

    const-string v7, "libttvesdk"

    const-string v8, "libtffmpeg"

    const-string v9, "libgp"

    const-string v10, "libx264"

    const-string v11, "libttcrypto"

    const-string v12, "libfdk-aac"

    const-string v13, "libCtaApiLib"

    const-string v14, "libttboringssl"

    const-string v15, "libkeva"

    const-string v16, "libyuv"

    const-string v17, "libcjtfccsm"

    const-string v18, "libalog"

    const-string v19, "libapminsightb"

    const-string v20, "libapminsighta"

    const-string v21, "libttmverify"

    const-string v22, "libgl_capture"

    const-string v23, "libaudiocapture"

    const-string v24, "libvehook"

    const-string v25, "libzeusflipped.so"

    filled-new-array/range {v3 .. v25}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgbsdk/common/host/abqp$ac;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, v0, Lgbsdk/common/host/abqp;->BB:Lgbsdk/common/host/abqp$ac;

    .line 31
    new-instance v1, Lgbsdk/common/host/abqp$ab;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgbsdk/common/host/abqp$ab;-><init>(I)V

    iput-object v1, v0, Lgbsdk/common/host/abqp;->BC:Lgbsdk/common/host/abqp$ab;

    return-void
.end method

.method public static dS()Lgbsdk/common/host/abqp;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abqp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "737609250fbfd407dfc1566e7b8beb7f"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abqp;

    return-object v0

    .line 111
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abqp;->dT()Lgbsdk/common/host/abqp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 113
    const-class v0, Lgbsdk/common/host/abqp;

    const-string v1, "monitor_settings"

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->parse(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abqp;

    :cond_1
    if-nez v0, :cond_2

    .line 116
    new-instance v0, Lgbsdk/common/host/abqp;

    invoke-direct {v0}, Lgbsdk/common/host/abqp;-><init>()V

    :cond_2
    return-object v0
.end method

.method private static dT()Lgbsdk/common/host/abqp;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abqp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "16b073dfaab6155bc086862f658ef68a"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abqp;

    return-object v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getSettingsResponse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getSettingsResponse()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "settings"

    .line 128
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "monitor_settings"

    .line 131
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 134
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lgbsdk/common/host/abqp;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abqp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_3
    return-object v2
.end method
