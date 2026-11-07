.class public Lcn/sharesdk/douyin/a/b$a;
.super Lcn/sharesdk/douyin/a/c;
.source "Authorization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/douyin/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcn/sharesdk/douyin/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/sharesdk/douyin/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcn/sharesdk/douyin/a/c;->a(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "_bytedance_params_state"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "_bytedance_params_client_key"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/b$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "_bytedance_params_redirect_uri"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/b$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "_bytedance_params_scope"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/b$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "_bytedance_params_optional_scope0"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/b$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "_bytedance_params_optional_scope1"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/b$a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/douyin/a/b$a;->g:Lcn/sharesdk/douyin/a/k;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/douyin/a/b$a;->g:Lcn/sharesdk/douyin/a/k;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_aweme_params_verify_scope"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
