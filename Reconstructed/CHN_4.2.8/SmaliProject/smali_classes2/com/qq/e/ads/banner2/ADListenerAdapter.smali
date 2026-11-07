.class Lcom/qq/e/ads/banner2/ADListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# instance fields
.field private final a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

.field private b:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

.field private c:Lcom/qq/e/comm/listeners/ADRewardListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6

    const/16 v1, 0x65

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x130

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADClosed()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADClicked()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->c:Lcom/qq/e/comm/listeners/ADRewardListener;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "transId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "devExt"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->c:Lcom/qq/e/comm/listeners/ADRewardListener;

    invoke-interface {p1, v0}, Lcom/qq/e/comm/listeners/ADRewardListener;->onReward(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADExposure()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->b:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/qq/e/comm/listeners/NegativeFeedbackListener;->onComplainSuccess()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADLeftApplication()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->getAdError(Lcom/qq/e/comm/adevent/ADEvent;)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADReceive()V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdRewardListener(Lcom/qq/e/comm/listeners/ADRewardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->c:Lcom/qq/e/comm/listeners/ADRewardListener;

    return-void
.end method

.method public setNegativeFeedbackListener(Lcom/qq/e/comm/listeners/NegativeFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->b:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

    return-void
.end method
