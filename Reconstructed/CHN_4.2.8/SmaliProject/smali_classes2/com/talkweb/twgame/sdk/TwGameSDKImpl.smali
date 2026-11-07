.class public Lcom/talkweb/twgame/sdk/TwGameSDKImpl;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"


# static fields
.field public static abTestVo:Lcom/talkweb/twgame/bean/AbTestResponseVo;

.field public static bannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cur_nativePostion:I

.field private static gameSetting:Lcom/talkweb/twgame/Param/GameSetting;

.field public static isFirstShowScreen:Z

.field public static isScreenShow:Z

.field private static isTimeShow:Z

.field public static mContext:Landroid/app/Activity;

.field public static mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

.field public static psetShowTime:J

.field private static sdkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/sdk/ITwGameSDKBase;",
            ">;"
        }
    .end annotation
.end field

.field private static showMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/talkweb/twgame/bean/Psets;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static showTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lcom/talkweb/twgame/Param/GameSetting;

    invoke-direct {v0}, Lcom/talkweb/twgame/Param/GameSetting;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->gameSetting:Lcom/talkweb/twgame/Param/GameSetting;

    const/4 v0, 0x1

    .line 74
    sput-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isFirstShowScreen:Z

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    const-wide/16 v0, 0x2710

    .line 89
    sput-wide v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    .line 94
    sput-wide v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->bannerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getAbtest(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 60
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showSplashByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V

    return-void
.end method

.method static synthetic access$102(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 60
    sput-object p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;I)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showNative(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeViewCallback;I)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showNativeView(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeViewCallback;I)V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .locals 1

    .line 60
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    .line 60
    sput-boolean p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    return p0
.end method

.method static synthetic access$200(Landroid/app/Activity;)Ljava/util/List;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getSdkList(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMedia(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMediaByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showScreen(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showScreenByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/talkweb/twgame/bean/PositionVo;)V
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->setDisplayTime(Lcom/talkweb/twgame/bean/PositionVo;)V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .line 60
    sget v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0

    .line 60
    sput p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    return p0
.end method

.method static synthetic access$900(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/callback/GroupCallback;II)V
    .locals 0

    .line 60
    invoke-static/range {p0 .. p5}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showNativeByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/callback/GroupCallback;II)V

    return-void
.end method

.method private static getAbtest(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 161
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getAbtestParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$2;

    invoke-direct {v0, p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$2;-><init>(Landroid/app/Activity;)V

    const/16 p1, 0x9

    invoke-static {p1, p0, v0}, Lcom/talkweb/twgame/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/Map;Lcom/talkweb/twgame/net/HttpTaskCallback;)V

    return-void
.end method

.method private static getAbtestParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAbtestParams userID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userid"

    .line 219
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    const-string v2, "channelid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->SdkVerno:Ljava/lang/String;

    const-string v2, "sdkver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/talkweb/twgame/tools/Tools;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameVer"

    .line 224
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twgame/Param/GameConstant;->SdkVerno:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAbtestParams str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 232
    sget-object v1, Lcom/talkweb/twgame/Param/VersionManager;->md5Key:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/talkweb/twgame/tools/StringEncryptUtil;->createMd5Sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "sign"

    .line 233
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getAdData(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "GameAdVersion"

    .line 372
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 374
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

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdData str\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getAdType(Landroid/app/Activity;Lcom/talkweb/twgame/callback/ADTypeCallback;)V
    .locals 2

    const-string v0, "TwGameSetting.xml"

    const-string v1, "AdType"

    .line 2123
    invoke-static {p0, v0, v1}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5e7f\u544a\u7c7b\u578b!:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 2126
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 2127
    invoke-interface {p1, p0}, Lcom/talkweb/twgame/callback/ADTypeCallback;->resultAdType(I)V

    return-void
.end method

.method private static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    .line 434
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    const-string v6, "0"

    const/16 v7, 0xa

    if-ge v5, v7, :cond_0

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    .line 436
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ge v5, v7, :cond_1

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMddHHmmss==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getDspParamByTwPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1641
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1642
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1646
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/talkweb/twgame/bean/PositionVo;

    .line 1649
    invoke-static {p0}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1650
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1643
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDspParamByTwPid \u5e7f\u544a\u4f4d\u65e0\u6548 twPid\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDspPlatform()V
    .locals 7

    .line 340
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getPosition()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getPosition()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 344
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    invoke-virtual {v1, v0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->setDsps(Ljava/util/Map;)V

    .line 345
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getPosition()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 346
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 348
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/talkweb/twgame/bean/DspVo;

    .line 349
    invoke-static {}, Lcom/talkweb/twgame/tools/SDKConfig;->getClassType()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 351
    new-instance v5, Lcom/talkweb/twgame/bean/DspParamVo;

    invoke-direct {v5}, Lcom/talkweb/twgame/bean/DspParamVo;-><init>()V

    .line 352
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/talkweb/twgame/bean/DspParamVo;->setDsp_id(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v5, v4}, Lcom/talkweb/twgame/bean/DspParamVo;->setDsp_class(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static getSdkList(Landroid/app/Activity;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/sdk/ITwGameSDKBase;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    .line 289
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getAdData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encryStr is:==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/talkweb/twgame/tools/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    sget-object p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    return-object p0

    :cond_0
    const-string v0, "12345678123456781234567812345678"

    .line 294
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/StringEncryptUtil;->decryptStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u878d\u5408sdk:readScreenData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    :try_start_0
    const-string v0, ""

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    sput-object p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    .line 303
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getDspPlatform()V

    .line 305
    sget-object p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getDsps()Ljava/util/Map;

    move-result-object p0

    .line 306
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/DspParamVo;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/talkweb/twgame/bean/DspParamVo;->dsp_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.isStrValid(dsp.getDsp_class()) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspParamVo;->getDsp_class()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twgame/tools/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspParamVo;->getDsp_class()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 311
    :try_start_1
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspParamVo;->getDsp_class()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mITwGameSDK dspId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspParamVo;->getDsp_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dsp.getDsp_class():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspParamVo;->getDsp_class()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspParamVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->setGameType(Ljava/lang/String;)V

    .line 316
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->init(Landroid/app/Activity;)V

    .line 317
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class.forName \u6210\u529f sussces:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspParamVo;->getDsp_class()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 321
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class.forName \u62a5\u9519 error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 329
    invoke-static {}, Lcom/talkweb/twgame/Param/VersionManager;->cleanJsonStr()V

    .line 330
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    :cond_3
    sget-object p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    return-object p0
.end method

.method private static getTime(Ljava/lang/String;)J
    .locals 5

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    .line 477
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    const/16 v4, 0xd

    .line 478
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v3, 0x10

    .line 479
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 481
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 482
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 485
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static hideBanner(I)V
    .locals 2

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9690\u85cfbanner\u5e7f\u544a!bannerPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static initData(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9

    const-string v0, "TwGameSetting.xml"

    const-string v1, "TwAppId"

    .line 245
    invoke-static {p0, v0, v1}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TwChannelId"

    .line 247
    invoke-static {p0, v0, v2}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TwVersion"

    .line 249
    invoke-static {p0, v0, v3}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SdkVerno"

    .line 251
    invoke-static {p0, v0, v4}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Type"

    .line 253
    invoke-static {p0, v0, v5}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DevId"

    .line 255
    invoke-static {p0, v0, v6}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AdpId"

    .line 257
    invoke-static {p0, v0, v7}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Debug"

    .line 259
    invoke-static {p0, v0, v8}, Lcom/talkweb/twgame/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    sput-object v4, Lcom/talkweb/twgame/Param/GameConstant;->SdkVerno:Ljava/lang/String;

    .line 262
    sput-object v3, Lcom/talkweb/twgame/Param/GameConstant;->TwVersionCode:Ljava/lang/String;

    .line 263
    sput-object v5, Lcom/talkweb/twgame/Param/GameConstant;->Type:Ljava/lang/String;

    .line 264
    sput-object v6, Lcom/talkweb/twgame/Param/GameConstant;->DevId:Ljava/lang/String;

    .line 265
    invoke-static {p0}, Lcom/talkweb/twgame/tools/Tools;->getAndroidId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/talkweb/twgame/Param/GameConstant;->TId:Ljava/lang/String;

    .line 266
    sput-object v7, Lcom/talkweb/twgame/Param/GameConstant;->AdpId:Ljava/lang/String;

    .line 267
    sput-object v1, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    .line 268
    sput-object v2, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    .line 269
    invoke-static {p0}, Lcom/talkweb/twgame/tools/Tools;->getOperatorSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/talkweb/twgame/Param/GameConstant;->Mobileoper:Ljava/lang/String;

    .line 270
    invoke-static {p0}, Lcom/talkweb/twgame/tools/Tools;->getProvinceSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/talkweb/twgame/Param/GameConstant;->AreaCode:Ljava/lang/String;

    .line 271
    invoke-static {p1}, Lcom/talkweb/twgame/tools/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 272
    invoke-static {p1}, Lcom/talkweb/twgame/Param/GameConstant;->setUserId(Ljava/lang/String;)V

    :cond_0
    const-string v8, "true"

    .line 274
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/talkweb/twgame/Param/GameConstant;->setDebugMode(Z)V

    const-string v0, "userid"

    .line 276
    invoke-static {v0, p1, p0}, Lcom/talkweb/twgame/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "initData:\nSdkverno:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",TwVersionCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",DevId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",AdpId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",AppId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",twChannelId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",TId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/talkweb/twgame/Param/GameConstant;->TId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",Mobileoper:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/talkweb/twgame/Param/GameConstant;->Mobileoper:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",AreaCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/talkweb/twgame/Param/GameConstant;->AreaCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",userId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",debugMode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->isDebugMode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v8, "false"

    :goto_0
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static initGame(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 126
    sput-object p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initGame \u63a5\u53e3 userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initGame\u63a5\u53e3 userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 129
    invoke-static {p0, p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->initData(Landroid/app/Activity;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;

    invoke-direct {v0, p1, p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/talkweb/twgame/Param/VersionManager;->getVersion(Landroid/content/Context;Lcom/talkweb/twgame/Param/SyncTwgameCallback;)V

    return-void
.end method

.method private static isShowDay(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;)Z
    .locals 1

    const/4 v0, 0x0

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getWeekdays()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isWeekDay(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u5728\u6709\u6548\u7684\u65e5\u671f\u5185,\u5c55\u793a\u5e7f\u544a!"

    .line 392
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "\u4e0d\u5728\u89c4\u5b9a\u7684\u661f\u671f\u4e0d\u5c55\u793a!"

    .line 395
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 400
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static isShowTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 412
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getTime(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getTime(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long v3, v1, p0

    if-gtz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "\u4e0d\u5728\u5f53\u5929\u89c4\u5b9a\u7684\u65f6\u95f4\u4e0d\u5c55\u793a!"

    .line 416
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 421
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static isWeekDay(Ljava/lang/String;)Z
    .locals 5

    .line 449
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 450
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 451
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x7

    .line 452
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 453
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    return v1

    .line 455
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_2

    const-string v2, ","

    .line 456
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 457
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 458
    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 462
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method public static onBackPressed()V
    .locals 2

    .line 2090
    :try_start_0
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2091
    :goto_0
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2092
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    invoke-virtual {v1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static onClickNativeAD(Landroid/view/View;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, v1, :cond_0

    const-string v4, "\u70b9\u51fb\u539f\u751f\u5e7f\u544a!"

    .line 1927
    invoke-static {v4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v2, v1, :cond_1

    const-string v4, "\u539f\u751f\u5e7f\u544a\u66dd\u5149!"

    .line 1929
    invoke-static {v4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1931
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8c03\u7528\u539f\u751f\u5e7f\u544a!nativePositon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1932
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1933
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 1937
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/talkweb/twgame/bean/PositionVo;

    .line 1940
    sget-object v5, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 1942
    invoke-virtual {v6}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v3, v1, :cond_4

    .line 1944
    invoke-virtual {v6, v0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onClickNativeAD(Landroid/view/View;)V

    .line 1945
    sget-object v8, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v14

    const-string v10, "2"

    invoke-static/range {v8 .. v14}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v2, v1, :cond_3

    .line 1947
    invoke-virtual {v6, v0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onExposuredNativeAD(Landroid/view/View;)V

    .line 1948
    sget-object v15, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v21

    const-string v17, "1"

    invoke-static/range {v15 .. v21}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    invoke-static {v4}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->setDisplayTime(Lcom/talkweb/twgame/bean/PositionVo;)V

    goto :goto_1

    :cond_5
    const-string v6, "\u5e7f\u544a\u4f4d\u65e0\u6548!"

    .line 1953
    invoke-static {v6}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-void

    .line 1934
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548!nativePositon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static onClickNativeAD(Landroid/view/View;II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v4, v1, :cond_0

    const-string v5, "\u70b9\u51fb\u539f\u751f\u5e7f\u544a!"

    .line 1889
    invoke-static {v5}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_1

    const-string v5, "\u539f\u751f\u5e7f\u544a\u66dd\u5149!"

    .line 1891
    invoke-static {v5}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1893
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8c03\u7528\u539f\u751f\u5e7f\u544a!nativePositon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1894
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 1899
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/talkweb/twgame/bean/PositionVo;

    .line 1901
    invoke-static {v2}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1902
    sget-object v5, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 1904
    invoke-virtual {v6}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v4, v1, :cond_4

    .line 1906
    invoke-virtual {v6, v0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onClickNativeAD(Landroid/view/View;)V

    .line 1907
    sget-object v8, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v14

    const-string v10, "2"

    invoke-static/range {v8 .. v14}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v3, v1, :cond_3

    .line 1909
    invoke-virtual {v6, v0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onExposuredNativeAD(Landroid/view/View;)V

    .line 1910
    sget-object v15, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v21

    const-string v17, "1"

    invoke-static/range {v15 .. v21}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-static {v2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->setDisplayTime(Lcom/talkweb/twgame/bean/PositionVo;)V

    goto :goto_1

    :cond_5
    const-string v6, "\u5e7f\u544a\u4f4d\u65e0\u6548!"

    .line 1915
    invoke-static {v6}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-void

    .line 1896
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548 nativePositon\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static onDestory(Landroid/app/Activity;)V
    .locals 2

    .line 2078
    :try_start_0
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2079
    :goto_0
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2080
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    invoke-virtual {v1, p0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onDestory(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static onExposuredNativeAD(Landroid/view/View;II)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v4, v2, :cond_0

    const-string v5, "\u70b9\u51fb\u539f\u751f\u5e7f\u544a!"

    .line 1965
    invoke-static {v5}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v3, v2, :cond_1

    .line 1967
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u539f\u751f\u5e7f\u544a\u66dd\u5149! id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1969
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8c03\u7528\u539f\u751f\u5e7f\u544a!nativePositon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1970
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1971
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 1975
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/talkweb/twgame/bean/PositionVo;

    .line 1978
    sget-object v6, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 1980
    invoke-virtual {v7}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-ne v4, v2, :cond_4

    .line 1982
    invoke-virtual {v7, v0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onClickNativeAD(Landroid/view/View;)V

    .line 1983
    sget-object v9, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v15

    const-string v11, "2"

    invoke-static/range {v9 .. v15}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v3, v2, :cond_3

    .line 1985
    invoke-virtual {v7, v0, v1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onExposuredNativeAD(Landroid/view/View;I)V

    .line 1986
    sget-object v16, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v5}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v22

    const-string v18, "1"

    invoke-static/range {v16 .. v22}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    invoke-static {v5}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->setDisplayTime(Lcom/talkweb/twgame/bean/PositionVo;)V

    goto :goto_1

    :cond_5
    const-string v7, "\u5e7f\u544a\u4f4d\u65e0\u6548!"

    .line 1991
    invoke-static {v7}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-void

    .line 1972
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548!nativePositon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->cur_nativePostion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 2

    .line 2066
    :try_start_0
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2067
    :goto_0
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2068
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    invoke-virtual {v1, p0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2

    .line 2053
    :try_start_0
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2054
    :goto_0
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2055
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    invoke-virtual {v1, p0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static queryMediaState(ILcom/talkweb/twgame/callback/QueryMediaStateCallback;)V
    .locals 4

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u67e5\u8be2\u89c6\u9891\u5e7f\u544a\u72b6\u6001!queryMediaState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 502
    :cond_0
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/PositionVo;

    .line 510
    invoke-static {v0}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 512
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getEfftime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getExptime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowTime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "\u4e0d\u5728\u6709\u6548\u7684\u65f6\u95f4\u8303\u56f4!"

    .line 513
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 514
    invoke-interface {p1, v1}, Lcom/talkweb/twgame/callback/QueryMediaStateCallback;->isMedialState(Z)V

    return-void

    .line 517
    :cond_2
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getRate()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\u5e7f\u544a\u4f4did:"

    if-eqz v0, :cond_3

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u4e3a\u5173\u95ed\u72b6\u6001!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 519
    invoke-interface {p1, v1}, Lcom/talkweb/twgame/callback/QueryMediaStateCallback;->isMedialState(Z)V

    return-void

    .line 522
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u4e3a\u6253\u5f00\u72b6\u6001!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 523
    invoke-interface {p1, p0}, Lcom/talkweb/twgame/callback/QueryMediaStateCallback;->isMedialState(Z)V

    return-void

    .line 504
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u4f4d\u65e0\u6548 mediaPostion\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 505
    invoke-interface {p1, v1}, Lcom/talkweb/twgame/callback/QueryMediaStateCallback;->isMedialState(Z)V

    return-void

    :cond_5
    :goto_1
    const-string p0, "gameSdkList == null"

    .line 498
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 499
    invoke-interface {p1, v1}, Lcom/talkweb/twgame/callback/QueryMediaStateCallback;->isMedialState(Z)V

    return-void
.end method

.method private static setDisplayTime(Lcom/talkweb/twgame/bean/PositionVo;)V
    .locals 6

    .line 1998
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1999
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    :try_start_0
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/PositionVo;->getDisplayTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long v4, v4, v1

    sput-wide v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2003
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2006
    :goto_0
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;

    invoke-direct {v4, p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;-><init>(Lcom/talkweb/twgame/bean/PositionVo;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2027
    :cond_0
    sput-boolean v3, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    .line 2029
    :try_start_1
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getDisplaytimeconfig()Lcom/talkweb/twgame/bean/DisplaytimeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->getDefaultTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long v3, v3, v1

    sput-wide v3, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2031
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2034
    :goto_1
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$21;

    invoke-direct {v1, p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$21;-><init>(Lcom/talkweb/twgame/bean/PositionVo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showBanner(Lcom/talkweb/twgame/callback/BannerCallback;IIZI)V
    .locals 0

    return-void
.end method

.method public static showFlashNative(Ljava/lang/String;)V
    .locals 11

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u539f\u751f\u5f00\u5c4f\u5e7f\u544a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1551
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowDay(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1556
    :cond_0
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 1561
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/PositionVo;

    .line 1564
    invoke-static {v0}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1566
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getEfftime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getExptime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowTime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "\u4e0d\u5728\u6709\u6548\u7684\u65f6\u95f4\u8303\u56f4!"

    .line 1567
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 1570
    :cond_2
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 1572
    invoke-virtual {v2}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1574
    invoke-static {v0}, Lcom/talkweb/twgame/Param/PositionManager;->isShow(Lcom/talkweb/twgame/bean/PositionVo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1576
    invoke-virtual {v2, v0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->flashNativeAD(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1577
    sget-object v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v10

    const-string v6, "3"

    invoke-static/range {v4 .. v10}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!"

    .line 1579
    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1580
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!nativePositon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u5f53\u524d\u5c55\u793a\u6982\u7387\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1583
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u4f4d\u65e0\u6548!position\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1584
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u4f4d\u65e0\u6548!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void

    .line 1558
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548 position\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_2
    const-string p0, "\u4e0d\u5728\u6709\u6548\u7684\u65e5\u671f\u5185"

    .line 1552
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static showMedia(Lcom/talkweb/twgame/callback/MediaCallback;I)V
    .locals 11

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u89c6\u9891\u5e7f\u544a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 534
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowDay(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 541
    :cond_0
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 548
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/PositionVo;

    const/4 v1, 0x0

    .line 551
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 552
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    const-string v2, "\u8c03\u7528\u95f4\u9694\u65f6\u95f4\u5c11\u4e8e"

    const-string v3, "true"

    const-string v4, "false"

    const-string v5, "\u79d2"

    const-string v6, "\u8c03\u7528\u65f6\u95f4\u5c11\u4e8e"

    const-wide/16 v7, 0x3e8

    if-eqz v1, :cond_4

    .line 555
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v9, v7

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "\u79d2isPsetShow:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v0, v7

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v0, v7

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    return-void

    .line 560
    :cond_4
    sget-boolean v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    if-eqz v1, :cond_6

    .line 561
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v9, v7

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u79d2 isTimeShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v0, v7

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v0, v7

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    return-void

    .line 569
    :cond_6
    invoke-static {v0}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 571
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getEfftime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getExptime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowTime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u5728\u6709\u6548\u7684\u65f6\u95f4\u8303\u56f4\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 573
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "\u4e0d\u5728\u6709\u6548\u7684\u65f6\u95f4\u8303\u56f4"

    .line 574
    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    return-void

    .line 577
    :cond_7
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;

    invoke-direct {v2, v0, p0, p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 543
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 544
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "\u5e7f\u544a\u4f4d\u65e0\u6548"

    .line 545
    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    return-void

    .line 535
    :cond_9
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u5728\u6709\u6548\u7684\u65e5\u671f\u5185\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 536
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "\u4e0d\u5728\u6709\u6548\u7684\u65e5\u671f\u5185"

    .line 537
    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    return-void
.end method

.method private static showMedia(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;)V
    .locals 3

    .line 812
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMedia\u8c03\u7528\u89c6\u9891\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 814
    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$6;

    invoke-direct {v0, p1, p2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$6;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;)V

    invoke-virtual {p0, v0, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    return-void
.end method

.method private static showMediaByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
    .locals 3

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMediaByGroup \u5f00\u59cb\u5e7f\u544a\u4f4d\u7ec4\u4e2d\u5e7f\u544a\u5c55\u793a index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 1062
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/talkweb/twgame/bean/Dsp_params;

    if-eqz p4, :cond_4

    .line 1063
    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1067
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/DspVo;->setDsp_param(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_SCREEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showMediaByGroup\u8c03\u7528\u63d2\u5c4f \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1070
    sget-object p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u63d2\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1071
    new-instance p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$10;

    invoke-direct {p4, p1, p2, p3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$10;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, p4, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    goto/16 :goto_1

    .line 1123
    :cond_1
    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_SPLASH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u8c03\u7528\u5f00\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    if-eqz v0, :cond_2

    .line 1124
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showMediaByGroup\u8c03\u7528\u5f00\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1125
    sget-object p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1126
    new-instance p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;

    invoke-direct {p4, p1, p2, p3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, p1, p4}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showSplash(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;)V

    goto :goto_1

    .line 1178
    :cond_2
    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1179
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showMediaByGroup\u8c03\u7528\u89c6\u9891\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1180
    sget-object p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1181
    new-instance p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;

    invoke-direct {p4, p1, p2, p3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, p4, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    goto :goto_1

    .line 1247
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dsp_params adtype:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1064
    :cond_4
    :goto_0
    invoke-interface {p3, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void

    .line 1250
    :cond_5
    invoke-interface {p3, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    :goto_1
    return-void
.end method

.method private static showNative(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;I)V
    .locals 1

    .line 1829
    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$19;

    invoke-direct {v0, p3, p2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$19;-><init>(ILcom/talkweb/twgame/callback/NativeCallback;)V

    invoke-virtual {p0, v0, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showNativeAD(Lcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    return-void
.end method

.method public static showNativeAd(Lcom/talkweb/twgame/callback/NativeCallback;I)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u539f\u751f\u5e7f\u544a!nativePositon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1660
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowDay(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1669
    :cond_0
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 1678
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/talkweb/twgame/bean/PositionVo;

    const/4 v0, 0x0

    .line 1680
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1681
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_2
    const-string v1, "\u79d2"

    const-string v2, "true"

    const-string v3, "false"

    const-wide/16 v4, 0x3e8

    const-string v6, "\u8c03\u7528\u65f6\u95f4\u5c11\u4e8e"

    if-eqz v0, :cond_4

    .line 1684
    sget-object v8, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "\u79d2isPsetShow:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1686
    new-instance v0, Lcom/talkweb/twgame/bean/NativeData;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/NativeData;-><init>()V

    .line 1687
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/NativeData;->setCode(Ljava/lang/String;)V

    .line 1688
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/talkweb/twgame/callback/NativeCallback;->resultData(Ljava/lang/String;)V

    return-void

    .line 1692
    :cond_4
    sget-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    if-eqz v0, :cond_6

    .line 1693
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "\u79d2 isTimeShow:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1695
    new-instance v0, Lcom/talkweb/twgame/bean/NativeData;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/NativeData;-><init>()V

    .line 1696
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/NativeData;->setCode(Ljava/lang/String;)V

    .line 1697
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/talkweb/twgame/callback/NativeCallback;->resultData(Ljava/lang/String;)V

    return-void

    .line 1702
    :cond_6
    invoke-static {v9}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1704
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 1706
    invoke-virtual {v1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1708
    invoke-static {v9}, Lcom/talkweb/twgame/Param/PositionManager;->isShow(Lcom/talkweb/twgame/bean/PositionVo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1710
    :try_start_0
    sget-object v11, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v11 .. v17}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    new-instance v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$17;

    invoke-direct {v4, v1, v9, v7, v8}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$17;-><init>(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;I)V

    const/4 v5, 0x0

    move-object v2, v9

    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showNativeByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/callback/GroupCallback;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u539f\u751f\u5e7f\u544a\u5c55\u793a\u5f02\u5e38 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1725
    new-instance v0, Lcom/talkweb/twgame/bean/NativeData;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/NativeData;-><init>()V

    .line 1726
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/NativeData;->setCode(Ljava/lang/String;)V

    .line 1727
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/talkweb/twgame/callback/NativeCallback;->resultData(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1732
    :cond_7
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!nativePositon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u5f53\u524d\u5c55\u793a\u6982\u7387\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/talkweb/twgame/bean/PositionVo;->getRate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v0, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!"

    .line 1733
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1734
    new-instance v0, Lcom/talkweb/twgame/bean/NativeData;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/NativeData;-><init>()V

    .line 1735
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/NativeData;->setCode(Ljava/lang/String;)V

    .line 1736
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/talkweb/twgame/callback/NativeCallback;->resultData(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1740
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548!nativePositon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1741
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1742
    new-instance v0, Lcom/talkweb/twgame/bean/NativeData;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/NativeData;-><init>()V

    .line 1743
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/NativeData;->setCode(Ljava/lang/String;)V

    .line 1744
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/talkweb/twgame/callback/NativeCallback;->resultData(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    return-void

    .line 1671
    :cond_a
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548 nativePositon\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1672
    new-instance v0, Lcom/talkweb/twgame/bean/NativeData;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/NativeData;-><init>()V

    .line 1673
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/NativeData;->setCode(Ljava/lang/String;)V

    .line 1674
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/talkweb/twgame/callback/NativeCallback;->resultData(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_4
    const-string v0, "\u4e0d\u5728\u6709\u6548\u7684\u65e5\u671f\u5185"

    .line 1661
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1662
    new-instance v0, Lcom/talkweb/twgame/bean/NativeData;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/NativeData;-><init>()V

    .line 1663
    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/NativeData;->setCode(Ljava/lang/String;)V

    .line 1664
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/talkweb/twgame/callback/NativeCallback;->resultData(Ljava/lang/String;)V

    return-void
.end method

.method public static showNativeAdView(Lcom/talkweb/twgame/callback/NativeViewCallback;I)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528showNativeAdView\u539f\u751f\u5e7f\u544a!nativePositon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1758
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    const/4 v9, 0x0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowDay(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1764
    :cond_0
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 1770
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/talkweb/twgame/bean/PositionVo;

    const/4 v0, 0x0

    .line 1772
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1773
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_2
    const-string v1, "\u79d2"

    const-string v2, "true"

    const-string v3, "false"

    const-wide/16 v4, 0x3e8

    const-string v6, "\u8c03\u7528\u65f6\u95f4\u5c11\u4e8e"

    if-eqz v0, :cond_4

    .line 1776
    sget-object v8, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v11, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "\u79d2isPsetShow:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1778
    invoke-interface {v7, v9}, Lcom/talkweb/twgame/callback/NativeViewCallback;->resultView(Landroid/view/View;)V

    return-void

    .line 1781
    :cond_4
    sget-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    if-eqz v0, :cond_6

    .line 1782
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "\u79d2 isTimeShow:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v10, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1784
    invoke-interface {v7, v9}, Lcom/talkweb/twgame/callback/NativeViewCallback;->resultView(Landroid/view/View;)V

    return-void

    .line 1788
    :cond_6
    invoke-static {v10}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1790
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 1792
    invoke-virtual {v1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1794
    invoke-static {v10}, Lcom/talkweb/twgame/Param/PositionManager;->isShow(Lcom/talkweb/twgame/bean/PositionVo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1796
    :try_start_0
    sget-object v12, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v12 .. v18}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    new-instance v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;

    invoke-direct {v4, v1, v10, v7, v8}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;-><init>(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeViewCallback;I)V

    const/4 v5, 0x0

    move-object v2, v10

    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showNativeViewByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeViewCallback;Lcom/talkweb/twgame/callback/GroupCallback;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u539f\u751f\u5e7f\u544a\u5c55\u793a\u5f02\u5e38 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1811
    invoke-interface {v7, v9}, Lcom/talkweb/twgame/callback/NativeViewCallback;->resultView(Landroid/view/View;)V

    goto :goto_2

    .line 1816
    :cond_7
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!nativePositon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u5f53\u524d\u5c55\u793a\u6982\u7387\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/talkweb/twgame/bean/PositionVo;->getRate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v0, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!"

    .line 1817
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1818
    invoke-interface {v7, v9}, Lcom/talkweb/twgame/callback/NativeViewCallback;->resultView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1821
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548!nativePositon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1822
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1823
    invoke-interface {v7, v9}, Lcom/talkweb/twgame/callback/NativeViewCallback;->resultView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_9
    return-void

    .line 1766
    :cond_a
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548 nativePositon\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1767
    invoke-interface {v7, v9}, Lcom/talkweb/twgame/callback/NativeViewCallback;->resultView(Landroid/view/View;)V

    return-void

    :cond_b
    :goto_4
    const-string v0, "\u4e0d\u5728\u6709\u6548\u7684\u65e5\u671f\u5185"

    .line 1759
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1760
    invoke-interface {v7, v9}, Lcom/talkweb/twgame/callback/NativeViewCallback;->resultView(Landroid/view/View;)V

    return-void
.end method

.method private static showNativeByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/callback/GroupCallback;II)V
    .locals 9

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNativeByGroup \u5f00\u59cb\u5e7f\u544a\u4f4d\u7ec4\u4e2d\u5e7f\u544a\u5c55\u793a index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 1265
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/Dsp_params;

    if-eqz v0, :cond_2

    .line 1266
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 1270
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/talkweb/twgame/bean/DspVo;->setDsp_param(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_NATIVE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNativeByGroup\u8c03\u7528\u539f\u751f \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1273
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528\u539f\u751f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1274
    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;

    move-object v2, v0

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;-><init>(ILcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/callback/GroupCallback;ILcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;)V

    invoke-virtual {p0, v0, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showNativeAD(Lcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    goto :goto_1

    .line 1302
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dsp_params adtype:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1267
    :cond_2
    :goto_0
    invoke-interface {p3, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void

    .line 1305
    :cond_3
    invoke-interface {p3, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    :goto_1
    return-void
.end method

.method private static showNativeView(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeViewCallback;I)V
    .locals 0

    return-void
.end method

.method private static showNativeViewByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeViewCallback;Lcom/talkweb/twgame/callback/GroupCallback;II)V
    .locals 0

    .line 1318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showNativeByGroup \u5f00\u59cb\u5e7f\u544a\u4f4d\u7ec4\u4e2d\u5e7f\u544a\u5c55\u793a index:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x0

    if-lez p0, :cond_3

    .line 1321
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/talkweb/twgame/bean/Dsp_params;

    if-eqz p0, :cond_2

    .line 1322
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 1326
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object p2

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/talkweb/twgame/bean/DspVo;->setDsp_param(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_NATIVE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showNativeByGroup\u8c03\u7528\u539f\u751f \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1329
    sget-object p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8c03\u7528\u539f\u751f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1353
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dsp_params adtype:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1323
    :cond_2
    :goto_0
    invoke-interface {p3, p2}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void

    .line 1356
    :cond_3
    invoke-interface {p3, p2}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    :goto_1
    return-void
.end method

.method private static showScreen(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;)V
    .locals 3

    .line 759
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showScreen\u8c03\u7528\u63d2\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 760
    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$5;

    invoke-direct {v0, p1, p2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$5;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;)V

    invoke-virtual {p0, v0, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    return-void
.end method

.method private static showScreenByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
    .locals 3

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u5e7f\u544a\u4f4d\u7ec4\u4e2d\u5e7f\u544a\u5c55\u793a index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 868
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/talkweb/twgame/bean/Dsp_params;

    if-eqz p4, :cond_4

    .line 869
    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 873
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/DspVo;->setDsp_param(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_SCREEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showScreenByGroup\u8c03\u7528\u63d2\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 876
    sget-object p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u63d2\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 877
    new-instance p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$7;

    invoke-direct {p4, p1, p2, p3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$7;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, p4, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    goto/16 :goto_1

    .line 929
    :cond_1
    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_SPLASH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u8c03\u7528\u5f00\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    if-eqz v0, :cond_2

    .line 930
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showScreenByGroup\u8c03\u7528\u5f00\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 931
    sget-object p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 932
    new-instance p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;

    invoke-direct {p4, p1, p2, p3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, p1, p4}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showSplash(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;)V

    goto :goto_1

    .line 984
    :cond_2
    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 985
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showScreenByGroup\u8c03\u7528\u89c6\u9891\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 986
    sget-object p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 987
    new-instance p4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$9;

    invoke-direct {p4, p1, p2, p3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$9;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, p4, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    goto :goto_1

    .line 1047
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not support dsp_params adtype:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 870
    :cond_4
    :goto_0
    invoke-interface {p3, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void

    .line 1050
    :cond_5
    invoke-interface {p3, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    :goto_1
    return-void
.end method

.method public static showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;I)V
    .locals 12

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u63d2\u5c4f\u5e7f\u544a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nisScreenShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 655
    sget-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    if-eqz v0, :cond_0

    const-string p1, "\u4e0a\u4e2a\u5e7f\u544a\u8fd8\u5728\u5c55\u793a\u4e2d"

    .line 656
    invoke-interface {p0, p1}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 659
    sput-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    .line 660
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowDay(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 668
    :cond_1
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 676
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/PositionVo;

    .line 679
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 680
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const-string v3, "\u8c03\u7528\u95f4\u9694\u65f6\u95f4\u5c11\u4e8e"

    const-string v4, "true"

    const-string v5, "false"

    const-string v6, "\u79d2"

    const-string v7, "\u8c03\u7528\u65f6\u95f4\u5c11\u4e8e"

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_5

    .line 683
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v10, v8

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "\u79d2isPsetShow:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v4, v8

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v2, v8

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 686
    sput-boolean v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void

    .line 689
    :cond_5
    sget-boolean v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    if-eqz v2, :cond_7

    .line 690
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v10, v8

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2 isTimeShow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isTimeShow:Z

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v4, v8

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showTime:J

    div-long/2addr v2, v8

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 693
    sput-boolean v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void

    .line 699
    :cond_7
    invoke-static {v0}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 701
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getEfftime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getExptime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowTime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 702
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    const-string v0, "\u4e0d\u5728\u6709\u6548\u7684\u65f6\u95f4\u8303\u56f4!"

    invoke-static {p1, v0}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 703
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string p1, "\u4e0d\u5728\u6709\u6548\u7684\u65f6\u95f4\u8303\u56f4"

    .line 704
    invoke-interface {p0, p1}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 705
    sput-boolean v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void

    .line 708
    :cond_8
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;

    invoke-direct {v2, v0, p0, p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;-><init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 670
    :cond_9
    :goto_3
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u4f4d\u65e0\u6548\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 673
    sput-boolean v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void

    :cond_a
    :goto_4
    const-string v0, "\u4e0d\u5728\u6709\u6548\u7684\u65e5\u671f\u5185"

    .line 661
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 662
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u5728\u6709\u6548\u7684\u65e5\u671f\u5185\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 663
    invoke-interface {p0, v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 664
    sput-boolean v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void
.end method

.method public static showSplash(Ljava/lang/String;)V
    .locals 11

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u5f00\u5c4f\u5e7f\u544a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1597
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowDay(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1602
    :cond_0
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 1607
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/PositionVo;

    .line 1610
    invoke-static {v0}, Lcom/talkweb/twgame/Param/PositionManager;->calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1612
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getEfftime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getExptime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isShowTime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "\u4e0d\u5728\u6709\u6548\u7684\u65f6\u95f4\u8303\u56f4!"

    .line 1613
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 1617
    :cond_2
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->sdkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 1620
    invoke-virtual {v2}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GameType is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1624
    invoke-static {v0}, Lcom/talkweb/twgame/Param/PositionManager;->isShow(Lcom/talkweb/twgame/bean/PositionVo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1626
    invoke-virtual {v2, v0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showSplash(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1627
    sget-object v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v10

    const-string v6, "3"

    invoke-static/range {v4 .. v10}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!"

    .line 1629
    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1630
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!nativePositon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u5f53\u524d\u5c55\u793a\u6982\u7387\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1633
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u4f4d\u65e0\u6548!position\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1634
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u4f4d\u65e0\u6548!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void

    .line 1604
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548 position\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_2
    const-string p0, "\u4e0d\u5728\u6709\u6548\u7684\u65e5\u671f\u5185"

    .line 1598
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method private static showSplashByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
    .locals 8

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u5e7f\u544a\u4f4d\u7ec4\u4e2d\u5e7f\u544a\u5c55\u793a index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 1368
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/Dsp_params;

    if-eqz v0, :cond_4

    .line 1369
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 1373
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/talkweb/twgame/bean/DspVo;->setDsp_param(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_SCREEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showScreenByGroup\u8c03\u7528\u63d2\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1376
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528\u63d2\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1377
    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$14;

    move-object v2, v0

    move v3, p4

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$14;-><init>(ILcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, v0, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    goto/16 :goto_1

    .line 1425
    :cond_1
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_SPLASH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\u8c03\u7528\u5f00\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    if-eqz v1, :cond_2

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showScreenByGroup\u8c03\u7528\u5f00\u5c4f\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1427
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1428
    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$15;

    move-object v2, v0

    move v3, p4

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$15;-><init>(ILcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showSplash(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;)V

    goto/16 :goto_1

    .line 1476
    :cond_2
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->ADTYPE_VIDEO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showScreenByGroup\u8c03\u7528\u89c6\u9891\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1478
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1479
    new-instance v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;

    move-object v2, v0

    move v3, p4

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;-><init>(ILcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V

    invoke-virtual {p0, v0, p1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/bean/PositionVo;)V

    goto :goto_1

    .line 1533
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dsp_params adtype:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/Dsp_params;->getAdType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1370
    :cond_4
    :goto_0
    invoke-interface {p3, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void

    .line 1536
    :cond_5
    invoke-interface {p3, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    :goto_1
    return-void
.end method
