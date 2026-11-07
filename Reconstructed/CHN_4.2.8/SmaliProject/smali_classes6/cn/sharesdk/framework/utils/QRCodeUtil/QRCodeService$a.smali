.class Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;
.super Landroid/os/Handler;
.source "QRCodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/utils/QRCodeUtil/j;)V
    .locals 1

    .line 242
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 247
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 248
    iget-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    .line 249
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 251
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "bitmap gernerate error!!!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->a()Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 255
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->a()Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;->onSuccess(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
