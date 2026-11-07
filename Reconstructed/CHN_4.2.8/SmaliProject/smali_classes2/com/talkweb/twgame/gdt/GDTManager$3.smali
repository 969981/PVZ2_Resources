.class final Lcom/talkweb/twgame/gdt/GDTManager$3;
.super Ljava/lang/Object;
.source "GDTManager.java"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/gdt/GDTManager;->nativeFlash(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    const-string p1, "onADClicked"

    .line 308
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    const-string p1, "onADClosed"

    .line 313
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    const-string p1, "onADExposure"

    .line 303
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    const-string p1, "onADLeftApplication"

    .line 318
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onADLoaded"

    .line 273
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$400()Lcom/qq/e/ads/nativ/NativeExpressADView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$400()Lcom/qq/e/ads/nativ/NativeExpressADView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 279
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-static {p1}, Lcom/talkweb/twgame/gdt/GDTManager;->access$402(Lcom/qq/e/ads/nativ/NativeExpressADView;)Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 281
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$400()Lcom/qq/e/ads/nativ/NativeExpressADView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    .line 288
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$400()Lcom/qq/e/ads/nativ/NativeExpressADView;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/gdt/GDTManager;->onCreateFlashDialog(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoAD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "onADError, error code: %d, error msg: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    const-string p1, "onRenderFail"

    .line 293
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    const-string p1, "onRenderSuccess"

    .line 298
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
