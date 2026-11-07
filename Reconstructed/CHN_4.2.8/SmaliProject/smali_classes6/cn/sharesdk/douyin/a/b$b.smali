.class public Lcn/sharesdk/douyin/a/b$b;
.super Lcn/sharesdk/douyin/a/d;
.source "Authorization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/douyin/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/sharesdk/douyin/a/d;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcn/sharesdk/douyin/a/b$b;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcn/sharesdk/douyin/a/d;->a(Landroid/os/Bundle;)V

    .line 27
    const-string v0, "_bytedance_params_authcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/a/b$b;->a:Ljava/lang/String;

    .line 28
    const-string v0, "_bytedance_params_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/a/b$b;->b:Ljava/lang/String;

    .line 29
    const-string v0, "_bytedance_params_granted_permission"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/douyin/a/b$b;->c:Ljava/lang/String;

    return-void
.end method
