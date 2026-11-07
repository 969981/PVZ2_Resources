.class public Lcn/sharesdk/douyin/a/f;
.super Lcn/sharesdk/douyin/a/e;
.source "ImageObject.java"


# instance fields
.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/sharesdk/douyin/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    const-string v0, "AWEME_EXTRA_IMAGE_MESSAGE_PATH"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/f;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
