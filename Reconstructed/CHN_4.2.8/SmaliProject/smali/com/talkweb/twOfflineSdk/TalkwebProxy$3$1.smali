.class Lcom/talkweb/twOfflineSdk/TalkwebProxy$3$1;
.super Ljava/lang/Object;
.source "TalkwebProxy.java"

# interfaces
.implements Lcom/tw/OnLinePaySdk/callback/TWCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3$1;->this$1:Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(ILjava/lang/String;)V
    .locals 2

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7f51\u6e38\u767b\u5f55\u8fd4\u56de\u7ed3\u679c:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 170
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/JsonStrTool;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "code"

    .line 171
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "userId"

    .line 172
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "sessionId"

    .line 173
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "01"

    .line 174
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, ""

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 175
    sput-boolean p2, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->isLogined:Z

    .line 176
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3$1;->this$1:Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;

    iget-object p2, p2, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-virtual {p2, v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->loginSend(Ljava/lang/String;)V

    const/16 p2, 0xbb8

    .line 177
    invoke-static {p2, v0, v1, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onLoginCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u7f51\u6e38\u8d26\u53f7\u767b\u5f55\u5931\u8d25"

    .line 179
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 p1, 0xbb9

    .line 180
    invoke-static {p1, v1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onLoginCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
