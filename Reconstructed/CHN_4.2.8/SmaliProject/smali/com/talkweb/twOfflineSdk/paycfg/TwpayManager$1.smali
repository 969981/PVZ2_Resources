.class Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$1;
.super Ljava/lang/Object;
.source "TwpayManager.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->syncTwpay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$1;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$1;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->access$000(Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$1;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->syncTwpay()V

    return-void

    :cond_0
    const-string p1, "syncTwpay responseData is null"

    .line 95
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$1;->this$0:Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->syncTwpay()V

    :goto_0
    return-void
.end method
