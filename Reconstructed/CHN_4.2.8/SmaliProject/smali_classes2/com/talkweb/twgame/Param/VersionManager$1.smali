.class Lcom/talkweb/twgame/Param/VersionManager$1;
.super Ljava/lang/Object;
.source "VersionManager.java"

# interfaces
.implements Lcom/talkweb/twgame/net/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/Param/VersionManager;->getVersion(Landroid/content/Context;Lcom/talkweb/twgame/Param/SyncTwgameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, ""

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 106
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "code"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "data"

    .line 110
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "12345678123456781234567812345678"

    invoke-static {p1, v1}, Lcom/talkweb/twgame/tools/StringEncryptUtil;->decryptStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u5bc6\u540e\u6570\u636e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "adconfigversion"

    .line 115
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/talkweb/twgame/Param/VersionManager;->newVerCodeStr:Ljava/lang/String;

    const-string p1, "cdn"

    .line 116
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    sget-object v3, Lcom/talkweb/twgame/Param/VersionManager;->newVerUrl:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Lcom/talkweb/twgame/Param/VersionManager;->readJsonStr()V

    goto :goto_2

    .line 134
    :cond_2
    sput-boolean v0, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    .line 135
    sget-object p1, Lcom/talkweb/twgame/Param/VersionManager;->mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback;

    invoke-interface {p1}, Lcom/talkweb/twgame/Param/SyncTwgameCallback;->syncFinished()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    sput-boolean v0, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    .line 141
    sget-object p1, Lcom/talkweb/twgame/Param/VersionManager;->mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback;

    invoke-interface {p1}, Lcom/talkweb/twgame/Param/SyncTwgameCallback;->syncFinished()V

    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    sget p1, Lcom/talkweb/twgame/Param/VersionManager;->requestVerNum:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_4

    .line 96
    sget p1, Lcom/talkweb/twgame/Param/VersionManager;->requestVerNum:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/talkweb/twgame/Param/VersionManager;->requestVerNum:I

    .line 97
    sput-boolean v0, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    .line 98
    sget-object p1, Lcom/talkweb/twgame/Param/VersionManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/talkweb/twgame/Param/VersionManager;->mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback;

    invoke-static {p1, v0}, Lcom/talkweb/twgame/Param/VersionManager;->getVersion(Landroid/content/Context;Lcom/talkweb/twgame/Param/SyncTwgameCallback;)V

    goto :goto_2

    .line 101
    :cond_4
    invoke-static {}, Lcom/talkweb/twgame/Param/VersionManager;->readJsonStr()V

    :goto_2
    return-void
.end method
