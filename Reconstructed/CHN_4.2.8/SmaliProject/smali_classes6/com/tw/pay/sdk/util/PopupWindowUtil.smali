.class public Lcom/tw/pay/sdk/util/PopupWindowUtil;
.super Ljava/lang/Object;
.source "PopupWindowUtil.java"


# static fields
.field private static popupWindowUtil:Lcom/tw/pay/sdk/util/PopupWindowUtil;


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isHide:Z

.field private isOpen:Z

.field private isShown:Ljava/lang/Boolean;

.field private mStartX:F

.field private mStartY:F

.field private mTouchX:F

.field private mTouchY:F

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private msgNum:I

.field private popupImg:Landroid/widget/ImageView;

.field private userCenterTxt1:Landroid/widget/TextView;

.field private userCenterTxt2:Landroid/widget/TextView;

.field private userCenterTxt3:Landroid/widget/TextView;

.field private userCenterTxt4:Landroid/widget/TextView;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mView:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 43
    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isShown:Ljava/lang/Boolean;

    .line 52
    iput-boolean v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isOpen:Z

    .line 55
    iput-boolean v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isHide:Z

    .line 56
    iput v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->msgNum:I

    .line 57
    new-instance v0, Lcom/tw/pay/sdk/util/PopupWindowUtil$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil$1;-><init>(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->handler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;-><init>(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isHide:Z

    return p0
.end method

.method static synthetic access$002(Lcom/tw/pay/sdk/util/PopupWindowUtil;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isHide:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isOpen:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->x:F

    return p0
.end method

.method static synthetic access$1002(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->x:F

    return p1
.end method

.method static synthetic access$1100(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->y:F

    return p0
.end method

.method static synthetic access$1102(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->y:F

    return p1
.end method

.method static synthetic access$1200(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupView()V

    return-void
.end method

.method static synthetic access$1302(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mTouchX:F

    return p1
.end method

.method static synthetic access$1402(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mTouchY:F

    return p1
.end method

.method static synthetic access$1500(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mStartX:F

    return p0
.end method

.method static synthetic access$1502(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mStartX:F

    return p1
.end method

.method static synthetic access$1600(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mStartY:F

    return p0
.end method

.method static synthetic access$1602(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mStartY:F

    return p1
.end method

.method static synthetic access$1700(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$1800(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getActionUpX()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->clickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/util/PopupWindowUtil;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->msgNum:I

    return p0
.end method

.method static synthetic access$2000(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$208(Lcom/tw/pay/sdk/util/PopupWindowUtil;)I
    .locals 2

    .line 38
    iget v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->msgNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->msgNum:I

    return v0
.end method

.method static synthetic access$2100(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->hidePopupViewAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt4:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt3:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->openPopupView()V

    return-void
.end method

.method private getActionUpX()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 219
    iget v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->x:F

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    int-to-float v0, v0

    .line 220
    iput v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->x:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->x:F

    :goto_0
    return-void
.end method

.method public static getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;
    .locals 1

    .line 67
    sget-object v0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupWindowUtil:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupWindowUtil:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    .line 70
    :cond_0
    sget-object p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupWindowUtil:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    return-object p0
.end method

.method private getUserCenterUrl()Ljava/lang/String;
    .locals 4

    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->web_url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    .line 288
    invoke-static {v2}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v2

    iget-object v2, v2, Lcom/tw/pay/sdk/bean/UserBean;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sdk-api/user/openUserCenter"

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "?appId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    .line 290
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "&token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    .line 291
    invoke-static {v2}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v2

    iget-object v2, v2, Lcom/tw/pay/sdk/bean/UserBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    .line 292
    invoke-static {v2}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v2

    iget-object v2, v2, Lcom/tw/pay/sdk/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hidePopupViewAnim()V
    .locals 4

    .line 229
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 230
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xbb8

    .line 231
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 233
    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    new-instance v0, Lcom/tw/pay/sdk/util/PopupWindowUtil$4;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil$4;-><init>(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private openPopupView()V
    .locals 3

    .line 265
    iget-boolean v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt1:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iput-boolean v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isOpen:Z

    goto :goto_1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 273
    iget v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->x:F

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isOpen:Z

    :goto_1
    return-void
.end method

.method private setUpView()Landroid/view/View;
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    const-string v2, "popup_view"

    .line 146
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    const-string v2, "userCenterTxt1"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt1:Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    const-string v2, "userCenterTxt3"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt3:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    const-string v2, "userCenterTxt2"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt2:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    const-string v2, "userCenterTxt4"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->userCenterTxt4:Landroid/widget/TextView;

    .line 158
    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    const-string v2, "popupImg"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupImg:Landroid/widget/ImageView;

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSetBean.getChannelId() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AppSetBean.getChannelAppId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1000010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;

    invoke-direct {v2, p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;-><init>(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method private showPopupView()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->popupImg:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updateViewPosition()V
    .locals 3

    .line 206
    iget-boolean v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isOpen:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->x:F

    iget v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mTouchX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 209
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->y:F

    iget v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mTouchY:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    .line 210
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mView:Landroid/view/View;

    .line 211
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 212
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hidePopupWindow()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isShown:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public showPopupWindow()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->context:Landroid/content/Context;

    const-string v1, "window"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 90
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x528

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 93
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x13

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->setUpView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mView:Landroid/view/View;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->isShown:Ljava/lang/Boolean;

    .line 102
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method
