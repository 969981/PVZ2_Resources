.class public Lcom/talkweb/twgame/Param/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# static fields
.field public static final VER_CODE:Ljava/lang/String; = "NewVersionCode"

.field public static final VER_DATA:Ljava/lang/String; = "NewVersionData"

.field public static final VER_FILE_PATH:Ljava/lang/String; = "GameAdVersion"

.field public static isRun:Z = false

.field public static mContext:Landroid/content/Context; = null

.field public static mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback; = null

.field public static md5Key:Ljava/lang/String; = null

.field public static newVerCodeStr:Ljava/lang/String; = ""

.field public static newVerUrl:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static requestDataNum:I = 0x1

.field public static requestVerNum:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/Param/VersionManager;->newVerUrl:Ljava/util/List;

    const-string v0, "fb7b5128a8eb4c46a65b352771b6dc6b"

    .line 72
    sput-object v0, Lcom/talkweb/twgame/Param/VersionManager;->md5Key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/talkweb/twgame/Param/VersionManager;->writeJsonStr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 23
    invoke-static {}, Lcom/talkweb/twgame/Param/VersionManager;->getNewVerData()V

    return-void
.end method

.method public static cleanJsonStr()V
    .locals 4

    .line 196
    sget-object v0, Lcom/talkweb/twgame/Param/VersionManager;->mContext:Landroid/content/Context;

    const-string v1, "GameAdVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewVersionCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewVersionData"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "\u6e05\u7a7a\u672c\u5730\u5e7f\u544a\u6570\u636e!"

    .line 205
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static getNewVerData()V
    .locals 4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u878d\u5408SDK\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/talkweb/twgame/Param/VersionManager;->requestDataNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21\u83b7\u53d6\u65b0\u7248\u672c\u6570\u636e\t!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 238
    sget v0, Lcom/talkweb/twgame/Param/VersionManager;->requestDataNum:I

    sget-object v1, Lcom/talkweb/twgame/Param/VersionManager;->newVerUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 239
    sput-boolean v0, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    .line 240
    sget-object v0, Lcom/talkweb/twgame/Param/VersionManager;->mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/Param/SyncTwgameCallback;->syncFinished()V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/talkweb/twgame/Param/VersionManager;->newVerUrl:Ljava/util/List;

    sget v3, Lcom/talkweb/twgame/Param/VersionManager;->requestDataNum:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/VersionManager;->newVerCodeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/talkweb/twgame/Param/VersionManager$2;

    invoke-direct {v2}, Lcom/talkweb/twgame/Param/VersionManager$2;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/talkweb/twgame/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twgame/net/HttpTaskCallback;)V

    return-void
.end method

.method public static getParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    const-string v2, "channelid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->SdkVerno:Ljava/lang/String;

    const-string v2, "sdkver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->SdkVerno:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParams str:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 167
    sget-object v2, Lcom/talkweb/twgame/Param/VersionManager;->md5Key:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/talkweb/twgame/tools/StringEncryptUtil;->createMd5Sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    .line 168
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;Lcom/talkweb/twgame/Param/SyncTwgameCallback;)V
    .locals 1

    .line 79
    sget-boolean v0, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 82
    sput-boolean v0, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    .line 83
    sput-object p0, Lcom/talkweb/twgame/Param/VersionManager;->mContext:Landroid/content/Context;

    .line 84
    sput-object p1, Lcom/talkweb/twgame/Param/VersionManager;->mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback;

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u878d\u5408SDK\u7b2c"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/talkweb/twgame/Param/VersionManager;->requestVerNum:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6b21\u83b7\u53d6\u7248\u672c\u53f7"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 87
    invoke-static {}, Lcom/talkweb/twgame/Param/VersionManager;->getParams()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Lcom/talkweb/twgame/Param/VersionManager$1;

    invoke-direct {v0}, Lcom/talkweb/twgame/Param/VersionManager$1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/talkweb/twgame/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/Map;Lcom/talkweb/twgame/net/HttpTaskCallback;)V

    return-void
.end method

.method public static readJsonStr()V
    .locals 4

    .line 213
    sget-object v0, Lcom/talkweb/twgame/Param/VersionManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "GameAdVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewVersionCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/talkweb/twgame/tools/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-static {}, Lcom/talkweb/twgame/Param/VersionManager;->getNewVerData()V

    goto :goto_0

    .line 219
    :cond_0
    sget-object v2, Lcom/talkweb/twgame/Param/VersionManager;->newVerCodeStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/talkweb/twgame/tools/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/talkweb/twgame/Param/VersionManager;->newVerCodeStr:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 221
    invoke-static {}, Lcom/talkweb/twgame/Param/VersionManager;->getNewVerData()V

    goto :goto_0

    .line 225
    :cond_1
    sput-boolean v1, Lcom/talkweb/twgame/Param/VersionManager;->isRun:Z

    .line 226
    sget-object v0, Lcom/talkweb/twgame/Param/VersionManager;->mSyncTwgameCallback:Lcom/talkweb/twgame/Param/SyncTwgameCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/Param/SyncTwgameCallback;->syncFinished()V

    const-string v0, "\u6ca1\u6709\u65b0\u7248\u672c\u6570\u636e,\u4f7f\u7528\u672c\u5730\u4fdd\u5b58\u7684\u6570\u636e!"

    .line 227
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static writeJsonStr(Ljava/lang/String;)V
    .locals 3

    .line 178
    sget-object v0, Lcom/talkweb/twgame/Param/VersionManager;->mContext:Landroid/content/Context;

    const-string v1, "GameAdVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewVersionCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/talkweb/twgame/Param/VersionManager;->newVerCodeStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewVersionData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p0, "\u4fdd\u5b58\u65b0\u5e7f\u544a\u6570\u636e"

    .line 188
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
