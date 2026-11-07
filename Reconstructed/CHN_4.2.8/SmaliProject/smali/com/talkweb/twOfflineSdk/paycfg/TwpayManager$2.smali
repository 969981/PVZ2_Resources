.class Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;
.super Ljava/lang/Object;
.source "TwpayManager.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->getTwpayFile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;I)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    iput p2, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->val$versionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 196
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->verifyPayConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "twpayFile"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "twpayFileKey"

    .line 202
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->val$versionCode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "twpayVersionKey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "sp\u4fdd\u5b58twpayFile\u4fe1\u606f\u6210\u529f!"

    .line 206
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->setTwPayConfig()V

    .line 222
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->access$100(Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    iget v0, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->val$versionCode:I

    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->getTwpayFile(I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    iget v0, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;->val$versionCode:I

    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->getTwpayFile(I)V

    :goto_0
    return-void
.end method
