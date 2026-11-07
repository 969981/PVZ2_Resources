.class public Lcom/talkweb/twgame/TwGameSDK;
.super Ljava/lang/Object;
.source "TwGameSDK.java"


# static fields
.field public static final TIME_INTERVAL:J = 0x1f4L

.field public static mContext:Landroid/app/Activity;

.field private static mLastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeReward(Lcom/talkweb/twgame/callback/ActiveCallback;)V
    .locals 3

    const-string v0, "activeReward\u63a5\u53e3!"

    .line 334
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getActiveMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6709\u914d\u7f6e\u6d3b\u52a8\u6570\u636e,\u6d3b\u52a8\u6570\u636e\u6761\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 339
    invoke-interface {p0, v0}, Lcom/talkweb/twgame/callback/ActiveCallback;->response(Ljava/util/Map;)I

    goto :goto_0

    :cond_0
    const-string p0, "\u6ca1\u6709\u914d\u7f6e\u6d3b\u52a8\u6570\u636e!"

    .line 341
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static adType(Landroid/app/Activity;Lcom/talkweb/twgame/callback/ADTypeCallback;)V
    .locals 1

    const-string v0, "\u8c03\u7528\u83b7\u53d6\u5e7f\u544a\u7c7b\u578b\u63a5\u53e3!"

    .line 218
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 219
    invoke-static {p0, p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getAdType(Landroid/app/Activity;Lcom/talkweb/twgame/callback/ADTypeCallback;)V

    return-void
.end method

.method public static getDspParamByTwPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528getDspParamByTwPid\u63a5\u53e3\uff0ctwPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getDspParamByTwPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hideBanner(I)V
    .locals 0

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "\u8c03\u7528\u8001\u7684init\u63a5\u53e3\uff0c\u65e0userId"

    .line 35
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, ""

    .line 36
    invoke-static {p0, v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->initGame(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/talkweb/twgame/TwGameSDK;->mContext:Landroid/app/Activity;

    .line 45
    invoke-static {p0, p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->initGame(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static onBackPressed()V
    .locals 1

    const-string v0, "onBackPressed!"

    .line 324
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->onBackPressed()V

    return-void
.end method

.method public static onClickNativeAD()V
    .locals 1

    const-string v0, "\u5df2\u5f03\u7528\u63a5\u53e3 onClickNativeAD"

    .line 305
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static onClickNativeAD(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static onClickNativeAD(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public static onDestory(Landroid/app/Activity;)V
    .locals 0

    .line 319
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->onDestory(Landroid/app/Activity;)V

    return-void
.end method

.method public static onExposuredNativeAD(Landroid/view/View;)V
    .locals 0

    const-string p0, "\u8c03\u7528\u66dd\u5149\u539f\u751f\u5e7f\u544a\u6570\u636e\u63a5\u53e3!"

    .line 271
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static onExposuredNativeAD(Landroid/view/View;I)V
    .locals 1

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8c03\u7528\u66dd\u5149\u539f\u751f\u5e7f\u544a\u6570\u636e\u63a5\u53e3!--id:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 0

    .line 314
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 0

    .line 309
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public static queryMediaState(ILcom/talkweb/twgame/callback/QueryMediaStateCallback;)V
    .locals 0

    .line 124
    invoke-static {p0, p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->queryMediaState(ILcom/talkweb/twgame/callback/QueryMediaStateCallback;)V

    return-void
.end method

.method public static showBanner(Lcom/talkweb/twgame/callback/BannerCallback;IIZI)V
    .locals 0

    return-void
.end method

.method public static showMedia(Lcom/talkweb/twgame/callback/MediaCallback;)V
    .locals 1

    const-string v0, "\u8c03\u7528\u8001\u7684\u89c6\u9891\u5e7f\u544a\u63a5\u53e3\uff0c\u9ed8\u8ba4\u5e7f\u544a\u4f4d7"

    .line 112
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 113
    invoke-static {p0, v0}, Lcom/talkweb/twgame/TwGameSDK;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;I)V

    return-void
.end method

.method public static showMedia(Lcom/talkweb/twgame/callback/MediaCallback;I)V
    .locals 9

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u89c6\u9891\u5e7f\u544a\u63a5\u53e3!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/talkweb/twgame/TwGameSDK;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "mContext is null "

    .line 136
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    sget-wide v2, Lcom/talkweb/twgame/TwGameSDK;->mLastClickTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "\u4e0d\u8981\u91cd\u590d\u70b9\u51fb!"

    .line 185
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_2
    :goto_0
    sput-wide v0, Lcom/talkweb/twgame/TwGameSDK;->mLastClickTime:J

    .line 145
    sget-object v0, Lcom/talkweb/twgame/TwGameSDK;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/twgame/TwGameSDK$1;

    invoke-direct {v1, p0, p1}, Lcom/talkweb/twgame/TwGameSDK$1;-><init>(Lcom/talkweb/twgame/callback/MediaCallback;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public static showNativeAD(Lcom/talkweb/twgame/callback/NativeCallback;)V
    .locals 0

    const-string p0, "\u5df2\u5f03\u7528\u63a5\u53e3"

    .line 228
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static showNativeAD(Lcom/talkweb/twgame/callback/NativeCallback;I)V
    .locals 1

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8c03\u7528\u83b7\u53d6\u539f\u751f\u5e7f\u544a\u6570\u636e\u63a5\u53e3!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;)V
    .locals 1

    const-string v0, "\u8c03\u7528\u8001\u7684\u63d2\u5c4f\u5e7f\u544a\u63a5\u53e3\uff0c\u9ed8\u8ba4\u5e7f\u544a\u4f4d1"

    .line 52
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "showScreenView paused "

    .line 53
    invoke-interface {p0, v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;I)V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c55\u793a\u7684\u5e7f\u544a\u4f4d\u7f6e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string p1, "showScreenView paused "

    .line 85
    invoke-interface {p0, p1}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    return-void
.end method
