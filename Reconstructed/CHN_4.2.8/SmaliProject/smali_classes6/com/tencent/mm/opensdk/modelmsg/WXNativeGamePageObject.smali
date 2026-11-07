.class public Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;


# static fields
.field private static final LENGTH_LIMIT:I = 0x19000

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXNativeGamePageObject"


# instance fields
.field public isVideo:Z

.field public shareData:Ljava/lang/String;

.field public videoDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->isVideo:Z

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->shareData:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MicroMsg.SDK.WXNativeGamePageObject"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->shareData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v3, 0x19000

    if-le v0, v3, :cond_1

    const-string v0, "checkArgs fail, shareData is too large"

    :goto_0
    invoke-static {v2, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    const-string v0, "checkArgs fail, shareData is empty!"

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->isVideo:Z

    const-string v1, "_wxnativegamepageobject_isvideo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->videoDuration:I

    const-string v1, "_wxnativegamepageobject_videoduraion"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->shareData:Ljava/lang/String;

    const-string v1, "_wxnativegamepageobject_sharedata"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public type()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxnativegamepageobject_isvideo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->isVideo:Z

    const-string v0, "_wxnativegamepageobject_videoduraion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->videoDuration:I

    const-string v0, "_wxnativegamepageobject_sharedata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXNativeGamePageObject;->shareData:Ljava/lang/String;

    return-void
.end method
