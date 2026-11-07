.class public Lcom/tencent/mm/opensdk/modelbiz/WXBizPublishWithImage$ImgInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/modelbiz/WXBizPublishWithImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImgInfo"
.end annotation


# instance fields
.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelbiz/WXBizPublishWithImage$ImgInfo;->path:Ljava/lang/String;

    return-void
.end method
