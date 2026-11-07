.class public final Lcom/bytedance/ads/convert/config/BDConvertConfig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008*\u0010+R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008R$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0004\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0004\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\"\u0010\'\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0004\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008\u00a8\u0006,"
    }
    d2 = {
        "Lcom/bytedance/ads/convert/config/BDConvertConfig;",
        "",
        "",
        "enableLog",
        "Z",
        "getEnableLog",
        "()Z",
        "setEnableLog",
        "(Z)V",
        "Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;",
        "lifecycleCallback",
        "Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;",
        "getLifecycleCallback",
        "()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;",
        "setLifecycleCallback",
        "(Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;)V",
        "playSessionEnable",
        "getPlaySessionEnable",
        "setPlaySessionEnable",
        "Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;",
        "customAndroidIDCallback",
        "Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;",
        "getCustomAndroidIDCallback",
        "()Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;",
        "setCustomAndroidIDCallback",
        "(Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;)V",
        "enableIPFetch",
        "getEnableIPFetch",
        "setEnableIPFetch",
        "Lcom/bytedance/ads/convert/depend/CustomOaidCallback;",
        "customOaidCallback",
        "Lcom/bytedance/ads/convert/depend/CustomOaidCallback;",
        "getCustomOaidCallback",
        "()Lcom/bytedance/ads/convert/depend/CustomOaidCallback;",
        "setCustomOaidCallback",
        "(Lcom/bytedance/ads/convert/depend/CustomOaidCallback;)V",
        "enableOAID",
        "getEnableOAID",
        "setEnableOAID",
        "autoSendLaunchEvent",
        "getAutoSendLaunchEvent",
        "setAutoSendLaunchEvent",
        "<init>",
        "()V",
        "convert_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private autoSendLaunchEvent:Z

.field private customAndroidIDCallback:Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;

.field private customOaidCallback:Lcom/bytedance/ads/convert/depend/CustomOaidCallback;

.field private enableIPFetch:Z

.field private enableLog:Z

.field private enableOAID:Z

.field private lifecycleCallback:Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

.field private playSessionEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->autoSendLaunchEvent:Z

    iput-boolean v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->playSessionEnable:Z

    iput-boolean v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->enableOAID:Z

    return-void
.end method


# virtual methods
.method public final getAutoSendLaunchEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->autoSendLaunchEvent:Z

    return v0
.end method

.method public final getCustomAndroidIDCallback()Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->customAndroidIDCallback:Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;

    return-object v0
.end method

.method public final getCustomOaidCallback()Lcom/bytedance/ads/convert/depend/CustomOaidCallback;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->customOaidCallback:Lcom/bytedance/ads/convert/depend/CustomOaidCallback;

    return-object v0
.end method

.method public final getEnableIPFetch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->enableIPFetch:Z

    return v0
.end method

.method public final getEnableLog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->enableLog:Z

    return v0
.end method

.method public final getEnableOAID()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->enableOAID:Z

    return v0
.end method

.method public final getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->lifecycleCallback:Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    return-object v0
.end method

.method public final getPlaySessionEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->playSessionEnable:Z

    return v0
.end method

.method public final setAutoSendLaunchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->autoSendLaunchEvent:Z

    return-void
.end method

.method public final setCustomAndroidIDCallback(Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->customAndroidIDCallback:Lcom/bytedance/ads/convert/depend/CustomAndroidIDCallback;

    return-void
.end method

.method public final setCustomOaidCallback(Lcom/bytedance/ads/convert/depend/CustomOaidCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->customOaidCallback:Lcom/bytedance/ads/convert/depend/CustomOaidCallback;

    return-void
.end method

.method public final setEnableIPFetch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->enableIPFetch:Z

    return-void
.end method

.method public final setEnableLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->enableLog:Z

    return-void
.end method

.method public final setEnableOAID(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->enableOAID:Z

    return-void
.end method

.method public final setLifecycleCallback(Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->lifecycleCallback:Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    return-void
.end method

.method public final setPlaySessionEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/ads/convert/config/BDConvertConfig;->playSessionEnable:Z

    return-void
.end method
