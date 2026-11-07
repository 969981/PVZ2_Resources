.class public abstract Lcn/sharesdk/douyin/a/c;
.super Ljava/lang/Object;
.source "BaseReq.java"


# instance fields
.field public h:Landroid/os/Bundle;

.field public i:Ljava/lang/String;


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
    .locals 2

    .line 30
    const-string v0, "_bytedance_params_type"

    invoke-virtual {p0}, Lcn/sharesdk/douyin/a/c;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string v0, "_bytedance_params_extra"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/c;->h:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    const-string v0, "_bytedance_params_from_entry"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "_aweme_params_caller_open_sdk_common_name"

    const-string v1, "opensdk-common"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "_aweme_params_caller_open_sdk_common_version"

    const-string v1, "0.1.8.0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
