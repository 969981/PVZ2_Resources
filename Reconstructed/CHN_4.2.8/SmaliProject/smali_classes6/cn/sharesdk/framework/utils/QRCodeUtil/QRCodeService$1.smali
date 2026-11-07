.class Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$1;
.super Ljava/lang/Object;
.source "QRCodeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->generateAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$1;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 227
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$1;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;

    invoke-static {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;)Lcn/sharesdk/framework/utils/QRCodeUtil/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b()Landroid/graphics/Bitmap;

    .line 228
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$1;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;

    invoke-static {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->b(Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;)Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 230
    invoke-static {}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeService;->a()Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
