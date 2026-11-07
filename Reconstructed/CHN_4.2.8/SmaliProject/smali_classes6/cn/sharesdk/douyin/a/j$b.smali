.class public Lcn/sharesdk/douyin/a/j$b;
.super Lcn/sharesdk/douyin/a/d;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/douyin/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/sharesdk/douyin/a/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/sharesdk/douyin/a/d;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcn/sharesdk/douyin/a/j$b;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    const-string v0, "_aweme_open_sdk_params_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/douyin/a/d;->d:I

    .line 36
    const-string v0, "_aweme_open_sdk_params_error_msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/a/d;->e:Ljava/lang/String;

    .line 37
    const-string v0, "_bytedance_params_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/a/d;->f:Landroid/os/Bundle;

    .line 38
    const-string v0, "_aweme_open_sdk_params_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/a/j$b;->a:Ljava/lang/String;

    .line 39
    const-string v0, "_aweme_open_sdk_params_sub_error_code"

    const/16 v1, -0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/sharesdk/douyin/a/j$b;->b:I

    return-void
.end method
