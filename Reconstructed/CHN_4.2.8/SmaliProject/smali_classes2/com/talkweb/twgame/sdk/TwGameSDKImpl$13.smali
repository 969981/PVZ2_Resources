.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/NativeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showNativeByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/callback/GroupCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/NativeCallback;

.field final synthetic val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

.field final synthetic val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

.field final synthetic val$index:I

.field final synthetic val$nativePositon:I

.field final synthetic val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;


# direct methods
.method constructor <init>(ILcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/callback/GroupCallback;ILcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;)V
    .locals 0

    .line 1274
    iput p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$nativePositon:I

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$callback:Lcom/talkweb/twgame/callback/NativeCallback;

    iput-object p3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    iput p4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$index:I

    iput-object p5, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iput-object p6, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resultData(Ljava/lang/String;)V
    .locals 8

    .line 1279
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/talkweb/twgame/bean/NativeData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/bean/NativeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/NativeData;->getCode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1284
    iget v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$nativePositon:I

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$802(I)I

    .line 1285
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u539f\u751f\u5e7f\u544a\u6210\u529f,cur_nativePostion\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$800()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$800()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$callback:Lcom/talkweb/twgame/callback/NativeCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/twgame/callback/NativeCallback;->resultData(Ljava/lang/String;)V

    .line 1288
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    invoke-interface {p1, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    goto :goto_1

    .line 1290
    :cond_0
    sget-object p1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u539f\u751f\u5e7f\u544a\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1292
    iget p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$index:I

    add-int/lit8 v6, p1, 0x1

    .line 1293
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v6, :cond_1

    .line 1294
    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    iget-object v3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iget-object v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$callback:Lcom/talkweb/twgame/callback/NativeCallback;

    iget-object v5, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    iget v7, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$13;->val$nativePositon:I

    invoke-static/range {v2 .. v7}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$900(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeCallback;Lcom/talkweb/twgame/callback/GroupCallback;II)V

    :cond_1
    :goto_1
    return-void
.end method
