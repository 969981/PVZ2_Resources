.class public Lcn/sharesdk/douyin/a/l;
.super Lcn/sharesdk/douyin/a/e;
.source "VideoObject.java"


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

    .line 7
    invoke-direct {p0}, Lcn/sharesdk/douyin/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    const-string v0, "AWEME_EXTRA_VIDEO_MESSAGE_PATH"

    iget-object v1, p0, Lcn/sharesdk/douyin/a/l;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
