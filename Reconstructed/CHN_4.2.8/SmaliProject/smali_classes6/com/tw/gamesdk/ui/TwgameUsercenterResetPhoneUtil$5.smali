.class Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;
.super Ljava/lang/Object;
.source "TwgameUsercenterResetPhoneUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->changePhone(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 4

    const-string v0, "message:"

    if-eqz p1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePhone \u5931\u8d25 eventCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 228
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 232
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 233
    const-class v2, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 235
    sget-object v1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 236
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;->val$phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->setPhone(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

    invoke-static {v2}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tw/gamesdk/core/GameSDK;->updateUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 238
    sget-object v1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5$1;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5$1;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6362\u7ed1\u624b\u673a\u6210\u529f:"

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

    .line 247
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_2

    .line 248
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 250
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6362\u7ed1\u624b\u673a\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changePhone e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
