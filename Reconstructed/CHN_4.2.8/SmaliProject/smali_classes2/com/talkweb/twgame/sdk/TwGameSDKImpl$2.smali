.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$2;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twgame/net/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->getAbtest(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abtest\u89e3\u6790 response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 172
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/talkweb/twgame/bean/AbTestResponseVo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twgame/bean/AbTestResponseVo;

    sput-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->abTestVo:Lcom/talkweb/twgame/bean/AbTestResponseVo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "abtest\u89e3\u6790\u5931\u8d25"

    .line 175
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 177
    :goto_0
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->abTestVo:Lcom/talkweb/twgame/bean/AbTestResponseVo;

    if-nez p1, :cond_0

    const-string p1, "abtest\u914d\u7f6e\u83b7\u53d6\u5931\u8d25"

    .line 178
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "abtest\u914d\u7f6e\u83b7\u53d6\u6210\u529f code\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->abTestVo:Lcom/talkweb/twgame/bean/AbTestResponseVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AbTestResponseVo;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$200(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$102(Ljava/util/List;)Ljava/util/List;

    .line 184
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->abTestVo:Lcom/talkweb/twgame/bean/AbTestResponseVo;

    if-eqz p1, :cond_1

    .line 185
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mag:Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;

    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->abTestVo:Lcom/talkweb/twgame/bean/AbTestResponseVo;

    invoke-static {p1, v0}, Lcom/talkweb/twgame/Param/PositionManager;->parsePosition(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;Lcom/talkweb/twgame/bean/AbTestResponseVo;)V

    .line 186
    invoke-static {}, Lcom/talkweb/twgame/Param/PositionManager;->getPositionVoMap()Ljava/util/Map;

    const-string p1, "parsePosition\u6210\u529f"

    .line 187
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "mag is null or abTestVo is null  "

    .line 209
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
