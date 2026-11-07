.class public Lcn/sharesdk/douyin/a/j$a;
.super Lcn/sharesdk/douyin/a/c;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/douyin/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcn/sharesdk/douyin/a/a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcn/sharesdk/douyin/a/g;

.field public f:Lcn/sharesdk/douyin/a/h;

.field public g:Ljava/lang/String;

.field public j:Z

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcn/sharesdk/douyin/a/c;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcn/sharesdk/douyin/a/j$a;->k:I

    .line 62
    iput-boolean v0, p0, Lcn/sharesdk/douyin/a/j$a;->j:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Lcn/sharesdk/douyin/a/c;->a(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "_aweme_open_sdk_params_caller_local_entry"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/j$a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "_aweme_open_sdk_params_client_key"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/j$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "_aweme_open_sdk_params_caller_package"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/j$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcn/sharesdk/douyin/a/j$a;->j:Z

    const/4 v1, 0x0

    const-string v2, "_aweme_open_sdk_params_target_landpage_scene"

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 109
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    :goto_0
    const-string v0, "_aweme_open_sdk_params_state"

    iget-object v2, p0, Lcn/sharesdk/douyin/a/j$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcn/sharesdk/douyin/a/j$a;->e:Lcn/sharesdk/douyin/a/g;

    if-eqz v0, :cond_1

    .line 116
    invoke-static {v0}, Lcn/sharesdk/douyin/a/g$a;->a(Lcn/sharesdk/douyin/a/g;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/douyin/a/j$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcn/sharesdk/douyin/a/j$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_aweme_open_sdk_params_target_scene"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "_aweme_open_sdk_params_hashtag_list"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/j$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/douyin/a/j$a;->f:Lcn/sharesdk/douyin/a/h;

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0, p1}, Lcn/sharesdk/douyin/a/h;->a(Landroid/os/Bundle;)V

    .line 127
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/douyin/a/j$a;->a:Lcn/sharesdk/douyin/a/a;

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0, p1}, Lcn/sharesdk/douyin/a/a;->a(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method
