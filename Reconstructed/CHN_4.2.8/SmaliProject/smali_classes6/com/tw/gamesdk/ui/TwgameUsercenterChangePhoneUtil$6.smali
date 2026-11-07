.class Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$6;
.super Ljava/lang/Object;
.source "TwgameUsercenterChangePhoneUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->requestSMSCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3

    const-string v0, "message:"

    if-eqz p1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCode \u5931\u8d25 eventCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 275
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 279
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 280
    const-class v2, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-eq p1, p2, :cond_2

    .line 286
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendCode e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
