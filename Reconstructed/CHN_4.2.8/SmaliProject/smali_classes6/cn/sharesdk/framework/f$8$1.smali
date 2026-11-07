.class Lcn/sharesdk/framework/f$8$1;
.super Ljava/lang/Object;
.source "PlatformImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/f$8;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f$8;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .locals 3

    .line 610
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object v0, v0, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    iget-object v1, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object v1, v1, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object v0, v0, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object v1, v1, Lcn/sharesdk/framework/f$8;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->doAuthorize([Ljava/lang/String;)V

    .line 616
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "The user is using the privacy version with a pop-up box authorize 002"

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 628
    iget-object p1, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object p1, p1, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    invoke-static {p1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 629
    iget-object p1, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object p1, p1, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    invoke-static {p1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object p1

    iget-object v0, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object v0, v0, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/dialog/PolicyThrowable;

    invoke-direct {v1}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 621
    iget-object v0, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object v0, v0, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object v0, v0, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/f$8$1;->a:Lcn/sharesdk/framework/f$8;

    iget-object v1, v1, Lcn/sharesdk/framework/f$8;->b:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    new-instance v2, Lcom/mob/commons/dialog/PolicyThrowable;

    invoke-direct {v2}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
