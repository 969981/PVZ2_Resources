.class Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;
.super Ljava/lang/Object;
.source "TwgameActivateUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameActivateUtil;->performLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "twgameLogin \u5931\u8d25 eventCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "message:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 132
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 133
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$1;

    invoke-direct {p2, p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$1;-><init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 142
    :cond_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 143
    const-class v0, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$300(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 146
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getData()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->setRefreshToken(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getData()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->setToken(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->setIsActive(I)V

    .line 149
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$300(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/core/UserDataManager;->updateUserToken(Lcom/tw/gamesdk/bean/SimpleUserData;)Z

    .line 150
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/core/GameSDK;->updateUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 151
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseOtherDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 155
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;

    invoke-direct {v0, p0, p2}, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;-><init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result p2

    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result p2

    const/16 v0, 0x7d1

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result p2

    const/16 v0, 0x7d2

    if-ne p2, v0, :cond_3

    .line 164
    :cond_2
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_3
    :goto_0
    return-void
.end method
