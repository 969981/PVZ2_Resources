.class public abstract Lcn/sharesdk/douyin/a/d;
.super Ljava/lang/Object;
.source "BaseResp.java"


# instance fields
.field public d:I

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    const-string v0, "_bytedance_params_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/douyin/a/d;->d:I

    .line 34
    const-string v0, "_bytedance_params_error_msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/a/d;->e:Ljava/lang/String;

    .line 35
    const-string v0, "_bytedance_params_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/douyin/a/d;->f:Landroid/os/Bundle;

    return-void
.end method

.method public b()Z
    .locals 2

    .line 12
    iget v0, p0, Lcn/sharesdk/douyin/a/d;->d:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 16
    iget v0, p0, Lcn/sharesdk/douyin/a/d;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
