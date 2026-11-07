.class public Lcn/sharesdk/douyin/a/g$a;
.super Ljava/lang/Object;
.source "MediaContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/douyin/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcn/sharesdk/douyin/a/g;)Landroid/os/Bundle;
    .locals 2

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    iget-object p0, p0, Lcn/sharesdk/douyin/a/g;->a:Lcn/sharesdk/douyin/a/e;

    if-eqz p0, :cond_2

    .line 38
    invoke-virtual {p0, v0}, Lcn/sharesdk/douyin/a/e;->a(Landroid/os/Bundle;)V

    .line 39
    const-string p0, "AWEME_EXTRA_IMAGE_MESSAGE_PATH"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 40
    const-string v1, "AWEME_EXTRA_VIDEO_MESSAGE_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "com.ss.android.ugc.aweme.opensdk.share.base.TikTokVideoObject"

    goto :goto_0

    .line 44
    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_1

    .line 45
    const-string v1, "com.ss.android.ugc.aweme.opensdk.share.base.TikTokImageObject"

    .line 47
    :cond_1
    const-string p0, "_dyobject_identifier_"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
