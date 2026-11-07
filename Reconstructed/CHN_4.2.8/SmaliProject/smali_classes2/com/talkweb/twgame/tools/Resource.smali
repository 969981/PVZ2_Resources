.class public Lcom/talkweb/twgame/tools/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    .line 38
    invoke-static {p0, p1, v1, v0}, Lcom/talkweb/twgame/tools/Resource;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    .line 27
    invoke-static {p0, p1, v1, v0}, Lcom/talkweb/twgame/tools/Resource;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawable_ic_launcher(Landroid/content/Context;)I
    .locals 1

    const-string v0, "ic_launcher"

    .line 100
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawable_tw_ad_default_logo(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_default_logo"

    .line 105
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    .line 16
    invoke-static {p0, p1, v1, v0}, Lcom/talkweb/twgame/tools/Resource;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId_screen_down(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_screen_down_btn"

    .line 70
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId_screen_next(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_screen_next_btn"

    .line 65
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId_tw_ad_quitgame_cancel_btn(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_quitgame_cancel_btn"

    .line 95
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId_tw_ad_quitgame_confirm_btn(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_quitgame_confirm_btn"

    .line 90
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId_tw_ad_screen_close_btn(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_screen_close_btn"

    .line 85
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId_tw_ad_scrren_image(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_scrren_image"

    .line 80
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId_tw_ad_scrren_viewpager(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_scrren_viewpager"

    .line 110
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getLayout(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    .line 32
    invoke-static {p0, p1, v1, v0}, Lcom/talkweb/twgame/tools/Resource;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayout_quitgame_dialog(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_quitgame_dialog_layout"

    .line 55
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayout_screen_dialog(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_screen_dialog_layout"

    .line 50
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayout_tw_ad_screen_item_layout(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_screen_item_layout"

    .line 60
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    .line 21
    invoke-static {p0, p1, v1, v0}, Lcom/talkweb/twgame/tools/Resource;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getStyle(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "style"

    .line 44
    invoke-static {p0, p1, v1, v0}, Lcom/talkweb/twgame/tools/Resource;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyle_tw_ad_BaseDialog(Landroid/content/Context;)I
    .locals 1

    const-string v0, "tw_ad_BaseDialog"

    .line 75
    invoke-static {p0, v0}, Lcom/talkweb/twgame/tools/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
