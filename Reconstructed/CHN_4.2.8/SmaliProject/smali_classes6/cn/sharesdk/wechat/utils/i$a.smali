.class public final Lcn/sharesdk/wechat/utils/i$a;
.super Lcn/sharesdk/wechat/utils/m;
.source "WXLaunchMiniProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/wechat/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/m;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcn/sharesdk/wechat/utils/i$a;->c:I

    .line 52
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/m;->b(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "_launch_wxminiprogram_username"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "_launch_wxminiprogram_path"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/i$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "_launch_wxminiprogram_type"

    iget v1, p0, Lcn/sharesdk/wechat/utils/i$a;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v0, "_launch_wxminiprogram_extData"

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/i$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 62
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2800

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget v0, p0, Lcn/sharesdk/wechat/utils/i$a;->c:I

    if-ltz v0, :cond_2

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_2
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "miniprogram type should between MINIPTOGRAM_TYPE_RELEASE and MINIPROGRAM_TYPE_PREVIEW"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkArgs fail"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 63
    :cond_3
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "checkArgs fail, userName is invalid"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method
